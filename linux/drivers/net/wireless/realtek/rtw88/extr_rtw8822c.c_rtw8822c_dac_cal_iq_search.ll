; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_iq_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_iq_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@DACK_SN_8822C = common dso_local global i32 0, align 4
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[DACK] i: min=0x%08x, max=0x%08x, delta=0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"[DACK] q: min=0x%08x, max=0x%08x, delta=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32*, i32*, i32*, i32*)* @rtw8822c_dac_cal_iq_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_iq_search(%struct.rtw_dev* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %160, %5
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %52, %20
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @DACK_SN_8822C, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rtw8822c_rf_minmax_cmp(%struct.rtw_dev* %38, i32 %43, i32* %13, i32* %11)
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rtw8822c_rf_minmax_cmp(%struct.rtw_dev* %45, i32 %50, i32* %14, i32* %12)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 512
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 512
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %15, align 4
  br label %81

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 512
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp sge i32 %69, 512
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %15, align 4
  br label %80

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 1024, %77
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %75, %71
  br label %81

81:                                               ; preds = %80, %61
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 512
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 512
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %16, align 4
  br label %107

91:                                               ; preds = %84, %81
  %92 = load i32, i32* %12, align 4
  %93 = icmp sge i32 %92, 512
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* %14, align 4
  %96 = icmp sge i32 %95, 512
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %16, align 4
  br label %106

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 1024, %103
  %105 = add nsw i32 %102, %104
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %101, %97
  br label %107

107:                                              ; preds = %106, %87
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %109 = load i32, i32* @RTW_DBG_RFK, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @rtw_dbg(%struct.rtw_dev* %108, i32 %109, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %115 = load i32, i32* @RTW_DBG_RFK, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @rtw_dbg(%struct.rtw_dev* %114, i32 %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %117, i32 %118)
  %120 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @rtw8822c_dac_iq_sort(%struct.rtw_dev* %120, i32* %121, i32* %122)
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %124, 5
  br i1 %125, label %129, label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %16, align 4
  %128 = icmp sgt i32 %127, 5
  br i1 %128, label %129, label %158

129:                                              ; preds = %126, %107
  %130 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %131 = call i32 @rtw_read32_mask(%struct.rtw_dev* %130, i32 11708, i32 4194303)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = and i32 %132, 4190208
  %134 = ashr i32 %133, 12
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %17, align 4
  %138 = and i32 %137, 1023
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %142 = call i32 @rtw_read32_mask(%struct.rtw_dev* %141, i32 11708, i32 4194303)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = and i32 %143, 4190208
  %145 = ashr i32 %144, 12
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* @DACK_SN_8822C, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* %17, align 4
  %152 = and i32 %151, 1023
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @DACK_SN_8822C, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %152, i32* %157, align 4
  br label %159

158:                                              ; preds = %126
  br label %164

159:                                              ; preds = %129
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  %163 = icmp slt i32 %161, 100
  br i1 %163, label %20, label %164

164:                                              ; preds = %160, %158
  %165 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @rtw8822c_dac_iq_offset(%struct.rtw_dev* %165, i32* %166, i32* %167)
  %169 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @rtw8822c_dac_iq_offset(%struct.rtw_dev* %169, i32* %170, i32* %171)
  ret void
}

declare dso_local i32 @rtw8822c_rf_minmax_cmp(%struct.rtw_dev*, i32, i32*, i32*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_dac_iq_sort(%struct.rtw_dev*, i32*, i32*) #1

declare dso_local i32 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_dac_iq_offset(%struct.rtw_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
