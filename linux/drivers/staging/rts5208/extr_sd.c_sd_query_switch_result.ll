; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_query_switch_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_query_switch_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_FUNC_GROUP_1 = common dso_local global i64 0, align 8
@FUNCTION_GROUP1_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@FUNCTION_GROUP1_QUERY_SWITCH_OFFSET = common dso_local global i32 0, align 4
@FUNCTION_GROUP1_CHECK_BUSY_OFFSET = common dso_local global i32 0, align 4
@HS_SUPPORT_MASK = common dso_local global i64 0, align 8
@HS_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@HS_SWITCH_BUSY = common dso_local global i64 0, align 8
@SDR50_SUPPORT_MASK = common dso_local global i64 0, align 8
@SDR50_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@SDR50_SWITCH_BUSY = common dso_local global i64 0, align 8
@SDR104_SUPPORT_MASK = common dso_local global i64 0, align 8
@SDR104_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@SDR104_SWITCH_BUSY = common dso_local global i64 0, align 8
@DDR50_SUPPORT_MASK = common dso_local global i64 0, align 8
@DDR50_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@DDR50_SWITCH_BUSY = common dso_local global i64 0, align 8
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_FUNC_GROUP_3 = common dso_local global i64 0, align 8
@FUNCTION_GROUP3_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@FUNCTION_GROUP3_QUERY_SWITCH_OFFSET = common dso_local global i32 0, align 4
@FUNCTION_GROUP3_CHECK_BUSY_OFFSET = common dso_local global i32 0, align 4
@DRIVING_TYPE_A_MASK = common dso_local global i64 0, align 8
@TYPE_A_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@TYPE_A_SWITCH_BUSY = common dso_local global i64 0, align 8
@DRIVING_TYPE_C_MASK = common dso_local global i64 0, align 8
@TYPE_C_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@TYPE_C_SWITCH_BUSY = common dso_local global i64 0, align 8
@DRIVING_TYPE_D_MASK = common dso_local global i64 0, align 8
@TYPE_D_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@TYPE_D_SWITCH_BUSY = common dso_local global i64 0, align 8
@SD_FUNC_GROUP_4 = common dso_local global i64 0, align 8
@FUNCTION_GROUP4_SUPPORT_OFFSET = common dso_local global i32 0, align 4
@FUNCTION_GROUP4_QUERY_SWITCH_OFFSET = common dso_local global i32 0, align 4
@FUNCTION_GROUP4_CHECK_BUSY_OFFSET = common dso_local global i32 0, align 4
@CURRENT_LIMIT_400_MASK = common dso_local global i64 0, align 8
@CURRENT_LIMIT_400_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@CURRENT_LIMIT_400_SWITCH_BUSY = common dso_local global i64 0, align 8
@CURRENT_LIMIT_600_MASK = common dso_local global i64 0, align 8
@CURRENT_LIMIT_600_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@CURRENT_LIMIT_600_SWITCH_BUSY = common dso_local global i64 0, align 8
@CURRENT_LIMIT_800_MASK = common dso_local global i64 0, align 8
@CURRENT_LIMIT_800_QUERY_SWITCH_OK = common dso_local global i64 0, align 8
@CURRENT_LIMIT_800_SWITCH_BUSY = common dso_local global i64 0, align 8
@DATA_STRUCTURE_VER_OFFSET = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64, i64, i64*, i32)* @sd_query_switch_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_query_switch_result(%struct.rtsx_chip* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SD_FUNC_GROUP_1, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %5
  %22 = load i32, i32* @FUNCTION_GROUP1_SUPPORT_OFFSET, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @FUNCTION_GROUP1_QUERY_SWITCH_OFFSET, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @FUNCTION_GROUP1_CHECK_BUSY_OFFSET, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i64, i64* %9, align 8
  switch i64 %25, label %42 [
    i64 130, label %26
    i64 128, label %30
    i64 129, label %34
    i64 134, label %38
  ]

26:                                               ; preds = %21
  %27 = load i64, i64* @HS_SUPPORT_MASK, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* @HS_QUERY_SWITCH_OK, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* @HS_SWITCH_BUSY, align 8
  store i64 %29, i64* %14, align 8
  br label %44

30:                                               ; preds = %21
  %31 = load i64, i64* @SDR50_SUPPORT_MASK, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* @SDR50_QUERY_SWITCH_OK, align 8
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* @SDR50_SWITCH_BUSY, align 8
  store i64 %33, i64* %14, align 8
  br label %44

34:                                               ; preds = %21
  %35 = load i64, i64* @SDR104_SUPPORT_MASK, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* @SDR104_QUERY_SWITCH_OK, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* @SDR104_SWITCH_BUSY, align 8
  store i64 %37, i64* %14, align 8
  br label %44

38:                                               ; preds = %21
  %39 = load i64, i64* @DDR50_SUPPORT_MASK, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* @DDR50_QUERY_SWITCH_OK, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* @DDR50_SWITCH_BUSY, align 8
  store i64 %41, i64* %14, align 8
  br label %44

42:                                               ; preds = %21
  %43 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %43, i32* %6, align 4
  br label %142

44:                                               ; preds = %38, %34, %30, %26
  br label %97

45:                                               ; preds = %5
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @SD_FUNC_GROUP_3, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i32, i32* @FUNCTION_GROUP3_SUPPORT_OFFSET, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* @FUNCTION_GROUP3_QUERY_SWITCH_OFFSET, align 4
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* @FUNCTION_GROUP3_CHECK_BUSY_OFFSET, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i64, i64* %9, align 8
  switch i64 %53, label %66 [
    i64 133, label %54
    i64 132, label %58
    i64 131, label %62
  ]

54:                                               ; preds = %49
  %55 = load i64, i64* @DRIVING_TYPE_A_MASK, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* @TYPE_A_QUERY_SWITCH_OK, align 8
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* @TYPE_A_SWITCH_BUSY, align 8
  store i64 %57, i64* %14, align 8
  br label %68

58:                                               ; preds = %49
  %59 = load i64, i64* @DRIVING_TYPE_C_MASK, align 8
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* @TYPE_C_QUERY_SWITCH_OK, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* @TYPE_C_SWITCH_BUSY, align 8
  store i64 %61, i64* %14, align 8
  br label %68

62:                                               ; preds = %49
  %63 = load i64, i64* @DRIVING_TYPE_D_MASK, align 8
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* @TYPE_D_QUERY_SWITCH_OK, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* @TYPE_D_SWITCH_BUSY, align 8
  store i64 %65, i64* %14, align 8
  br label %68

66:                                               ; preds = %49
  %67 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %67, i32* %6, align 4
  br label %142

68:                                               ; preds = %62, %58, %54
  br label %96

69:                                               ; preds = %45
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @SD_FUNC_GROUP_4, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i32, i32* @FUNCTION_GROUP4_SUPPORT_OFFSET, align 4
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* @FUNCTION_GROUP4_QUERY_SWITCH_OFFSET, align 4
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* @FUNCTION_GROUP4_CHECK_BUSY_OFFSET, align 4
  store i32 %76, i32* %17, align 4
  %77 = load i64, i64* %9, align 8
  switch i64 %77, label %90 [
    i64 137, label %78
    i64 136, label %82
    i64 135, label %86
  ]

78:                                               ; preds = %73
  %79 = load i64, i64* @CURRENT_LIMIT_400_MASK, align 8
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* @CURRENT_LIMIT_400_QUERY_SWITCH_OK, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* @CURRENT_LIMIT_400_SWITCH_BUSY, align 8
  store i64 %81, i64* %14, align 8
  br label %92

82:                                               ; preds = %73
  %83 = load i64, i64* @CURRENT_LIMIT_600_MASK, align 8
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* @CURRENT_LIMIT_600_QUERY_SWITCH_OK, align 8
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* @CURRENT_LIMIT_600_SWITCH_BUSY, align 8
  store i64 %85, i64* %14, align 8
  br label %92

86:                                               ; preds = %73
  %87 = load i64, i64* @CURRENT_LIMIT_800_MASK, align 8
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* @CURRENT_LIMIT_800_QUERY_SWITCH_OK, align 8
  store i64 %88, i64* %13, align 8
  %89 = load i64, i64* @CURRENT_LIMIT_800_SWITCH_BUSY, align 8
  store i64 %89, i64* %14, align 8
  br label %92

90:                                               ; preds = %73
  %91 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %91, i32* %6, align 4
  br label %142

92:                                               ; preds = %86, %82, %78
  br label %95

93:                                               ; preds = %69
  %94 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %94, i32* %6, align 4
  br label %142

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96, %44
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @SD_FUNC_GROUP_1, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load i64*, i64** %10, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load i64*, i64** %10, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = and i64 %115, 15
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110, %101
  %120 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %120, i32* %6, align 4
  br label %142

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %97
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* @DATA_STRUCTURE_VER_OFFSET, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 1
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load i64*, i64** %10, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %14, align 8
  %135 = and i64 %133, %134
  %136 = load i64, i64* %14, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %139, i32* %6, align 4
  br label %142

140:                                              ; preds = %128, %122
  %141 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %138, %119, %93, %90, %66, %42
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
