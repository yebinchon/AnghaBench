; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Power On Reset failed\0A\00", align 1
@F_TE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to set TE bit\0A\00", align 1
@F_TE_SHDN_EN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to set TE_SHDN_EN bit\0A\00", align 1
@F_BATD_EN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to set BATD_EN bit\0A\00", align 1
@F_TMR_EN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to disable Safety Timer\0A\00", align 1
@F_ICHRG = common dso_local global i32 0, align 4
@rt9455_ichrg_values = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to set ICHRG value\0A\00", align 1
@F_IEOC_PERCENTAGE = common dso_local global i32 0, align 4
@rt9455_ieoc_percentage_values = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to set IEOC Percentage value\0A\00", align 1
@F_VOREG = common dso_local global i32 0, align 4
@rt9455_voreg_values = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to set VOREG value\0A\00", align 1
@rt9455_vmreg_values = common dso_local global i32* null, align 8
@F_VMREG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to set VMREG value\0A\00", align 1
@F_MIVR = common dso_local global i32 0, align 4
@rt9455_mivr_values = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to set MIVR value\0A\00", align 1
@F_IAICR = common dso_local global i32 0, align 4
@rt9455_iaicr_values = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to set IAICR value\0A\00", align 1
@F_IAICR_INT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to set IAICR_INT bit\0A\00", align 1
@F_CHMIVRIM = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to mask CHMIVRI interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, i32, i32, i32, i32)* @rt9455_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_hw_init(%struct.rt9455_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt9455_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %16 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %12, align 8
  %19 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %20 = call i32 @rt9455_register_reset(%struct.rt9455_info* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.device*, %struct.device** %12, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %6, align 4
  br label %213

27:                                               ; preds = %5
  %28 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %29 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @F_TE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_field_write(i32 %33, i32 1)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %12, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %213

41:                                               ; preds = %27
  %42 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %43 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @F_TE_SHDN_EN, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regmap_field_write(i32 %47, i32 1)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %213

55:                                               ; preds = %41
  %56 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %57 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @F_BATD_EN, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regmap_field_write(i32 %61, i32 1)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %12, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %6, align 4
  br label %213

69:                                               ; preds = %55
  %70 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %71 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @F_TMR_EN, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_field_write(i32 %75, i32 0)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load %struct.device*, %struct.device** %12, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %213

83:                                               ; preds = %69
  %84 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %85 = load i32, i32* @F_ICHRG, align 4
  %86 = load i32*, i32** @rt9455_ichrg_values, align 8
  %87 = load i32*, i32** @rt9455_ichrg_values, align 8
  %88 = call i32 @ARRAY_SIZE(i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %84, i32 %85, i32* %86, i32 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.device*, %struct.device** %12, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %6, align 4
  br label %213

97:                                               ; preds = %83
  %98 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %99 = load i32, i32* @F_IEOC_PERCENTAGE, align 4
  %100 = load i32*, i32** @rt9455_ieoc_percentage_values, align 8
  %101 = load i32*, i32** @rt9455_ieoc_percentage_values, align 8
  %102 = call i32 @ARRAY_SIZE(i32* %101)
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %98, i32 %99, i32* %100, i32 %102, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.device*, %struct.device** %12, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %6, align 4
  br label %213

111:                                              ; preds = %97
  %112 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %113 = load i32, i32* @F_VOREG, align 4
  %114 = load i32*, i32** @rt9455_voreg_values, align 8
  %115 = load i32*, i32** @rt9455_voreg_values, align 8
  %116 = call i32 @ARRAY_SIZE(i32* %115)
  %117 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %118 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %112, i32 %113, i32* %114, i32 %116, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load %struct.device*, %struct.device** %12, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %6, align 4
  br label %213

127:                                              ; preds = %111
  %128 = load i32*, i32** @rt9455_vmreg_values, align 8
  %129 = call i32 @ARRAY_SIZE(i32* %128)
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  %131 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %132 = load i32, i32* @F_VMREG, align 4
  %133 = load i32*, i32** @rt9455_vmreg_values, align 8
  %134 = load i32*, i32** @rt9455_vmreg_values, align 8
  %135 = call i32 @ARRAY_SIZE(i32* %134)
  %136 = load i32*, i32** @rt9455_vmreg_values, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %131, i32 %132, i32* %133, i32 %135, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %127
  %145 = load %struct.device*, %struct.device** %12, align 8
  %146 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %6, align 4
  br label %213

148:                                              ; preds = %127
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 4500000, i32* %10, align 4
  br label %152

152:                                              ; preds = %151, %148
  %153 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %154 = load i32, i32* @F_MIVR, align 4
  %155 = load i32*, i32** @rt9455_mivr_values, align 8
  %156 = load i32*, i32** @rt9455_mivr_values, align 8
  %157 = call i32 @ARRAY_SIZE(i32* %156)
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %153, i32 %154, i32* %155, i32 %157, i32 %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load %struct.device*, %struct.device** %12, align 8
  %164 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %6, align 4
  br label %213

166:                                              ; preds = %152
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 500000, i32* %11, align 4
  br label %170

170:                                              ; preds = %169, %166
  %171 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %172 = load i32, i32* @F_IAICR, align 4
  %173 = load i32*, i32** @rt9455_iaicr_values, align 8
  %174 = load i32*, i32** @rt9455_iaicr_values, align 8
  %175 = call i32 @ARRAY_SIZE(i32* %174)
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @rt9455_set_field_val(%struct.rt9455_info* %171, i32 %172, i32* %173, i32 %175, i32 %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = load %struct.device*, %struct.device** %12, align 8
  %182 = call i32 @dev_err(%struct.device* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %6, align 4
  br label %213

184:                                              ; preds = %170
  %185 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %186 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @F_IAICR_INT, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @regmap_field_write(i32 %190, i32 1)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %184
  %195 = load %struct.device*, %struct.device** %12, align 8
  %196 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %6, align 4
  br label %213

198:                                              ; preds = %184
  %199 = load %struct.rt9455_info*, %struct.rt9455_info** %7, align 8
  %200 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @F_CHMIVRIM, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @regmap_field_write(i32 %204, i32 1)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load %struct.device*, %struct.device** %12, align 8
  %210 = call i32 @dev_err(%struct.device* %209, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %211 = load i32, i32* %14, align 4
  store i32 %211, i32* %6, align 4
  br label %213

212:                                              ; preds = %198
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %212, %208, %194, %180, %162, %144, %123, %107, %93, %79, %65, %51, %37, %23
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

declare dso_local i32 @rt9455_register_reset(%struct.rt9455_info*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @rt9455_set_field_val(%struct.rt9455_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
