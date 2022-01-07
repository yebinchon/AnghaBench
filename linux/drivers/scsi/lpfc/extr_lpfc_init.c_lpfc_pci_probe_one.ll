; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.lpfc_sli_intf = type { i32 }

@LPFC_SLI_INTF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lpfc_sli_intf_valid = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_VALID = common dso_local global i64 0, align 8
@lpfc_sli_intf_slirev = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_REV_SLI4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lpfc_pci_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_pci_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_sli_intf, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @LPFC_SLI_INTF, align 4
  %10 = getelementptr inbounds %struct.lpfc_sli_intf, %struct.lpfc_sli_intf* %7, i32 0, i32 0
  %11 = call i64 @pci_read_config_dword(%struct.pci_dev* %8, i32 %9, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* @lpfc_sli_intf_valid, align 4
  %18 = call i64 @bf_get(i32 %17, %struct.lpfc_sli_intf* %7)
  %19 = load i64, i64* @LPFC_SLI_INTF_VALID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @lpfc_sli_intf_slirev, align 4
  %23 = call i64 @bf_get(i32 %22, %struct.lpfc_sli_intf* %7)
  %24 = load i64, i64* @LPFC_SLI_INTF_REV_SLI4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %29 = call i32 @lpfc_pci_probe_one_s4(%struct.pci_dev* %27, %struct.pci_device_id* %28)
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %21, %16
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %33 = call i32 @lpfc_pci_probe_one_s3(%struct.pci_dev* %31, %struct.pci_device_id* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_sli_intf*) #1

declare dso_local i32 @lpfc_pci_probe_one_s4(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @lpfc_pci_probe_one_s3(%struct.pci_dev*, %struct.pci_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
