; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g6.c_aspeed_g6_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/aspeed/extr_pinctrl-aspeed-g6.c_aspeed_g6_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }

@aspeed_g6_pins = common dso_local global %struct.TYPE_3__* null, align 8
@aspeed_g6_pinctrl_desc = common dso_local global i32 0, align 4
@aspeed_g6_pinctrl_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_g6_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @aspeed_g6_pins, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @aspeed_g6_pins, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %10, i32* %15, align 4
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = call i32 @aspeed_pinctrl_probe(%struct.platform_device* %20, i32* @aspeed_g6_pinctrl_desc, i32* @aspeed_g6_pinctrl_data)
  ret i32 %21
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @aspeed_pinctrl_probe(%struct.platform_device*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
