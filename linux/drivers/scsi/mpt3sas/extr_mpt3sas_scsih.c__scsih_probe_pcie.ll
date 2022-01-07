; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_probe_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_probe_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i32 }
%struct._pcie_device = type { i64, i64, i32 }

@MPI26_PCIEDEV0_ASTATUS_DEVICE_BLOCKED = common dso_local global i64 0, align 8
@PCIE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*)* @_scsih_probe_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_probe_pcie(%struct.MPT3SAS_ADAPTER* %0) #0 {
  %2 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %3 = alloca %struct._pcie_device*, align 8
  %4 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %2, align 8
  br label %5

5:                                                ; preds = %64, %56, %40, %23, %14, %1
  %6 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %7 = call %struct._pcie_device* @get_next_pcie_device(%struct.MPT3SAS_ADAPTER* %6)
  store %struct._pcie_device* %7, %struct._pcie_device** %3, align 8
  %8 = icmp ne %struct._pcie_device* %7, null
  br i1 %8, label %9, label %70

9:                                                ; preds = %5
  %10 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %11 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %16 = call i32 @pcie_device_put(%struct._pcie_device* %15)
  br label %5

17:                                               ; preds = %9
  %18 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %19 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPI26_PCIEDEV0_ASTATUS_DEVICE_BLOCKED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %25 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %26 = call i32 @pcie_device_make_active(%struct.MPT3SAS_ADAPTER* %24, %struct._pcie_device* %25)
  %27 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %28 = call i32 @pcie_device_put(%struct._pcie_device* %27)
  br label %5

29:                                               ; preds = %17
  %30 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %31 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCIE_CHANNEL, align 4
  %34 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %35 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @scsi_add_device(i32 %32, i32 %33, i32 %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %42 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %43 = call i32 @_scsih_pcie_device_remove(%struct.MPT3SAS_ADAPTER* %41, %struct._pcie_device* %42)
  %44 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %45 = call i32 @pcie_device_put(%struct._pcie_device* %44)
  br label %5

46:                                               ; preds = %29
  %47 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %48 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %46
  %52 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %53 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %58 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %59 = call i32 @_scsih_pcie_device_remove(%struct.MPT3SAS_ADAPTER* %57, %struct._pcie_device* %58)
  %60 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %61 = call i32 @pcie_device_put(%struct._pcie_device* %60)
  br label %5

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %2, align 8
  %66 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %67 = call i32 @pcie_device_make_active(%struct.MPT3SAS_ADAPTER* %65, %struct._pcie_device* %66)
  %68 = load %struct._pcie_device*, %struct._pcie_device** %3, align 8
  %69 = call i32 @pcie_device_put(%struct._pcie_device* %68)
  br label %5

70:                                               ; preds = %5
  ret void
}

declare dso_local %struct._pcie_device* @get_next_pcie_device(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

declare dso_local i32 @pcie_device_make_active(%struct.MPT3SAS_ADAPTER*, %struct._pcie_device*) #1

declare dso_local i32 @scsi_add_device(i32, i32, i32, i32) #1

declare dso_local i32 @_scsih_pcie_device_remove(%struct.MPT3SAS_ADAPTER*, %struct._pcie_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
