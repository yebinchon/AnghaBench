; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_platform_set_irq_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_irq.c_vfio_platform_set_irq_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { %struct.vfio_platform_irq* }
%struct.vfio_platform_irq = type { i32, i32 }

@VFIO_IRQ_INFO_AUTOMASKED = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_EVENTFD = common dso_local global i32 0, align 4
@VFIO_IRQ_SET_DATA_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*, i32, i32, i32, i32, i8*)* @vfio_platform_set_irq_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_set_irq_trigger(%struct.vfio_platform_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_platform_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vfio_platform_irq*, align 8
  %15 = alloca i32 (i32, %struct.vfio_platform_irq*)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %19 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %18, i32 0, i32 0
  %20 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %20, i64 %22
  store %struct.vfio_platform_irq* %23, %struct.vfio_platform_irq** %14, align 8
  %24 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %25 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %24, i32 0, i32 0
  %26 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %26, i64 %28
  %30 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VFIO_IRQ_INFO_AUTOMASKED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store i32 (i32, %struct.vfio_platform_irq*)* @vfio_automasked_irq_handler, i32 (i32, %struct.vfio_platform_irq*)** %15, align 8
  br label %37

36:                                               ; preds = %6
  store i32 (i32, %struct.vfio_platform_irq*)* @vfio_irq_handler, i32 (i32, %struct.vfio_platform_irq*)** %15, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32 (i32, %struct.vfio_platform_irq*)*, i32 (i32, %struct.vfio_platform_irq*)** %15, align 8
  %49 = call i32 @vfio_set_trigger(%struct.vfio_platform_device* %46, i32 %47, i32 -1, i32 (i32, %struct.vfio_platform_irq*)* %48)
  store i32 %49, i32* %7, align 4
  br label %106

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %106

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @VFIO_IRQ_SET_DATA_EVENTFD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %13, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %16, align 4
  %68 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32 (i32, %struct.vfio_platform_irq*)*, i32 (i32, %struct.vfio_platform_irq*)** %15, align 8
  %72 = call i32 @vfio_set_trigger(%struct.vfio_platform_device* %68, i32 %69, i32 %70, i32 (i32, %struct.vfio_platform_irq*)* %71)
  store i32 %72, i32* %7, align 4
  br label %106

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @VFIO_IRQ_SET_DATA_NONE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32 (i32, %struct.vfio_platform_irq*)*, i32 (i32, %struct.vfio_platform_irq*)** %15, align 8
  %80 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %14, align 8
  %81 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %14, align 8
  %84 = call i32 %79(i32 %82, %struct.vfio_platform_irq* %83)
  br label %105

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @VFIO_IRQ_SET_DATA_BOOL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load i8*, i8** %13, align 8
  %92 = bitcast i8* %91 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %17, align 8
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32 (i32, %struct.vfio_platform_irq*)*, i32 (i32, %struct.vfio_platform_irq*)** %15, align 8
  %98 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %14, align 8
  %99 = getelementptr inbounds %struct.vfio_platform_irq, %struct.vfio_platform_irq* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vfio_platform_irq*, %struct.vfio_platform_irq** %14, align 8
  %102 = call i32 %97(i32 %100, %struct.vfio_platform_irq* %101)
  br label %103

103:                                              ; preds = %96, %90
  br label %104

104:                                              ; preds = %103, %85
  br label %105

105:                                              ; preds = %104, %78
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %64, %56, %45
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @vfio_automasked_irq_handler(i32, %struct.vfio_platform_irq*) #1

declare dso_local i32 @vfio_irq_handler(i32, %struct.vfio_platform_irq*) #1

declare dso_local i32 @vfio_set_trigger(%struct.vfio_platform_device*, i32, i32, i32 (i32, %struct.vfio_platform_irq*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
