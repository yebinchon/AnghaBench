; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_direct_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_direct_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i64, i32 }
%struct.perm_bits = type { i32 }

@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCI_STD_HEADER_SIZEOF = common dso_local global i32 0, align 4
@PCI_CAP_LIST_ID = common dso_local global i32 0, align 4
@PCI_CAP_FLAGS = common dso_local global i32 0, align 4
@PCI_CAP_LIST_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i32*)* @vfio_direct_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_direct_config_read(%struct.vfio_pci_device* %0, i32 %1, i32 %2, %struct.perm_bits* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.perm_bits*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.perm_bits* %3, %struct.perm_bits** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %16 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @vfio_user_config_read(i32 %17, i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %7, align 4
  br label %85

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  %35 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %36 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @memcpy(i32* %34, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %30
  br label %83

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @PCI_STD_HEADER_SIZEOF, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @PCI_CAP_LIST_ID, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %58 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load i32, i32* @PCI_CAP_FLAGS, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @min(i32 %63, i32 %64)
  %66 = call i32 @memcpy(i32* %56, i64 %62, i32 %65)
  br label %81

67:                                               ; preds = %52, %48
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @PCI_CAP_LIST_NEXT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32*, i32** %13, align 8
  %73 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %74 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @memcpy(i32* %72, i64 %78, i32 1)
  br label %80

80:                                               ; preds = %71, %67
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %43
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %24
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @vfio_user_config_read(i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
