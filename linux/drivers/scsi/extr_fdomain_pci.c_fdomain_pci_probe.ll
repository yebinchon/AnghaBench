; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain_pci.c_fdomain_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain_pci.c_fdomain_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"fdomain_pci\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @fdomain_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_request_regions(%struct.pci_dev* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %45

19:                                               ; preds = %13
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i64 @pci_resource_len(%struct.pci_dev* %22, i32 0)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_resource_start(%struct.pci_dev* %27, i32 0)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call %struct.Scsi_Host* @fdomain_create(i32 %28, i32 %31, i32 7, i32* %33)
  store %struct.Scsi_Host* %34, %struct.Scsi_Host** %7, align 8
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %36 = icmp ne %struct.Scsi_Host* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %41 = call i32 @pci_set_drvdata(%struct.pci_dev* %39, %struct.Scsi_Host* %40)
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %37, %25
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_release_regions(%struct.pci_dev* %43)
  br label %45

45:                                               ; preds = %42, %18
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call i32 @pci_disable_device(%struct.pci_dev* %46)
  br label %48

48:                                               ; preds = %45, %12
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %38
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local %struct.Scsi_Host* @fdomain_create(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
