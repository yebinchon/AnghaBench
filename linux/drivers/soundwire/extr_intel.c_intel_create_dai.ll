; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_create_dai.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_create_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_cdns = type { i32 }
%struct.snd_soc_dai_driver = type { i32*, i64, %struct.TYPE_4__, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SDW%d Pin%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTEL_PDI_BD = common dso_local global i32 0, align 4
@INTEL_PDI_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SDW%d Tx%d\00", align 1
@SNDRV_PCM_RATE_48000 = common dso_local global i8* null, align 8
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i8* null, align 8
@INTEL_PDI_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SDW%d Rx%d\00", align 1
@SDW_DAI_ID_RANGE_START = common dso_local global i64 0, align 8
@intel_pcm_dai_ops = common dso_local global i32 0, align 4
@intel_pdm_dai_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_cdns*, %struct.snd_soc_dai_driver*, i32, i32, i32, i32, i32)* @intel_create_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_create_dai(%struct.sdw_cdns* %0, %struct.snd_soc_dai_driver* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdw_cdns*, align 8
  %10 = alloca %struct.snd_soc_dai_driver*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sdw_cdns* %0, %struct.sdw_cdns** %9, align 8
  store %struct.snd_soc_dai_driver* %1, %struct.snd_soc_dai_driver** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %221

20:                                               ; preds = %7
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %16, align 4
  br label %22

22:                                               ; preds = %217, %20
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %220

28:                                               ; preds = %22
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.sdw_cdns*, %struct.sdw_cdns** %9, align 8
  %31 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i8* @kasprintf(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %35, i64 %37
  %39 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %38, i32 0, i32 4
  store i8* %34, i8** %39, align 8
  %40 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %40, i64 %42
  %44 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %221

50:                                               ; preds = %28
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @INTEL_PDI_BD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @INTEL_PDI_OUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load %struct.sdw_cdns*, %struct.sdw_cdns** %9, align 8
  %61 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i8* @kasprintf(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %65, i64 %67
  %69 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %64, i8** %70, align 8
  %71 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %71, i64 %73
  %75 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %58
  %80 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %80, i64 %82
  %84 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @kfree(i8* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %221

89:                                               ; preds = %58
  %90 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %90, i64 %92
  %94 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %97, i64 %99
  %101 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %96, i32* %102, align 4
  %103 = load i8*, i8** @SNDRV_PCM_RATE_48000, align 8
  %104 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %104, i64 %106
  %108 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  store i8* %103, i8** %109, align 8
  %110 = load i8*, i8** @SNDRV_PCM_FMTBIT_S16_LE, align 8
  %111 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %111, i64 %113
  %115 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i8* %110, i8** %116, align 8
  br label %117

117:                                              ; preds = %89, %54
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @INTEL_PDI_BD, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @INTEL_PDI_IN, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %192

125:                                              ; preds = %121, %117
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = load %struct.sdw_cdns*, %struct.sdw_cdns** %9, align 8
  %128 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %16, align 4
  %131 = call i8* @kasprintf(i32 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %132, i64 %134
  %136 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  store i8* %131, i8** %137, align 8
  %138 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %138, i64 %140
  %142 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %164, label %146

146:                                              ; preds = %125
  %147 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %147, i64 %149
  %151 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %154, i64 %156
  %158 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @kfree(i8* %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %8, align 4
  br label %221

164:                                              ; preds = %125
  %165 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %165, i64 %167
  %169 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %172, i64 %174
  %176 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 %171, i32* %177, align 4
  %178 = load i8*, i8** @SNDRV_PCM_RATE_48000, align 8
  %179 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %179, i64 %181
  %183 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  store i8* %178, i8** %184, align 8
  %185 = load i8*, i8** @SNDRV_PCM_FMTBIT_S16_LE, align 8
  %186 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %186, i64 %188
  %190 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i8* %185, i8** %191, align 8
  br label %192

192:                                              ; preds = %164, %121
  %193 = load i64, i64* @SDW_DAI_ID_RANGE_START, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %197, i64 %199
  %201 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %200, i32 0, i32 1
  store i64 %196, i64* %201, align 8
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %192
  %205 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %205, i64 %207
  %209 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %208, i32 0, i32 0
  store i32* @intel_pcm_dai_ops, i32** %209, align 8
  br label %216

210:                                              ; preds = %192
  %211 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %10, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %211, i64 %213
  %215 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %214, i32 0, i32 0
  store i32* @intel_pdm_dai_ops, i32** %215, align 8
  br label %216

216:                                              ; preds = %210, %204
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %16, align 4
  br label %22

220:                                              ; preds = %22
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %220, %146, %79, %47, %19
  %222 = load i32, i32* %8, align 4
  ret i32 %222
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
