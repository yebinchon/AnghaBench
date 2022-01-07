; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get_retime_dedicated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get_retime_dedicated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { i32 }
%struct.st_pio_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.st_retime_dedicated }
%struct.st_retime_dedicated = type { i32* }

@RT_D_CFG_CLK_MASK = common dso_local global i32 0, align 4
@RT_D_CFG_CLK_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_DELAY_MASK = common dso_local global i32 0, align 4
@RT_D_CFG_DELAY_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_CLKNOTDATA_MASK = common dso_local global i32 0, align 4
@RT_D_CFG_DOUBLE_EDGE_MASK = common dso_local global i32 0, align 4
@RT_D_CFG_INVERTCLK_MASK = common dso_local global i32 0, align 4
@RT_D_CFG_RETIME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_pinctrl*, %struct.st_pio_control*, i32, i64*)* @st_pinconf_get_retime_dedicated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pinconf_get_retime_dedicated(%struct.st_pinctrl* %0, %struct.st_pio_control* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca %struct.st_pio_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.st_retime_dedicated*, align 8
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store %struct.st_pio_control* %1, %struct.st_pio_control** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ST_PINCONF_UNPACK_OE(i64 %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %19 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.st_retime_dedicated* %20, %struct.st_retime_dedicated** %14, align 8
  %21 = load %struct.st_retime_dedicated*, %struct.st_retime_dedicated** %14, align 8
  %22 = getelementptr inbounds %struct.st_retime_dedicated, %struct.st_retime_dedicated* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_field_read(i32 %27, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @RT_D_CFG_CLK_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @RT_D_CFG_CLK_SHIFT, align 4
  %33 = lshr i32 %31, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @ST_PINCONF_PACK_RT_CLK(i64 %36, i64 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @RT_D_CFG_DELAY_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @RT_D_CFG_DELAY_SHIFT, align 4
  %43 = lshr i32 %41, %42
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %47 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @st_pinconf_bit_to_delay(i64 %45, i32 %48, i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @ST_PINCONF_PACK_RT_DELAY(i64 %52, i64 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @RT_D_CFG_CLKNOTDATA_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %4
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ST_PINCONF_PACK_RT_CLKNOTDATA(i64 %61)
  br label %63

63:                                               ; preds = %59, %4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RT_D_CFG_DOUBLE_EDGE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ST_PINCONF_PACK_RT_DOUBLE_EDGE(i64 %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @RT_D_CFG_INVERTCLK_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64*, i64** %8, align 8
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ST_PINCONF_PACK_RT_INVERTCLK(i64 %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @RT_D_CFG_RETIME_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i64*, i64** %8, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ST_PINCONF_PACK_RT(i64 %88)
  br label %90

90:                                               ; preds = %86, %81
  ret i32 0
}

declare dso_local i32 @ST_PINCONF_UNPACK_OE(i64) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_CLK(i64, i64) #1

declare dso_local i64 @st_pinconf_bit_to_delay(i64, i32, i32) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_DELAY(i64, i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_CLKNOTDATA(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_DOUBLE_EDGE(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_INVERTCLK(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
