; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_retime_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set_retime_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.st_pctl_data* }
%struct.st_pctl_data = type { i32 }
%struct.st_pio_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.st_retime_packed }
%struct.st_retime_packed = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_pinctrl*, %struct.st_pio_control*, i64, i32)* @st_pinconf_set_retime_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_pinconf_set_retime_packed(%struct.st_pinctrl* %0, %struct.st_pio_control* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca %struct.st_pio_control*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_pctl_data*, align 8
  %10 = alloca %struct.st_retime_packed*, align 8
  %11 = alloca i32, align 4
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store %struct.st_pio_control* %1, %struct.st_pio_control** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %13 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %12, i32 0, i32 0
  %14 = load %struct.st_pctl_data*, %struct.st_pctl_data** %13, align 8
  store %struct.st_pctl_data* %14, %struct.st_pctl_data** %9, align 8
  %15 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %16 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.st_retime_packed* %17, %struct.st_retime_packed** %10, align 8
  %18 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %19 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @ST_PINCONF_UNPACK_RT_CLK(i64 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %20, i32 %22, i32 %23)
  %25 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %26 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @ST_PINCONF_UNPACK_RT_CLKNOTDATA(i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %27, i32 %29, i32 %30)
  %32 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %33 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %34, i32 %36, i32 %37)
  %39 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %40 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ST_PINCONF_UNPACK_RT_INVERTCLK(i64 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %41, i32 %43, i32 %44)
  %46 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %47 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ST_PINCONF_UNPACK_RT(i64 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %48, i32 %50, i32 %51)
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ST_PINCONF_UNPACK_RT_DELAY(i64 %53)
  %55 = load %struct.st_pctl_data*, %struct.st_pctl_data** %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @st_pinconf_delay_to_bit(i32 %54, %struct.st_pctl_data* %55, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %59 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %60, i32 %62, i32 %63)
  %65 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %66 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 2
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @st_regmap_field_bit_set_clear_pin(i32 %67, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @st_regmap_field_bit_set_clear_pin(i32, i32, i32) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_CLK(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_CLKNOTDATA(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_DOUBLE_EDGE(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_INVERTCLK(i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT(i64) #1

declare dso_local i32 @st_pinconf_delay_to_bit(i32, %struct.st_pctl_data*, i64) #1

declare dso_local i32 @ST_PINCONF_UNPACK_RT_DELAY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
