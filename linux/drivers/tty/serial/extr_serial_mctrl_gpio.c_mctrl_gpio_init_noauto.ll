; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_init_noauto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_mctrl_gpio.c_mctrl_gpio_init_noauto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mctrl_gpios = type { i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UART_GPIO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-gpios\00", align 1
@mctrl_gpios_desc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mctrl_gpios* @mctrl_gpio_init_noauto(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.mctrl_gpios*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mctrl_gpios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mctrl_gpios* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  store %struct.mctrl_gpios* %12, %struct.mctrl_gpios** %6, align 8
  %13 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %14 = icmp ne %struct.mctrl_gpios* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.mctrl_gpios* @ERR_PTR(i32 %17)
  store %struct.mctrl_gpios* %18, %struct.mctrl_gpios** %3, align 8
  br label %91

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %86, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UART_GPIO_MAX, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %20
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @kasprintf(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %86

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @device_property_present(%struct.device* %37, i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %86

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mctrl_gpios_desc, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @devm_gpiod_get_index_optional(%struct.device* %46, i32 %52, i32 %53, i32 %59)
  %61 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %62 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %68 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %45
  %77 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %78 = getelementptr inbounds %struct.mctrl_gpios, %struct.mctrl_gpios* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.mctrl_gpios* @ERR_CAST(i32 %83)
  store %struct.mctrl_gpios* %84, %struct.mctrl_gpios** %3, align 8
  br label %91

85:                                               ; preds = %45
  br label %86

86:                                               ; preds = %85, %44, %35
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %20

89:                                               ; preds = %20
  %90 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  store %struct.mctrl_gpios* %90, %struct.mctrl_gpios** %3, align 8
  br label %91

91:                                               ; preds = %89, %76, %15
  %92 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %3, align 8
  ret %struct.mctrl_gpios* %92
}

declare dso_local %struct.mctrl_gpios* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.mctrl_gpios* @ERR_PTR(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @device_property_present(%struct.device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @devm_gpiod_get_index_optional(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.mctrl_gpios* @ERR_CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
