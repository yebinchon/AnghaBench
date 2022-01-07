; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lcd.c_lcd_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lcd.c_lcd_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcd_device = type { %struct.TYPE_6__, %struct.lcd_ops*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.lcd_ops = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"lcd_device_register: name=%s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lcd_class = common dso_local global i32 0, align 4
@lcd_device_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lcd_device* @lcd_device_register(i8* %0, %struct.device* %1, i8* %2, %struct.lcd_ops* %3) #0 {
  %5 = alloca %struct.lcd_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lcd_ops*, align 8
  %10 = alloca %struct.lcd_device*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.lcd_ops* %3, %struct.lcd_ops** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lcd_device* @kzalloc(i32 40, i32 %14)
  store %struct.lcd_device* %15, %struct.lcd_device** %10, align 8
  %16 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %17 = icmp ne %struct.lcd_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.lcd_device* @ERR_PTR(i32 %20)
  store %struct.lcd_device* %21, %struct.lcd_device** %5, align 8
  br label %76

22:                                               ; preds = %4
  %23 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %24 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %27 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load i32, i32* @lcd_class, align 4
  %30 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %31 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %35 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load i32, i32* @lcd_device_release, align 4
  %38 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %39 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %42 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %41, i32 0, i32 0
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @dev_set_name(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %46 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %46, i8* %47)
  %49 = load %struct.lcd_ops*, %struct.lcd_ops** %9, align 8
  %50 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %51 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %50, i32 0, i32 1
  store %struct.lcd_ops* %49, %struct.lcd_ops** %51, align 8
  %52 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %53 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %52, i32 0, i32 0
  %54 = call i32 @device_register(%struct.TYPE_6__* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %22
  %58 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %59 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %58, i32 0, i32 0
  %60 = call i32 @put_device(%struct.TYPE_6__* %59)
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.lcd_device* @ERR_PTR(i32 %61)
  store %struct.lcd_device* %62, %struct.lcd_device** %5, align 8
  br label %76

63:                                               ; preds = %22
  %64 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %65 = call i32 @lcd_register_fb(%struct.lcd_device* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  %70 = getelementptr inbounds %struct.lcd_device, %struct.lcd_device* %69, i32 0, i32 0
  %71 = call i32 @device_unregister(%struct.TYPE_6__* %70)
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.lcd_device* @ERR_PTR(i32 %72)
  store %struct.lcd_device* %73, %struct.lcd_device** %5, align 8
  br label %76

74:                                               ; preds = %63
  %75 = load %struct.lcd_device*, %struct.lcd_device** %10, align 8
  store %struct.lcd_device* %75, %struct.lcd_device** %5, align 8
  br label %76

76:                                               ; preds = %74, %68, %57, %18
  %77 = load %struct.lcd_device*, %struct.lcd_device** %5, align 8
  ret %struct.lcd_device* %77
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.lcd_device* @kzalloc(i32, i32) #1

declare dso_local %struct.lcd_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @lcd_register_fb(%struct.lcd_device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
