; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lcd.c_devm_lcd_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lcd.c_devm_lcd_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { i32 }
%struct.device = type { i32 }
%struct.lcd_ops = type { i32 }

@devm_lcd_device_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lcd_device* @devm_lcd_device_register(%struct.device* %0, i8* %1, %struct.device* %2, i8* %3, %struct.lcd_ops* %4) #0 {
  %6 = alloca %struct.lcd_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lcd_ops*, align 8
  %12 = alloca %struct.lcd_device**, align 8
  %13 = alloca %struct.lcd_device*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.lcd_ops* %4, %struct.lcd_ops** %11, align 8
  %14 = load i32, i32* @devm_lcd_device_release, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.lcd_device** @devres_alloc(i32 %14, i32 8, i32 %15)
  store %struct.lcd_device** %16, %struct.lcd_device*** %12, align 8
  %17 = load %struct.lcd_device**, %struct.lcd_device*** %12, align 8
  %18 = icmp ne %struct.lcd_device** %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.lcd_device* @ERR_PTR(i32 %21)
  store %struct.lcd_device* %22, %struct.lcd_device** %6, align 8
  br label %43

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load %struct.lcd_ops*, %struct.lcd_ops** %11, align 8
  %28 = call %struct.lcd_device* @lcd_device_register(i8* %24, %struct.device* %25, i8* %26, %struct.lcd_ops* %27)
  store %struct.lcd_device* %28, %struct.lcd_device** %13, align 8
  %29 = load %struct.lcd_device*, %struct.lcd_device** %13, align 8
  %30 = call i32 @IS_ERR(%struct.lcd_device* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load %struct.lcd_device*, %struct.lcd_device** %13, align 8
  %34 = load %struct.lcd_device**, %struct.lcd_device*** %12, align 8
  store %struct.lcd_device* %33, %struct.lcd_device** %34, align 8
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.lcd_device**, %struct.lcd_device*** %12, align 8
  %37 = call i32 @devres_add(%struct.device* %35, %struct.lcd_device** %36)
  br label %41

38:                                               ; preds = %23
  %39 = load %struct.lcd_device**, %struct.lcd_device*** %12, align 8
  %40 = call i32 @devres_free(%struct.lcd_device** %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.lcd_device*, %struct.lcd_device** %13, align 8
  store %struct.lcd_device* %42, %struct.lcd_device** %6, align 8
  br label %43

43:                                               ; preds = %41, %19
  %44 = load %struct.lcd_device*, %struct.lcd_device** %6, align 8
  ret %struct.lcd_device* %44
}

declare dso_local %struct.lcd_device** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.lcd_device* @ERR_PTR(i32) #1

declare dso_local %struct.lcd_device* @lcd_device_register(i8*, %struct.device*, i8*, %struct.lcd_ops*) #1

declare dso_local i32 @IS_ERR(%struct.lcd_device*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.lcd_device**) #1

declare dso_local i32 @devres_free(%struct.lcd_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
