; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_setup_retime_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_dt_setup_retime_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_pinctrl = type { %struct.st_pctl_data*, %struct.regmap*, %struct.device* }
%struct.st_pctl_data = type { i32 }
%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.st_pio_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.st_retime_packed }
%struct.st_retime_packed = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.reg_field = type { i32 }

@RT_P_CFGS_PER_BANK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_pinctrl*, i32, %struct.st_pio_control*)* @st_pctl_dt_setup_retime_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pctl_dt_setup_retime_packed(%struct.st_pinctrl* %0, i32 %1, %struct.st_pio_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_pio_control*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca %struct.st_pctl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.st_retime_packed*, align 8
  %13 = alloca %struct.reg_field, align 4
  %14 = alloca %struct.reg_field, align 4
  %15 = alloca %struct.reg_field, align 4
  %16 = alloca %struct.reg_field, align 4
  %17 = alloca %struct.reg_field, align 4
  %18 = alloca %struct.reg_field, align 4
  %19 = alloca %struct.reg_field, align 4
  store %struct.st_pinctrl* %0, %struct.st_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.st_pio_control* %2, %struct.st_pio_control** %7, align 8
  %20 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %20, i32 0, i32 2
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %24 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %23, i32 0, i32 1
  %25 = load %struct.regmap*, %struct.regmap** %24, align 8
  store %struct.regmap* %25, %struct.regmap** %9, align 8
  %26 = load %struct.st_pinctrl*, %struct.st_pinctrl** %5, align 8
  %27 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %26, i32 0, i32 0
  %28 = load %struct.st_pctl_data*, %struct.st_pctl_data** %27, align 8
  store %struct.st_pctl_data* %28, %struct.st_pctl_data** %10, align 8
  %29 = load %struct.st_pctl_data*, %struct.st_pctl_data** %10, align 8
  %30 = getelementptr inbounds %struct.st_pctl_data, %struct.st_pctl_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RT_P_CFGS_PER_BANK, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %31, %34
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.st_pio_control*, %struct.st_pio_control** %7, align 8
  %38 = getelementptr inbounds %struct.st_pio_control, %struct.st_pio_control* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.st_retime_packed* %39, %struct.st_retime_packed** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @RT_P_CFG0_CLK1NOTCLK0_FIELD(i32 %40)
  %42 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @RT_P_CFG0_DELAY_0_FIELD(i32 %43)
  %45 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @RT_P_CFG0_DELAY_1_FIELD(i32 %46)
  %48 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %15, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 4
  %51 = call i32 @RT_P_CFG1_INVERTCLK_FIELD(i32 %50)
  %52 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %16, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 4
  %55 = call i32 @RT_P_CFG1_RETIME_FIELD(i32 %54)
  %56 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %17, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 4
  %59 = call i32 @RT_P_CFG1_CLKNOTDATA_FIELD(i32 %58)
  %60 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %18, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 4
  %63 = call i32 @RT_P_CFG1_DOUBLE_EDGE_FIELD(i32 %62)
  %64 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %19, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load %struct.regmap*, %struct.regmap** %9, align 8
  %67 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @devm_regmap_field_alloc(%struct.device* %65, %struct.regmap* %66, i32 %68)
  %70 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %71 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = load %struct.regmap*, %struct.regmap** %9, align 8
  %74 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @devm_regmap_field_alloc(%struct.device* %72, %struct.regmap* %73, i32 %75)
  %77 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %78 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = load %struct.regmap*, %struct.regmap** %9, align 8
  %81 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @devm_regmap_field_alloc(%struct.device* %79, %struct.regmap* %80, i32 %82)
  %84 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %85 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = load %struct.regmap*, %struct.regmap** %9, align 8
  %88 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @devm_regmap_field_alloc(%struct.device* %86, %struct.regmap* %87, i32 %89)
  %91 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %92 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.device*, %struct.device** %8, align 8
  %94 = load %struct.regmap*, %struct.regmap** %9, align 8
  %95 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %17, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @devm_regmap_field_alloc(%struct.device* %93, %struct.regmap* %94, i32 %96)
  %98 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %99 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.device*, %struct.device** %8, align 8
  %101 = load %struct.regmap*, %struct.regmap** %9, align 8
  %102 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %18, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @devm_regmap_field_alloc(%struct.device* %100, %struct.regmap* %101, i32 %103)
  %105 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %106 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = load %struct.regmap*, %struct.regmap** %9, align 8
  %109 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %19, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @devm_regmap_field_alloc(%struct.device* %107, %struct.regmap* %108, i32 %110)
  %112 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %113 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %115 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %3
  %120 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %121 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %155, label %125

125:                                              ; preds = %119
  %126 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %127 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %155, label %131

131:                                              ; preds = %125
  %132 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %133 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @IS_ERR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %131
  %138 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %139 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @IS_ERR(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %155, label %143

143:                                              ; preds = %137
  %144 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %145 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @IS_ERR(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.st_retime_packed*, %struct.st_retime_packed** %12, align 8
  %151 = getelementptr inbounds %struct.st_retime_packed, %struct.st_retime_packed* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @IS_ERR(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %143, %137, %131, %125, %119, %3
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %159

158:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %155
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @RT_P_CFG0_CLK1NOTCLK0_FIELD(i32) #1

declare dso_local i32 @RT_P_CFG0_DELAY_0_FIELD(i32) #1

declare dso_local i32 @RT_P_CFG0_DELAY_1_FIELD(i32) #1

declare dso_local i32 @RT_P_CFG1_INVERTCLK_FIELD(i32) #1

declare dso_local i32 @RT_P_CFG1_RETIME_FIELD(i32) #1

declare dso_local i32 @RT_P_CFG1_CLKNOTDATA_FIELD(i32) #1

declare dso_local i32 @RT_P_CFG1_DOUBLE_EDGE_FIELD(i32) #1

declare dso_local i8* @devm_regmap_field_alloc(%struct.device*, %struct.regmap*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
