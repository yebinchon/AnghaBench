; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_intx_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_intx_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@vfio_pci_intx_unmask_handler = common dso_local global i32 0, align 4
@vfio_send_intx_eventfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_intx_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_intx_unmask(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %17 = call i32 @is_intx(%struct.vfio_pci_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19, %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %84

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %35 = call i32 @vfio_pci_intx_unmask(%struct.vfio_pci_device* %34)
  br label %83

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** %13, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %49 = call i32 @vfio_pci_intx_unmask(%struct.vfio_pci_device* %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %82

51:                                               ; preds = %36
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %64 = bitcast %struct.vfio_pci_device* %63 to i8*
  %65 = load i32, i32* @vfio_pci_intx_unmask_handler, align 4
  %66 = load i32, i32* @vfio_send_intx_eventfd, align 4
  %67 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %68 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @vfio_virqfd_enable(i8* %64, i32 %65, i32 %66, i32* null, i32* %71, i64 %72)
  store i32 %73, i32* %7, align 4
  br label %84

74:                                               ; preds = %56
  %75 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %76 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @vfio_virqfd_disable(i32* %79)
  br label %81

81:                                               ; preds = %74, %51
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %33
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %62, %25
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @is_intx(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_pci_intx_unmask(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_virqfd_enable(i8*, i32, i32, i32*, i32*, i64) #1

declare dso_local i32 @vfio_virqfd_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
