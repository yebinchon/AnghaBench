; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.myrb_hba = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"scsi_add_host failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @myrb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.myrb_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %10 = call %struct.myrb_hba* @myrb_detect(%struct.pci_dev* %8, %struct.pci_device_id* %9)
  store %struct.myrb_hba* %10, %struct.myrb_hba** %6, align 8
  %11 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %12 = icmp ne %struct.myrb_hba* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %18 = call i32 @myrb_get_hba_config(%struct.myrb_hba* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %23 = call i32 @myrb_cleanup(%struct.myrb_hba* %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %28 = call i32 @myrb_create_mempools(%struct.pci_dev* %26, %struct.myrb_hba* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %54

33:                                               ; preds = %25
  %34 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %35 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @scsi_add_host(i32 %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %48 = call i32 @myrb_destroy_mempools(%struct.myrb_hba* %47)
  br label %54

49:                                               ; preds = %33
  %50 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %51 = getelementptr inbounds %struct.myrb_hba, %struct.myrb_hba* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @scsi_scan_host(i32 %52)
  store i32 0, i32* %3, align 4
  br label %58

54:                                               ; preds = %42, %30
  %55 = load %struct.myrb_hba*, %struct.myrb_hba** %6, align 8
  %56 = call i32 @myrb_cleanup(%struct.myrb_hba* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %49, %21, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.myrb_hba* @myrb_detect(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @myrb_get_hba_config(%struct.myrb_hba*) #1

declare dso_local i32 @myrb_cleanup(%struct.myrb_hba*) #1

declare dso_local i32 @myrb_create_mempools(%struct.pci_dev*, %struct.myrb_hba*) #1

declare dso_local i32 @scsi_add_host(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @myrb_destroy_mempools(%struct.myrb_hba*) #1

declare dso_local i32 @scsi_scan_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
