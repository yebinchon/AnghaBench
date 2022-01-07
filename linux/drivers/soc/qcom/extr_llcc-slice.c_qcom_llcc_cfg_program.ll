; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_qcom_llcc_cfg_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_qcom_llcc_cfg_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.llcc_slice_config* }
%struct.llcc_slice_config = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.platform_device = type { i32 }
%struct.llcc_slice_desc = type { i32 }

@drv_data = common dso_local global %struct.TYPE_2__* null, align 8
@ATTR1_PROBE_TARGET_WAYS_SHIFT = common dso_local global i32 0, align 4
@ATTR1_FIXED_SIZE_SHIFT = common dso_local global i32 0, align 4
@ATTR1_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@CACHE_LINE_SIZE_SHIFT = common dso_local global i32 0, align 4
@ATTR1_MAX_CAP_SHIFT = common dso_local global i32 0, align 4
@ATTR0_RES_WAYS_MASK = common dso_local global i32 0, align 4
@ATTR0_BONUS_WAYS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_llcc_cfg_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_llcc_cfg_program(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.llcc_slice_config*, align 8
  %13 = alloca %struct.llcc_slice_desc, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %18, align 8
  store %struct.llcc_slice_config* %19, %struct.llcc_slice_config** %12, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %152, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %155

24:                                               ; preds = %20
  %25 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %25, i64 %27
  %29 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @LLCC_TRP_ATTR1_CFGn(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %32, i64 %34
  %36 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @LLCC_TRP_ATTR0_CFGn(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %39, i64 %41
  %43 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %45, i64 %47
  %49 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ATTR1_PROBE_TARGET_WAYS_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %55, i64 %57
  %59 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ATTR1_FIXED_SIZE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %65, i64 %67
  %69 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATTR1_PRIORITY_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %75, i64 %77
  %79 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @MAX_CAP_TO_BYTES(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @CACHE_LINE_SIZE_SHIFT, align 4
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @ATTR1_MAX_CAP_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %95, i64 %97
  %99 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ATTR0_RES_WAYS_MASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %8, align 4
  %103 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %103, i64 %105
  %107 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ATTR0_BONUS_WAYS_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @regmap_write(i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %24
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %2, align 4
  br label %157

123:                                              ; preds = %24
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drv_data, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @regmap_write(i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %2, align 4
  br label %157

134:                                              ; preds = %123
  %135 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %135, i64 %137
  %139 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %12, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %143, i64 %145
  %147 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %13, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = call i32 @llcc_slice_activate(%struct.llcc_slice_desc* %13)
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %142, %134
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %20

155:                                              ; preds = %20
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %132, %121
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @LLCC_TRP_ATTR1_CFGn(i32) #1

declare dso_local i32 @LLCC_TRP_ATTR0_CFGn(i32) #1

declare dso_local i32 @MAX_CAP_TO_BYTES(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @llcc_slice_activate(%struct.llcc_slice_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
