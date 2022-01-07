; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_intx_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_intx_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_intx_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_intx_mask(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %16 = call i32 @is_intx(%struct.vfio_pci_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %18, %6
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %61

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %34 = call i32 @vfio_pci_intx_mask(%struct.vfio_pci_device* %33)
  br label %60

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i8*, i8** %13, align 8
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %48 = call i32 @vfio_pci_intx_mask(%struct.vfio_pci_device* %47)
  br label %49

49:                                               ; preds = %46, %40
  br label %59

50:                                               ; preds = %35
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOTTY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %61

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %32
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %55, %24
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @is_intx(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_pci_intx_mask(%struct.vfio_pci_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
