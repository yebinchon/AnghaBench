; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_platform_set_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_platform_set_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_INFO_MASKABLE = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@vfio_platform_mask_handler = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*, i32, i32, i32, i32, i8*)* @vfio_platform_set_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_set_irq_mask(%struct.vfio_platform_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %112

24:                                               ; preds = %18
  %25 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %26 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VFIO_IRQ_INFO_MASKABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %112

39:                                               ; preds = %24
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %52 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = bitcast %struct.TYPE_2__* %56 to i8*
  %58 = load i32, i32* @vfio_platform_mask_handler, align 4
  %59 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %60 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @vfio_virqfd_enable(i8* %57, i32 %58, i32* null, i32* null, i32* %65, i64 %66)
  store i32 %67, i32* %7, align 4
  br label %112

68:                                               ; preds = %44
  %69 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %70 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = call i32 @vfio_virqfd_disable(i32* %75)
  store i32 0, i32* %7, align 4
  br label %112

77:                                               ; preds = %39
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %84 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = call i32 @vfio_platform_mask(%struct.TYPE_2__* %88)
  br label %111

90:                                               ; preds = %77
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load i8*, i8** %13, align 8
  %97 = bitcast i8* %96 to i64*
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %103 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = call i32 @vfio_platform_mask(%struct.TYPE_2__* %107)
  br label %109

109:                                              ; preds = %101, %95
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %82
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %68, %50, %36, %21
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @vfio_virqfd_enable(i8*, i32, i32*, i32*, i32*, i64) #1

declare dso_local i32 @vfio_virqfd_disable(i32*) #1

declare dso_local i32 @vfio_platform_mask(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
