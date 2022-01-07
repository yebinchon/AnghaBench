; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_verify_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_verify_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { %struct.TYPE_2__*, %struct.rockchip_pinctrl* }
%struct.TYPE_2__ = type { i32 }
%struct.rockchip_pinctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOMUX_UNROUTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pin %d is unrouted\0A\00", align 1
@IOMUX_GPIO_ONLY = common dso_local global i32 0, align 4
@RK_FUNC_GPIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"pin %d only supports a gpio mux\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32, i32)* @rockchip_verify_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_verify_mux(%struct.rockchip_pin_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_pin_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pinctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %11 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %10, i32 0, i32 1
  %12 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  store %struct.rockchip_pinctrl* %12, %struct.rockchip_pinctrl** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %22 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IOMUX_UNROUTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %34 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %66

40:                                               ; preds = %20
  %41 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %5, align 8
  %42 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IOMUX_GPIO_ONLY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @RK_FUNC_GPIO, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %8, align 8
  %58 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %40
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %56, %32, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
