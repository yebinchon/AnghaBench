; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_recalced_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_get_recalced_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pin_bank = type { i64, %struct.rockchip_pinctrl* }
%struct.rockchip_pinctrl = type { %struct.rockchip_pin_ctrl* }
%struct.rockchip_pin_ctrl = type { i32, %struct.rockchip_mux_recalced_data* }
%struct.rockchip_mux_recalced_data = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pin_bank*, i32, i32*, i32*, i32*)* @rockchip_get_recalced_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_get_recalced_mux(%struct.rockchip_pin_bank* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rockchip_pin_bank*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rockchip_pinctrl*, align 8
  %12 = alloca %struct.rockchip_pin_ctrl*, align 8
  %13 = alloca %struct.rockchip_mux_recalced_data*, align 8
  %14 = alloca i32, align 4
  store %struct.rockchip_pin_bank* %0, %struct.rockchip_pin_bank** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %16 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %15, i32 0, i32 1
  %17 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %16, align 8
  store %struct.rockchip_pinctrl* %17, %struct.rockchip_pinctrl** %11, align 8
  %18 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %11, align 8
  %19 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %18, i32 0, i32 0
  %20 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %19, align 8
  store %struct.rockchip_pin_ctrl* %20, %struct.rockchip_pin_ctrl** %12, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %49, %5
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %12, align 8
  %24 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %12, align 8
  %29 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %28, i32 0, i32 1
  %30 = load %struct.rockchip_mux_recalced_data*, %struct.rockchip_mux_recalced_data** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rockchip_mux_recalced_data, %struct.rockchip_mux_recalced_data* %30, i64 %32
  store %struct.rockchip_mux_recalced_data* %33, %struct.rockchip_mux_recalced_data** %13, align 8
  %34 = load %struct.rockchip_mux_recalced_data*, %struct.rockchip_mux_recalced_data** %13, align 8
  %35 = getelementptr inbounds %struct.rockchip_mux_recalced_data, %struct.rockchip_mux_recalced_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %6, align 8
  %38 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load %struct.rockchip_mux_recalced_data*, %struct.rockchip_mux_recalced_data** %13, align 8
  %43 = getelementptr inbounds %struct.rockchip_mux_recalced_data, %struct.rockchip_mux_recalced_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %52

48:                                               ; preds = %41, %27
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %21

52:                                               ; preds = %47, %21
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.rockchip_pin_ctrl*, %struct.rockchip_pin_ctrl** %12, align 8
  %55 = getelementptr inbounds %struct.rockchip_pin_ctrl, %struct.rockchip_pin_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %72

59:                                               ; preds = %52
  %60 = load %struct.rockchip_mux_recalced_data*, %struct.rockchip_mux_recalced_data** %13, align 8
  %61 = getelementptr inbounds %struct.rockchip_mux_recalced_data, %struct.rockchip_mux_recalced_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.rockchip_mux_recalced_data*, %struct.rockchip_mux_recalced_data** %13, align 8
  %65 = getelementptr inbounds %struct.rockchip_mux_recalced_data, %struct.rockchip_mux_recalced_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.rockchip_mux_recalced_data*, %struct.rockchip_mux_recalced_data** %13, align 8
  %69 = getelementptr inbounds %struct.rockchip_mux_recalced_data, %struct.rockchip_mux_recalced_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %59, %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
