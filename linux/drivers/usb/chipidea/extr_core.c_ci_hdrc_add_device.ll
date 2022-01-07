; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_hdrc_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_core.c_ci_hdrc_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.ci_hdrc_platform_data = type { i32 }

@ci_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ci_hdrc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @ci_hdrc_add_device(%struct.device* %0, %struct.resource* %1, i32 %2, %struct.ci_hdrc_platform_data* %3) #0 {
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ci_hdrc_platform_data*, align 8
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ci_hdrc_platform_data* %3, %struct.ci_hdrc_platform_data** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %9, align 8
  %15 = call i32 @ci_get_platdata(%struct.device* %13, %struct.ci_hdrc_platform_data* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.platform_device* @ERR_PTR(i32 %19)
  store %struct.platform_device* %20, %struct.platform_device** %5, align 8
  br label %72

21:                                               ; preds = %4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @ida_simple_get(i32* @ci_ida, i32 0, i32 0, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.platform_device* @ERR_PTR(i32 %27)
  store %struct.platform_device* %28, %struct.platform_device** %5, align 8
  br label %72

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  store %struct.platform_device* %31, %struct.platform_device** %10, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %33 = icmp ne %struct.platform_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %67

37:                                               ; preds = %29
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.device* %38, %struct.device** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @platform_device_add_resources(%struct.platform_device* %42, %struct.resource* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %64

49:                                               ; preds = %37
  %50 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %51 = load %struct.ci_hdrc_platform_data*, %struct.ci_hdrc_platform_data** %9, align 8
  %52 = call i32 @platform_device_add_data(%struct.platform_device* %50, %struct.ci_hdrc_platform_data* %51, i32 4)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %64

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %58 = call i32 @platform_device_add(%struct.platform_device* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %64

62:                                               ; preds = %56
  %63 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %63, %struct.platform_device** %5, align 8
  br label %72

64:                                               ; preds = %61, %55, %48
  %65 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %66 = call i32 @platform_device_put(%struct.platform_device* %65)
  br label %67

67:                                               ; preds = %64, %34
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ida_simple_remove(i32* @ci_ida, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call %struct.platform_device* @ERR_PTR(i32 %70)
  store %struct.platform_device* %71, %struct.platform_device** %5, align 8
  br label %72

72:                                               ; preds = %67, %62, %26, %18
  %73 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  ret %struct.platform_device* %73
}

declare dso_local i32 @ci_get_platdata(%struct.device*, %struct.ci_hdrc_platform_data*) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.ci_hdrc_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
