; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_get_gpio_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_get_gpio_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i8*, %struct.gpio_desc**)* @sharp_ls_get_gpio_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_ls_get_gpio_of(%struct.device* %0, i32 %1, i32 %2, i8* %3, %struct.gpio_desc** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gpio_desc**, align 8
  %12 = alloca %struct.gpio_desc*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.gpio_desc** %4, %struct.gpio_desc*** %11, align 8
  %13 = load %struct.gpio_desc**, %struct.gpio_desc*** %11, align 8
  store %struct.gpio_desc* null, %struct.gpio_desc** %13, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %18 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %14, i8* %15, i32 %16, i32 %17)
  store %struct.gpio_desc* %18, %struct.gpio_desc** %12, align 8
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %20 = call i64 @IS_ERR(%struct.gpio_desc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %24 = call i32 @PTR_ERR(%struct.gpio_desc* %23)
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %5
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %27 = load %struct.gpio_desc**, %struct.gpio_desc*** %11, align 8
  store %struct.gpio_desc* %26, %struct.gpio_desc** %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
