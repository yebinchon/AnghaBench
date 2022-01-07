; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_find_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { i32 }
%struct.irq_affinity = type { i32 }
%struct.virtio_mmio_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cannot get IRQ resource\0A\00", align 1
@vm_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32*, %struct.irq_affinity*)* @vm_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4, i32* %5, %struct.irq_affinity* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtqueue**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.irq_affinity*, align 8
  %16 = alloca %struct.virtio_mmio_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.irq_affinity* %6, %struct.irq_affinity** %15, align 8
  %21 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %22 = call %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device* %21)
  store %struct.virtio_mmio_device* %22, %struct.virtio_mmio_device** %16, align 8
  %23 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %16, align 8
  %24 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @platform_get_irq(i32 %25, i32 0)
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %31 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %8, align 4
  br label %115

34:                                               ; preds = %7
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @vm_interrupt, align 4
  %37 = load i32, i32* @IRQF_SHARED, align 4
  %38 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %39 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %38, i32 0, i32 0
  %40 = call i32 @dev_name(i32* %39)
  %41 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %16, align 8
  %42 = call i32 @request_irq(i32 %35, i32 %36, i32 %37, i32 %40, %struct.virtio_mmio_device* %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %19, align 4
  store i32 %46, i32* %8, align 4
  br label %115

47:                                               ; preds = %34
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %111, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %114

52:                                               ; preds = %48
  %53 = load i8**, i8*** %13, align 8
  %54 = load i32, i32* %18, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %60, i64 %62
  store %struct.virtqueue* null, %struct.virtqueue** %63, align 8
  br label %111

64:                                               ; preds = %52
  %65 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  %68 = load i32**, i32*** %12, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i8**, i8*** %13, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %64
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  br label %87

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %80
  %88 = phi i32 [ %85, %80 ], [ 0, %86 ]
  %89 = call %struct.virtqueue* @vm_setup_vq(%struct.virtio_device* %65, i32 %66, i32* %72, i8* %77, i32 %88)
  %90 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %90, i64 %92
  store %struct.virtqueue* %89, %struct.virtqueue** %93, align 8
  %94 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %94, i64 %96
  %98 = load %struct.virtqueue*, %struct.virtqueue** %97, align 8
  %99 = call i64 @IS_ERR(%struct.virtqueue* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %87
  %102 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %103 = call i32 @vm_del_vqs(%struct.virtio_device* %102)
  %104 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %104, i64 %106
  %108 = load %struct.virtqueue*, %struct.virtqueue** %107, align 8
  %109 = call i32 @PTR_ERR(%struct.virtqueue* %108)
  store i32 %109, i32* %8, align 4
  br label %115

110:                                              ; preds = %87
  br label %111

111:                                              ; preds = %110, %59
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %18, align 4
  br label %48

114:                                              ; preds = %48
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %114, %101, %45, %29
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device*) #1

declare dso_local i32 @platform_get_irq(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.virtio_mmio_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.virtqueue* @vm_setup_vq(%struct.virtio_device*, i32, i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.virtqueue*) #1

declare dso_local i32 @vm_del_vqs(%struct.virtio_device*) #1

declare dso_local i32 @PTR_ERR(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
