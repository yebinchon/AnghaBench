; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_devm_backlight_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_backlight.c_devm_backlight_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.device = type { i32 }
%struct.backlight_ops = type { i32 }
%struct.backlight_properties = type { i32 }

@devm_backlight_device_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.device* %0, i8* %1, %struct.device* %2, i8* %3, %struct.backlight_ops* %4, %struct.backlight_properties* %5) #0 {
  %7 = alloca %struct.backlight_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.backlight_ops*, align 8
  %13 = alloca %struct.backlight_properties*, align 8
  %14 = alloca %struct.backlight_device**, align 8
  %15 = alloca %struct.backlight_device*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.device* %2, %struct.device** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.backlight_ops* %4, %struct.backlight_ops** %12, align 8
  store %struct.backlight_properties* %5, %struct.backlight_properties** %13, align 8
  %16 = load i32, i32* @devm_backlight_device_release, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.backlight_device** @devres_alloc(i32 %16, i32 8, i32 %17)
  store %struct.backlight_device** %18, %struct.backlight_device*** %14, align 8
  %19 = load %struct.backlight_device**, %struct.backlight_device*** %14, align 8
  %20 = icmp ne %struct.backlight_device** %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.backlight_device* @ERR_PTR(i32 %23)
  store %struct.backlight_device* %24, %struct.backlight_device** %7, align 8
  br label %46

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.backlight_ops*, %struct.backlight_ops** %12, align 8
  %30 = load %struct.backlight_properties*, %struct.backlight_properties** %13, align 8
  %31 = call %struct.backlight_device* @backlight_device_register(i8* %26, %struct.device* %27, i8* %28, %struct.backlight_ops* %29, %struct.backlight_properties* %30)
  store %struct.backlight_device* %31, %struct.backlight_device** %15, align 8
  %32 = load %struct.backlight_device*, %struct.backlight_device** %15, align 8
  %33 = call i32 @IS_ERR(%struct.backlight_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.backlight_device*, %struct.backlight_device** %15, align 8
  %37 = load %struct.backlight_device**, %struct.backlight_device*** %14, align 8
  store %struct.backlight_device* %36, %struct.backlight_device** %37, align 8
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = load %struct.backlight_device**, %struct.backlight_device*** %14, align 8
  %40 = call i32 @devres_add(%struct.device* %38, %struct.backlight_device** %39)
  br label %44

41:                                               ; preds = %25
  %42 = load %struct.backlight_device**, %struct.backlight_device*** %14, align 8
  %43 = call i32 @devres_free(%struct.backlight_device** %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.backlight_device*, %struct.backlight_device** %15, align 8
  store %struct.backlight_device* %45, %struct.backlight_device** %7, align 8
  br label %46

46:                                               ; preds = %44, %21
  %47 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  ret %struct.backlight_device* %47
}

declare dso_local %struct.backlight_device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.backlight_device* @ERR_PTR(i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, %struct.device*, i8*, %struct.backlight_ops*, %struct.backlight_properties*) #1

declare dso_local i32 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.backlight_device**) #1

declare dso_local i32 @devres_free(%struct.backlight_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
