; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_retime_dedicated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_retime_dedicated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { i32 }
%struct.st_pio_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.st_retime_dedicated }
%struct.st_retime_dedicated = type { i32* }

@RT_D_CFG_CLK_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_DELAY_SHIFT = common dso_local global i64 0, align 8
@RT_D_CFG_DELAY_INNOTOUT_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_RETIME_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_CLKNOTDATA_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_INVERTCLK_SHIFT = common dso_local global i32 0, align 4
@RT_D_CFG_DOUBLE_EDGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pinctrl*, %struct.st_pio_control*, i64, i32)* @st_pinconf_set_retime_dedicated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pinconf_set_retime_dedicated(%struct.st_pinctrl* %0, %struct.st_pio_control* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca %struct.st_pio_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.st_retime_dedicated*, align 8
  %17 = alloca i64, align 8
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store %struct.st_pio_control* %1, %struct.st_pio_control** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @ST_PINCONF_UNPACK_OE(i64 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @ST_PINCONF_UNPACK_RT_CLK(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @ST_PINCONF_UNPACK_RT_CLKNOTDATA(i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ST_PINCONF_UNPACK_RT_INVERTCLK(i64 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ST_PINCONF_UNPACK_RT(i64 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ST_PINCONF_UNPACK_RT_DELAY(i64 %33)
  %35 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %36 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @st_pinconf_delay_to_bit(i32 %34, i32 %37, i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %41 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.st_retime_dedicated* %42, %struct.st_retime_dedicated** %16, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @RT_D_CFG_CLK_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* @RT_D_CFG_DELAY_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = or i64 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @RT_D_CFG_DELAY_INNOTOUT_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = or i64 %50, %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @RT_D_CFG_RETIME_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = or i64 %55, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @RT_D_CFG_CLKNOTDATA_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = or i64 %60, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @RT_D_CFG_INVERTCLK_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = or i64 %65, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @RT_D_CFG_DOUBLE_EDGE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = or i64 %70, %74
  store i64 %75, i64* %17, align 8
  %76 = load %struct.st_retime_dedicated*, %struct.st_retime_dedicated** %16, align 8
  %77 = getelementptr inbounds %struct.st_retime_dedicated, %struct.st_retime_dedicated* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @regmap_field_write(i32 %82, i64 %83)
  ret void
}

declare dso_local i64 @ST_PINCONF_UNPACK_OE(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_CLK(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_CLKNOTDATA(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_INVERTCLK(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT(i64) #1

declare dso_local i64 @st_pinconf_delay_to_bit(i32, i32, i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_DELAY(i64) #1

declare dso_local i32 @regmap_field_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
