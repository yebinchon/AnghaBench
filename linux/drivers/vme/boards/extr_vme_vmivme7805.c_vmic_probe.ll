; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/boards/extr_vme_vmivme7805.c_vmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/boards/extr_vme_vmivme7805.c_vmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unable to enable device\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to reserve resources\0A\00", align 1
@vmic_base = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to remap CRG region\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VME_CONTROL = common dso_local global i64 0, align 8
@BM_VME_CONTROL_BERRST = common dso_local global i32 0, align 4
@BM_VME_CONTROL_MASTER_ENDIAN = common dso_local global i32 0, align 4
@BM_VME_CONTROL_SLAVE_ENDIAN = common dso_local global i32 0, align 4
@BM_VME_CONTROL_ABLE = common dso_local global i32 0, align 4
@BM_VME_CONTROL_BERRI = common dso_local global i32 0, align 4
@BM_VME_CONTROL_BPENA = common dso_local global i32 0, align 4
@BM_VME_CONTROL_VBENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @vmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmic_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_enable_device(%struct.pci_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @driver_name, align 4
  %19 = call i32 @pci_request_regions(%struct.pci_dev* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %82

26:                                               ; preds = %16
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_resource_start(%struct.pci_dev* %27, i32 0)
  %29 = call i64 @ioremap_nocache(i32 %28, i32 16)
  store i64 %29, i64* @vmic_base, align 8
  %30 = load i64, i64* @vmic_base, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %79

38:                                               ; preds = %26
  %39 = load i64, i64* @vmic_base, align 8
  %40 = load i64, i64* @VME_CONTROL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @iowrite32(i32 0, i64 %41)
  %43 = load i64, i64* @vmic_base, align 8
  %44 = load i64, i64* @VME_CONTROL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32(i64 %45)
  %47 = and i32 %46, 4095
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @BM_VME_CONTROL_BERRST, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* @vmic_base, align 8
  %53 = load i64, i64* @VME_CONTROL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @iowrite32(i32 %51, i64 %54)
  %56 = load i64, i64* @vmic_base, align 8
  %57 = load i64, i64* @VME_CONTROL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @ioread32(i64 %58)
  %60 = and i32 %59, 4095
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @BM_VME_CONTROL_MASTER_ENDIAN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BM_VME_CONTROL_SLAVE_ENDIAN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @BM_VME_CONTROL_ABLE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BM_VME_CONTROL_BERRI, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @BM_VME_CONTROL_BPENA, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BM_VME_CONTROL_VBENA, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* @vmic_base, align 8
  %76 = load i64, i64* @VME_CONTROL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @iowrite32(i32 %74, i64 %77)
  store i32 0, i32* %3, align 4
  br label %87

79:                                               ; preds = %32
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = call i32 @pci_release_regions(%struct.pci_dev* %80)
  br label %82

82:                                               ; preds = %79, %22
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = call i32 @pci_disable_device(%struct.pci_dev* %83)
  br label %85

85:                                               ; preds = %82, %12
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %38
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
