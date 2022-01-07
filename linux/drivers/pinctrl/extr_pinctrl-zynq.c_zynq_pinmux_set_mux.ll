; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinmux_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-zynq.c_zynq_pinmux_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.zynq_pinctrl = type { i32, i32, %struct.zynq_pinmux_function*, %struct.zynq_pctrl_group* }
%struct.zynq_pinmux_function = type { i32, i32, i32, i32 }
%struct.zynq_pctrl_group = type { i32*, i32 }

@ZYNQ_PMUX_sdio0_cd = common dso_local global i32 0, align 4
@ZYNQ_PMUX_sdio0_wp = common dso_local global i32 0, align 4
@ZYNQ_PMUX_sdio1_cd = common dso_local global i32 0, align 4
@ZYNQ_PMUX_sdio1_wp = common dso_local global i32 0, align 4
@ZYNQ_PINMUX_MUX_MASK = common dso_local global i32 0, align 4
@ZYNQ_PINMUX_MUX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @zynq_pinmux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_pinmux_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zynq_pinctrl*, align 8
  %11 = alloca %struct.zynq_pctrl_group*, align 8
  %12 = alloca %struct.zynq_pinmux_function*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = call %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.zynq_pinctrl* %18, %struct.zynq_pinctrl** %10, align 8
  %19 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %20 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %19, i32 0, i32 3
  %21 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %21, i64 %23
  store %struct.zynq_pctrl_group* %24, %struct.zynq_pctrl_group** %11, align 8
  %25 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %26 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %25, i32 0, i32 2
  %27 = load %struct.zynq_pinmux_function*, %struct.zynq_pinmux_function** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.zynq_pinmux_function, %struct.zynq_pinmux_function* %27, i64 %29
  store %struct.zynq_pinmux_function* %30, %struct.zynq_pinmux_function** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ZYNQ_PMUX_sdio0_cd, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ZYNQ_PMUX_sdio0_wp, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ZYNQ_PMUX_sdio1_cd, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ZYNQ_PMUX_sdio1_wp, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %42, %38, %34, %3
  %47 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %48 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %51 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.zynq_pinmux_function*, %struct.zynq_pinmux_function** %12, align 8
  %54 = getelementptr inbounds %struct.zynq_pinmux_function, %struct.zynq_pinmux_function* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = call i32 @regmap_read(i32 %49, i32 %56, i32* %13)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %155

62:                                               ; preds = %46
  %63 = load %struct.zynq_pinmux_function*, %struct.zynq_pinmux_function** %12, align 8
  %64 = getelementptr inbounds %struct.zynq_pinmux_function, %struct.zynq_pinmux_function* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %11, align 8
  %70 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.zynq_pinmux_function*, %struct.zynq_pinmux_function** %12, align 8
  %75 = getelementptr inbounds %struct.zynq_pinmux_function, %struct.zynq_pinmux_function* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %73, %76
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %81 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %84 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.zynq_pinmux_function*, %struct.zynq_pinmux_function** %12, align 8
  %87 = getelementptr inbounds %struct.zynq_pinmux_function, %struct.zynq_pinmux_function* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @regmap_write(i32 %82, i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %62
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %155

96:                                               ; preds = %62
  br label %154

97:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %150, %97
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %11, align 8
  %101 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %153

104:                                              ; preds = %98
  %105 = load %struct.zynq_pctrl_group*, %struct.zynq_pctrl_group** %11, align 8
  %106 = getelementptr inbounds %struct.zynq_pctrl_group, %struct.zynq_pctrl_group* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %113 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = mul i32 4, %115
  %117 = add i32 %114, %116
  store i32 %117, i32* %16, align 4
  %118 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %119 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @regmap_read(i32 %120, i32 %121, i32* %15)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %104
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %155

127:                                              ; preds = %104
  %128 = load i32, i32* @ZYNQ_PINMUX_MUX_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load %struct.zynq_pinmux_function*, %struct.zynq_pinmux_function** %12, align 8
  %133 = getelementptr inbounds %struct.zynq_pinmux_function, %struct.zynq_pinmux_function* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ZYNQ_PINMUX_MUX_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %15, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %15, align 4
  %139 = load %struct.zynq_pinctrl*, %struct.zynq_pinctrl** %10, align 8
  %140 = getelementptr inbounds %struct.zynq_pinctrl, %struct.zynq_pinctrl* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @regmap_write(i32 %141, i32 %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %127
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %155

149:                                              ; preds = %127
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %98

153:                                              ; preds = %98
  br label %154

154:                                              ; preds = %153, %96
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %147, %125, %94, %60
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.zynq_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
