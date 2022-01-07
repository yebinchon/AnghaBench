; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_sflash.c_ssb_sflash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_chipcommon_sflash.c_ssb_sflash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sflash_tbl_e = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.ssb_sflash* }
%struct.ssb_sflash = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.ssb_chipcommon = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ssb_sflash }

@SSB_CHIPCO_CAP_FLASHT = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASHCTL_ST_DP = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASHADDR = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASHCTL_ST_RES = common dso_local global i32 0, align 4
@SSB_CHIPCO_FLASHDATA = common dso_local global i32 0, align 4
@ssb_sflash_sst_tbl = common dso_local global %struct.ssb_sflash_tbl_e* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ssb_sflash_st_tbl = common dso_local global %struct.ssb_sflash_tbl_e* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"Unsupported ST serial flash (id: 0x%X, id2: 0x%X)\0A\00", align 1
@SSB_CHIPCO_FLASHCTL_AT_STATUS = common dso_local global i32 0, align 4
@ssb_sflash_at_tbl = common dso_local global %struct.ssb_sflash_tbl_e* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Unsupported Atmel serial flash (id: 0x%X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unsupported flash type\0A\00", align 1
@SSB_FLASH2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Found %s serial flash (size: %dKiB, blocksize: 0x%X, blocks: %d)\0A\00", align 1
@ssb_sflash_dev = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_sflash_init(%struct.ssb_chipcommon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_chipcommon*, align 8
  %4 = alloca %struct.ssb_sflash*, align 8
  %5 = alloca %struct.ssb_sflash_tbl_e*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_chipcommon* %0, %struct.ssb_chipcommon** %3, align 8
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.ssb_sflash* %14, %struct.ssb_sflash** %4, align 8
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %16 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SSB_CHIPCO_CAP_FLASHT, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %132 [
    i32 128, label %20
    i32 129, label %96
  ]

20:                                               ; preds = %1
  %21 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %22 = load i32, i32* @SSB_CHIPCO_FLASHCTL_ST_DP, align 4
  %23 = call i32 @ssb_sflash_cmd(%struct.ssb_chipcommon* %21, i32 %22)
  %24 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %25 = load i32, i32* @SSB_CHIPCO_FLASHADDR, align 4
  %26 = call i32 @chipco_write32(%struct.ssb_chipcommon* %24, i32 %25, i32 0)
  %27 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %28 = load i32, i32* @SSB_CHIPCO_FLASHCTL_ST_RES, align 4
  %29 = call i32 @ssb_sflash_cmd(%struct.ssb_chipcommon* %27, i32 %28)
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %31 = load i32, i32* @SSB_CHIPCO_FLASHDATA, align 4
  %32 = call i32 @chipco_read32(%struct.ssb_chipcommon* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %34 = load i32, i32* @SSB_CHIPCO_FLASHADDR, align 4
  %35 = call i32 @chipco_write32(%struct.ssb_chipcommon* %33, i32 %34, i32 1)
  %36 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %37 = load i32, i32* @SSB_CHIPCO_FLASHCTL_ST_RES, align 4
  %38 = call i32 @ssb_sflash_cmd(%struct.ssb_chipcommon* %36, i32 %37)
  %39 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %40 = load i32, i32* @SSB_CHIPCO_FLASHDATA, align 4
  %41 = call i32 @chipco_read32(%struct.ssb_chipcommon* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %65 [
    i32 191, label %43
    i32 19, label %62
  ]

43:                                               ; preds = %20
  %44 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** @ssb_sflash_sst_tbl, align 8
  store %struct.ssb_sflash_tbl_e* %44, %struct.ssb_sflash_tbl_e** %5, align 8
  br label %45

45:                                               ; preds = %58, %43
  %46 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %47 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %52 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %61

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %60 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %59, i32 1
  store %struct.ssb_sflash_tbl_e* %60, %struct.ssb_sflash_tbl_e** %5, align 8
  br label %45

61:                                               ; preds = %56, %45
  br label %84

62:                                               ; preds = %20
  %63 = load i32, i32* @ENOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %188

65:                                               ; preds = %20
  %66 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** @ssb_sflash_st_tbl, align 8
  store %struct.ssb_sflash_tbl_e* %66, %struct.ssb_sflash_tbl_e** %5, align 8
  br label %67

67:                                               ; preds = %80, %65
  %68 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %69 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %74 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %83

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %82 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %81, i32 1
  store %struct.ssb_sflash_tbl_e* %82, %struct.ssb_sflash_tbl_e** %5, align 8
  br label %67

83:                                               ; preds = %78, %67
  br label %84

84:                                               ; preds = %83, %61
  %85 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %86 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @ENOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %188

95:                                               ; preds = %84
  br label %136

96:                                               ; preds = %1
  %97 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %98 = load i32, i32* @SSB_CHIPCO_FLASHCTL_AT_STATUS, align 4
  %99 = call i32 @ssb_sflash_cmd(%struct.ssb_chipcommon* %97, i32 %98)
  %100 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %3, align 8
  %101 = load i32, i32* @SSB_CHIPCO_FLASHDATA, align 4
  %102 = call i32 @chipco_read32(%struct.ssb_chipcommon* %100, i32 %101)
  %103 = and i32 %102, 60
  store i32 %103, i32* %6, align 4
  %104 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** @ssb_sflash_at_tbl, align 8
  store %struct.ssb_sflash_tbl_e* %104, %struct.ssb_sflash_tbl_e** %5, align 8
  br label %105

105:                                              ; preds = %118, %96
  %106 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %107 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %112 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %121

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %120 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %119, i32 1
  store %struct.ssb_sflash_tbl_e* %120, %struct.ssb_sflash_tbl_e** %5, align 8
  br label %105

121:                                              ; preds = %116, %105
  %122 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %123 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @ENOTSUPP, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %188

131:                                              ; preds = %121
  br label %136

132:                                              ; preds = %1
  %133 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @ENOTSUPP, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %188

136:                                              ; preds = %131, %95
  %137 = load i32, i32* @SSB_FLASH2, align 4
  %138 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %139 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %141 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %144 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %146 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %149 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %151 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %154 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %158 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %160 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  %161 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %162 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %165 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sdiv i32 %166, 1024
  %168 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %169 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ssb_sflash_tbl_e*, %struct.ssb_sflash_tbl_e** %5, align 8
  %172 = getelementptr inbounds %struct.ssb_sflash_tbl_e, %struct.ssb_sflash_tbl_e* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %167, i32 %170, i32 %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ssb_sflash_dev, i32 0, i32 1), align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  %180 = getelementptr inbounds %struct.ssb_sflash, %struct.ssb_sflash* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %178, %182
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ssb_sflash_dev, i32 0, i32 1), align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  store i64 %183, i64* %186, align 8
  %187 = load %struct.ssb_sflash*, %struct.ssb_sflash** %4, align 8
  store %struct.ssb_sflash* %187, %struct.ssb_sflash** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ssb_sflash_dev, i32 0, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %136, %132, %126, %89, %62
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @ssb_sflash_cmd(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @chipco_write32(%struct.ssb_chipcommon*, i32, i32) #1

declare dso_local i32 @chipco_read32(%struct.ssb_chipcommon*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
