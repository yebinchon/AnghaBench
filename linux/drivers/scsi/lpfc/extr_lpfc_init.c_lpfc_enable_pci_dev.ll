; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_enable_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_enable_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"1401 Failed to enable pci device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_enable_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_enable_pci_dev(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  br label %14

14:                                               ; preds = %10
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = call i64 @pci_enable_device_mem(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %42

19:                                               ; preds = %14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %22 = call i64 @pci_request_mem_regions(%struct.pci_dev* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_set_master(%struct.pci_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_try_set_mwi(%struct.pci_dev* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_save_state(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i64 @pci_is_pcie(%struct.pci_dev* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %25
  store i32 0, i32* %2, align 4
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_disable_device(%struct.pci_dev* %40)
  br label %42

42:                                               ; preds = %39, %18, %9
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i32, i32* @LOG_INIT, align 4
  %46 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_mem_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
