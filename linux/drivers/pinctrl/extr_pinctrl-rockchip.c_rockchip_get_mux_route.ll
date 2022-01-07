; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_mux_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_mux_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i64, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, %struct.rockchip_mux_route_data* }
%struct.rockchip_mux_route_data = type { i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pin_bank*, i32, i32, i32*, i32*, i32*)* @rockchip_get_mux_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_get_mux_route(%struct.rockchip_pin_bank* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pin_bank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.rockchip_pinctrl*, align 8
  %15 = alloca %struct.rockchip_pin_ctrl*, align 8
  %16 = alloca %struct.rockchip_mux_route_data*, align 8
  %17 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %8, align 8
  %19 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %18, i32 0, i32 1
  %20 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %19, align 8
  store %struct.rockchip_pinctrl* %20, %struct.rockchip_pinctrl** %14, align 8
  %21 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %14, align 8
  %22 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %21, i32 0, i32 0
  %23 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %22, align 8
  store %struct.rockchip_pin_ctrl* %23, %struct.rockchip_pin_ctrl** %15, align 8
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %58, %6
  %25 = load i32, i32* %17, align 4
  %26 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %15, align 8
  %27 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %15, align 8
  %32 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %31, i32 0, i32 1
  %33 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %33, i64 %35
  store %struct.rockchip_mux_route_data* %36, %struct.rockchip_mux_route_data** %16, align 8
  %37 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %16, align 8
  %38 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %8, align 8
  %41 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %16, align 8
  %46 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %16, align 8
  %52 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %61

57:                                               ; preds = %50, %44, %30
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %24

61:                                               ; preds = %56, %24
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %15, align 8
  %64 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %7, align 4
  br label %81

68:                                               ; preds = %61
  %69 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %16, align 8
  %70 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %16, align 8
  %74 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.rockchip_mux_route_data*, %struct.rockchip_mux_route_data** %16, align 8
  %78 = getelementptr inbounds %struct.rockchip_mux_route_data, %struct.rockchip_mux_route_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %13, align 8
  store i32 %79, i32* %80, align 4
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %68, %67
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
