; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_pin_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_pin_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lochnagar_pin = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to get channel for %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Set pin %s to 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to set %s mux: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lochnagar_pin_priv*, %struct.lochnagar_pin*, i32)* @lochnagar_pin_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_pin_set_mux(%struct.lochnagar_pin_priv* %0, %struct.lochnagar_pin* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lochnagar_pin_priv*, align 8
  %6 = alloca %struct.lochnagar_pin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lochnagar_pin_priv* %0, %struct.lochnagar_pin_priv** %5, align 8
  store %struct.lochnagar_pin* %1, %struct.lochnagar_pin** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %10 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @lochnagar2_get_gpio_chan(%struct.lochnagar_pin_priv* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %23 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %6, align 8
  %26 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %64

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %35 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %6, align 8
  %38 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %43 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %6, align 8
  %48 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @regmap_write(i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %33
  %55 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %56 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.lochnagar_pin*, %struct.lochnagar_pin** %6, align 8
  %59 = getelementptr inbounds %struct.lochnagar_pin, %struct.lochnagar_pin* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %33
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @lochnagar2_get_gpio_chan(%struct.lochnagar_pin_priv*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
