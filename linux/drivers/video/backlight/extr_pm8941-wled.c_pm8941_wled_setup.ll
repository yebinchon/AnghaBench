; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8941_wled = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@PM8941_WLED_REG_OVP = common dso_local global i64 0, align 8
@PM8941_WLED_REG_OVP_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_BOOST = common dso_local global i64 0, align 8
@PM8941_WLED_REG_BOOST_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_FREQ = common dso_local global i64 0, align 8
@PM8941_WLED_REG_FREQ_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_SINK_SHFT = common dso_local global i32 0, align 4
@PM8941_WLED_REG_SINK = common dso_local global i64 0, align 8
@PM8941_WLED_REG_SINK_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_OFFSET = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_MOD_EN_BASE = common dso_local global i64 0, align 8
@PM8941_WLED_REG_STR_MOD_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_MOD_EN = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_MOD_SRC_BASE = common dso_local global i64 0, align 8
@PM8941_WLED_REG_STR_MOD_SRC_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_MOD_SRC_EXT = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_SCALE_BASE = common dso_local global i64 0, align 8
@PM8941_WLED_REG_STR_SCALE_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_CABC_BASE = common dso_local global i64 0, align 8
@PM8941_WLED_REG_STR_CABC_MASK = common dso_local global i32 0, align 4
@PM8941_WLED_REG_STR_CABC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8941_wled*)* @pm8941_wled_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8941_wled_setup(%struct.pm8941_wled* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8941_wled*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pm8941_wled* %0, %struct.pm8941_wled** %3, align 8
  %8 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %9 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %12 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PM8941_WLED_REG_OVP, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @PM8941_WLED_REG_OVP_MASK, align 4
  %17 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %18 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regmap_update_bits(i32 %10, i64 %15, i32 %16, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %191

26:                                               ; preds = %1
  %27 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %28 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %31 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PM8941_WLED_REG_BOOST, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @PM8941_WLED_REG_BOOST_MASK, align 4
  %36 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %37 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_update_bits(i32 %29, i64 %34, i32 %35, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %191

45:                                               ; preds = %26
  %46 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %47 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %50 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PM8941_WLED_REG_FREQ, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @PM8941_WLED_REG_FREQ_MASK, align 4
  %55 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %56 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @regmap_update_bits(i32 %48, i64 %53, i32 %54, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %191

64:                                               ; preds = %45
  %65 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %66 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %64
  %71 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %72 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @PM8941_WLED_REG_SINK_SHFT, align 4
  %78 = shl i32 %76, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %80 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %83 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PM8941_WLED_REG_SINK, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* @PM8941_WLED_REG_SINK_MASK, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @regmap_update_bits(i32 %81, i64 %86, i32 %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %70
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %191

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94, %64
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %187, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %99 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %97, %101
  br i1 %102, label %103, label %190

103:                                              ; preds = %96
  %104 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %105 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @PM8941_WLED_REG_STR_OFFSET, align 4
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  store i64 %111, i64* %7, align 8
  %112 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %113 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @PM8941_WLED_REG_STR_MOD_EN_BASE, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i32, i32* @PM8941_WLED_REG_STR_MOD_MASK, align 4
  %119 = load i32, i32* @PM8941_WLED_REG_STR_MOD_EN, align 4
  %120 = call i32 @regmap_update_bits(i32 %114, i64 %117, i32 %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %103
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %191

125:                                              ; preds = %103
  %126 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %127 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %125
  %132 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %133 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @PM8941_WLED_REG_STR_MOD_SRC_BASE, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i32, i32* @PM8941_WLED_REG_STR_MOD_SRC_MASK, align 4
  %139 = load i32, i32* @PM8941_WLED_REG_STR_MOD_SRC_EXT, align 4
  %140 = call i32 @regmap_update_bits(i32 %134, i64 %137, i32 %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %131
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %191

145:                                              ; preds = %131
  br label %146

146:                                              ; preds = %145, %125
  %147 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %148 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @PM8941_WLED_REG_STR_SCALE_BASE, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i32, i32* @PM8941_WLED_REG_STR_SCALE_MASK, align 4
  %154 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %155 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @regmap_update_bits(i32 %149, i64 %152, i32 %153, i32 %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %146
  %162 = load i32, i32* %4, align 4
  store i32 %162, i32* %2, align 4
  br label %191

163:                                              ; preds = %146
  %164 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %165 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @PM8941_WLED_REG_STR_CABC_BASE, align 8
  %169 = add nsw i64 %167, %168
  %170 = load i32, i32* @PM8941_WLED_REG_STR_CABC_MASK, align 4
  %171 = load %struct.pm8941_wled*, %struct.pm8941_wled** %3, align 8
  %172 = getelementptr inbounds %struct.pm8941_wled, %struct.pm8941_wled* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %163
  %177 = load i32, i32* @PM8941_WLED_REG_STR_CABC_EN, align 4
  br label %179

178:                                              ; preds = %163
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ]
  %181 = call i32 @regmap_update_bits(i32 %166, i64 %169, i32 %170, i32 %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %2, align 4
  br label %191

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %96

190:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %184, %161, %143, %123, %92, %62, %43, %24
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
