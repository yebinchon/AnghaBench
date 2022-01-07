; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_add_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32*, i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"snic: scsi_add_host failed. %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"scsi_wq_%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to Create ScsiHost wq.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.pci_dev*)* @snic_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_add_host(%struct.Scsi_Host* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i32 @scsi_add_host(%struct.Scsi_Host* %7, i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.Scsi_Host*, i8*, ...) @SNIC_HOST_ERR(%struct.Scsi_Host* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @SNIC_BUG_ON(i32 %23)
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snprintf(i32 %27, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @create_singlethread_workqueue(i32 %34)
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %18
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %44 = call i32 (%struct.Scsi_Host*, i8*, ...) @SNIC_HOST_ERR(%struct.Scsi_Host* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %42, %18
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @SNIC_HOST_ERR(%struct.Scsi_Host*, i8*, ...) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32* @create_singlethread_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
