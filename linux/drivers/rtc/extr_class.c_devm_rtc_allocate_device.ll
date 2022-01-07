; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_class.c_devm_rtc_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_class.c_devm_rtc_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@devm_rtc_release_device = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rtc%d\00", align 1
@rtc_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtc_device* @devm_rtc_allocate_device(%struct.device* %0) #0 {
  %2 = alloca %struct.rtc_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_device**, align 8
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @rtc_device_get_id(%struct.device* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rtc_device* @ERR_PTR(i32 %13)
  store %struct.rtc_device* %14, %struct.rtc_device** %2, align 8
  br label %57

15:                                               ; preds = %1
  %16 = load i32, i32* @devm_rtc_release_device, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rtc_device** @devres_alloc(i32 %16, i32 8, i32 %17)
  store %struct.rtc_device** %18, %struct.rtc_device*** %4, align 8
  %19 = load %struct.rtc_device**, %struct.rtc_device*** %4, align 8
  %20 = icmp ne %struct.rtc_device** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %52

24:                                               ; preds = %15
  %25 = call %struct.rtc_device* (...) @rtc_allocate_device()
  store %struct.rtc_device* %25, %struct.rtc_device** %5, align 8
  %26 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %27 = icmp ne %struct.rtc_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %49

31:                                               ; preds = %24
  %32 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %33 = load %struct.rtc_device**, %struct.rtc_device*** %4, align 8
  store %struct.rtc_device* %32, %struct.rtc_device** %33, align 8
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = load %struct.rtc_device**, %struct.rtc_device*** %4, align 8
  %36 = call i32 @devres_add(%struct.device* %34, %struct.rtc_device** %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.device* %40, %struct.device** %43, align 8
  %44 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_set_name(%struct.TYPE_2__* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  store %struct.rtc_device* %48, %struct.rtc_device** %2, align 8
  br label %57

49:                                               ; preds = %28
  %50 = load %struct.rtc_device**, %struct.rtc_device*** %4, align 8
  %51 = call i32 @devres_free(%struct.rtc_device** %50)
  br label %52

52:                                               ; preds = %49, %21
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ida_simple_remove(i32* @rtc_ida, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.rtc_device* @ERR_PTR(i32 %55)
  store %struct.rtc_device* %56, %struct.rtc_device** %2, align 8
  br label %57

57:                                               ; preds = %52, %31, %12
  %58 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  ret %struct.rtc_device* %58
}

declare dso_local i32 @rtc_device_get_id(%struct.device*) #1

declare dso_local %struct.rtc_device* @ERR_PTR(i32) #1

declare dso_local %struct.rtc_device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.rtc_device* @rtc_allocate_device(...) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.rtc_device**) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @devres_free(%struct.rtc_device**) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
