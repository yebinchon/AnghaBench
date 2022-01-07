; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_devm_of_find_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_devm_of_find_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.device = type { i32 }

@devm_backlight_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.backlight_device* @devm_of_find_backlight(%struct.device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.backlight_device* @of_find_backlight(%struct.device* %6)
  store %struct.backlight_device* %7, %struct.backlight_device** %4, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.backlight_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  store %struct.backlight_device* %12, %struct.backlight_device** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load i32, i32* @devm_backlight_release, align 4
  %16 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %17 = call i32 @devm_add_action(%struct.device* %14, i32 %15, %struct.backlight_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %22 = call i32 @backlight_put(%struct.backlight_device* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.backlight_device* @ERR_PTR(i32 %23)
  store %struct.backlight_device* %24, %struct.backlight_device** %2, align 8
  br label %27

25:                                               ; preds = %13
  %26 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  store %struct.backlight_device* %26, %struct.backlight_device** %2, align 8
  br label %27

27:                                               ; preds = %25, %20, %11
  %28 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  ret %struct.backlight_device* %28
}

declare dso_local %struct.backlight_device* @of_find_backlight(%struct.device*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.backlight_device*) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.backlight_device*) #1

declare dso_local i32 @backlight_put(%struct.backlight_device*) #1

declare dso_local %struct.backlight_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
