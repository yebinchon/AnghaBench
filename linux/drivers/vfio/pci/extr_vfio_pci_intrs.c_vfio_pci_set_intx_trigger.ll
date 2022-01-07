; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_intx_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_pci_set_intx_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }

@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, i32, i32, i8*)* @vfio_pci_set_intx_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_intx_trigger(%struct.vfio_pci_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_pci_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %18 = call i64 @is_intx(%struct.vfio_pci_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %30 = call i32 @vfio_intx_disable(%struct.vfio_pci_device* %29)
  store i32 0, i32* %7, align 4
  br label %114

31:                                               ; preds = %23, %20, %6
  %32 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %33 = call i64 @is_intx(%struct.vfio_pci_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %37 = call i64 @is_irq_none(%struct.vfio_pci_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39, %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %114

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load i8*, i8** %13, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %58 = call i64 @is_intx(%struct.vfio_pci_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @vfio_intx_set_signal(%struct.vfio_pci_device* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %114

64:                                               ; preds = %53
  %65 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %66 = call i32 @vfio_intx_enable(%struct.vfio_pci_device* %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %7, align 4
  br label %114

71:                                               ; preds = %64
  %72 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @vfio_intx_set_signal(%struct.vfio_pci_device* %72, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %79 = call i32 @vfio_intx_disable(%struct.vfio_pci_device* %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %7, align 4
  br label %114

82:                                               ; preds = %48
  %83 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %84 = call i64 @is_intx(%struct.vfio_pci_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %114

89:                                               ; preds = %82
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %96 = call i32 @vfio_send_intx_eventfd(%struct.vfio_pci_device* %95, i32* null)
  br label %113

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i8*, i8** %13, align 8
  %104 = bitcast i8* %103 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %16, align 8
  %106 = load i64, i64* %16, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %8, align 8
  %110 = call i32 @vfio_send_intx_eventfd(%struct.vfio_pci_device* %109, i32* null)
  br label %111

111:                                              ; preds = %108, %102
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112, %94
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %86, %80, %69, %60, %45, %28
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i64 @is_intx(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_intx_disable(%struct.vfio_pci_device*) #1

declare dso_local i64 @is_irq_none(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_intx_set_signal(%struct.vfio_pci_device*, i32) #1

declare dso_local i32 @vfio_intx_enable(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_send_intx_eventfd(%struct.vfio_pci_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
