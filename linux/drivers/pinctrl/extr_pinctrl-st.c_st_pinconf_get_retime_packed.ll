; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get_retime_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_get_retime_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.st_pctl_data* }
%struct.st_pctl_data = type { i32 }
%struct.st_pio_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.st_retime_packed }
%struct.st_retime_packed = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_pinctrl*, %struct.st_pio_control*, i32, i64*)* @st_pinconf_get_retime_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pinconf_get_retime_packed(%struct.st_pinctrl* %0, %struct.st_pio_control* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca %struct.st_pio_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.st_pctl_data*, align 8
  %10 = alloca %struct.st_retime_packed*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store %struct.st_pio_control* %1, %struct.st_pio_control** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %17 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %18 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %17, i32 0, i32 0
  %19 = load %struct.st_pctl_data*, %struct.st_pctl_data** %18, align 8
  store %struct.st_pctl_data* %19, %struct.st_pctl_data** %9, align 8
  %20 = load %struct.st_pio_control*, %struct.st_pio_control** %6, align 8
  %21 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.st_retime_packed* %22, %struct.st_retime_packed** %10, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ST_PINCONF_UNPACK_OE(i64 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %27 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_field_read(i32 %28, i32* %15)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ST_PINCONF_PACK_RT(i64 %39)
  br label %41

41:                                               ; preds = %37, %31, %4
  %42 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %43 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @regmap_field_read(i32 %44, i32* %15)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ST_PINCONF_PACK_RT_CLK(i64 %55, i32 1)
  br label %57

57:                                               ; preds = %53, %47, %41
  %58 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %59 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regmap_field_read(i32 %60, i32* %15)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ST_PINCONF_PACK_RT_CLKNOTDATA(i64 %71)
  br label %73

73:                                               ; preds = %69, %63, %57
  %74 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %75 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @regmap_field_read(i32 %76, i32* %15)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64*, i64** %8, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ST_PINCONF_PACK_RT_DOUBLE_EDGE(i64 %87)
  br label %89

89:                                               ; preds = %85, %79, %73
  %90 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %91 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @regmap_field_read(i32 %92, i32* %15)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i64*, i64** %8, align 8
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ST_PINCONF_PACK_RT_INVERTCLK(i64 %103)
  br label %105

105:                                              ; preds = %101, %95, %89
  %106 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %107 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @regmap_field_read(i32 %108, i32* %13)
  %110 = load %struct.st_retime_packed*, %struct.st_retime_packed** %10, align 8
  %111 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @regmap_field_read(i32 %112, i32* %14)
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @BIT(i32 %115)
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = shl i32 %120, 1
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @BIT(i32 %123)
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = or i32 %121, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.st_pctl_data*, %struct.st_pctl_data** %9, align 8
  %132 = load i32, i32* %16, align 4
  %133 = call i32 @st_pinconf_bit_to_delay(i32 %130, %struct.st_pctl_data* %131, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i64*, i64** %8, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @ST_PINCONF_PACK_RT_DELAY(i64 %135, i32 %136)
  ret i32 0
}

declare dso_local i32 @ST_PINCONF_UNPACK_OE(i64) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ST_PINCONF_PACK_RT(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_CLK(i64, i32) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_CLKNOTDATA(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_DOUBLE_EDGE(i64) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_INVERTCLK(i64) #1

declare dso_local i32 @st_pinconf_bit_to_delay(i32, %struct.st_pctl_data*, i32) #1

declare dso_local i32 @ST_PINCONF_PACK_RT_DELAY(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
