; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar2_get_gpio_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar2_get_gpio_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lochnagar_pin_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@LN2_NUM_GPIO_CHANNELS = common dso_local global i32 0, align 4
@LOCHNAGAR2_GPIO_CHANNEL1 = common dso_local global i64 0, align 8
@LOCHNAGAR2_GPIO_CHANNEL_SRC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set channel %d to 0x%x\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lochnagar_pin_priv*, i32)* @lochnagar2_get_gpio_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar2_get_gpio_chan(%struct.lochnagar_pin_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lochnagar_pin_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lochnagar_pin_priv* %0, %struct.lochnagar_pin_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %4, align 8
  %12 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %50, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @LN2_NUM_GPIO_CHANNELS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.regmap*, %struct.regmap** %6, align 8
  %22 = load i64, i64* @LOCHNAGAR2_GPIO_CHANNEL1, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @regmap_read(%struct.regmap* %21, i64 %25, i32* %7)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %82

31:                                               ; preds = %20
  %32 = load i32, i32* @LOCHNAGAR2_GPIO_CHANNEL_SRC_MASK, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %82

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %44, %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load %struct.regmap*, %struct.regmap** %6, align 8
  %58 = load i64, i64* @LOCHNAGAR2_GPIO_CHANNEL1, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i32, i32* @LOCHNAGAR2_GPIO_CHANNEL_SRC_MASK, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @regmap_update_bits(%struct.regmap* %57, i64 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %82

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %4, align 8
  %73 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %53
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %69, %67, %38, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
