; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_of_find_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_of_find_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.device = type { i64 }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.backlight_device* @of_find_backlight(%struct.device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.backlight_device* null, %struct.backlight_device** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.backlight_device* null, %struct.backlight_device** %2, align 8
  br label %54

9:                                                ; preds = %1
  %10 = load i32, i32* @CONFIG_OF, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.device_node* @of_parse_phandle(i64 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %22, %struct.device_node** %5, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %18
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call %struct.backlight_device* @of_find_backlight_by_node(%struct.device_node* %26)
  store %struct.backlight_device* %27, %struct.backlight_device** %4, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_node_put(%struct.device_node* %28)
  %30 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %31 = icmp ne %struct.backlight_device* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EPROBE_DEFER, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.backlight_device* @ERR_PTR(i32 %34)
  store %struct.backlight_device* %35, %struct.backlight_device** %2, align 8
  br label %54

36:                                               ; preds = %25
  %37 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %38 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %44 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %48 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %36
  br label %51

51:                                               ; preds = %50, %18
  br label %52

52:                                               ; preds = %51, %13, %9
  %53 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  store %struct.backlight_device* %53, %struct.backlight_device** %2, align 8
  br label %54

54:                                               ; preds = %52, %32, %8
  %55 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  ret %struct.backlight_device* %55
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i64, i8*, i32) #1

declare dso_local %struct.backlight_device* @of_find_backlight_by_node(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.backlight_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
