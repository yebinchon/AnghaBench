; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_platform_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_platform_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32 (%struct.vfio_platform_device*, i32)*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_EVENTFD = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_MASKABLE = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_AUTOMASKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_platform_irq_init(%struct.vfio_platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %8, i32 0, i32 0
  %10 = load i32 (%struct.vfio_platform_device*, i32)*, i32 (%struct.vfio_platform_device*, i32)** %9, align 8
  %11 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 %10(%struct.vfio_platform_device* %11, i32 %12)
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_3__* @kcalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %22, i32 0, i32 2
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %118

31:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %104, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %32
  %37 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %37, i32 0, i32 0
  %39 = load i32 (%struct.vfio_platform_device*, i32)*, i32 (%struct.vfio_platform_device*, i32)** %38, align 8
  %40 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %39(%struct.vfio_platform_device* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %111

46:                                               ; preds = %36
  %47 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load i32, i32* @VFIO_IRQ_INFO_EVENTFD, align 4
  %56 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @irq_get_trigger_type(i32 %63)
  %65 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %46
  %69 = load i32, i32* @VFIO_IRQ_INFO_MASKABLE, align 4
  %70 = load i32, i32* @VFIO_IRQ_INFO_AUTOMASKED, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %71
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %68, %46
  %82 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %89, i32* %96, align 4
  %97 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %81
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %32

107:                                              ; preds = %32
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  store i32 0, i32* %2, align 4
  br label %118

111:                                              ; preds = %45
  %112 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = call i32 @kfree(%struct.TYPE_3__* %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %111, %107, %28
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
