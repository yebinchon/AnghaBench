; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i32* }

@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[DACK] ADCK path(%d)\0A\00", align 1
@RFREG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"[DACK] ADCK count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[DACK] before: i=0x%x, q=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"[DACK] ADCK 0x%08x=0x08%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"[DACK] after:  i=0x%08x, q=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32*, i32*)* @rtw8822c_dac_cal_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_adc(%struct.rtw_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rtw_dm_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  store %struct.rtw_dm_info* %17, %struct.rtw_dm_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %19 = load i32, i32* @RTW_DBG_RFK, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.rtw_dev*, i32, i8*, i32, ...) @rtw_dbg(%struct.rtw_dev* %18, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rtw8822c_get_path_write_addr(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %27 [
    i32 129, label %25
    i32 128, label %26
  ]

25:                                               ; preds = %4
  store i32 655360, i32* %14, align 4
  br label %29

26:                                               ; preds = %4
  store i32 524288, i32* %14, align 4
  br label %29

27:                                               ; preds = %4
  %28 = call i32 @WARN_ON(i32 1)
  br label %174

29:                                               ; preds = %26, %25
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 48
  %33 = call i32 @BIT(i32 30)
  %34 = call i32 @rtw_write32_mask(%struct.rtw_dev* %30, i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 48
  %41 = call i32 @rtw_write32(%struct.rtw_dev* %38, i32 %40, i32 819691585)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 96
  %46 = call i32 @rtw_write32(%struct.rtw_dev* %43, i32 %45, i32 -268169232)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 12
  %50 = call i32 @rtw_write32(%struct.rtw_dev* %47, i32 %49, i32 -537918944)
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 16
  %54 = call i32 @rtw_write32(%struct.rtw_dev* %51, i32 %53, i32 48040132)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 12
  %58 = call i32 @rtw_write32(%struct.rtw_dev* %55, i32 %57, i32 268436064)
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %60 = load i32, i32* @RFREG_MASK, align 4
  %61 = call i32 @rtw_write_rf(%struct.rtw_dev* %59, i32 129, i32 0, i32 %60, i32 65536)
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %63 = load i32, i32* @RFREG_MASK, align 4
  %64 = call i32 @rtw_write_rf(%struct.rtw_dev* %62, i32 128, i32 0, i32 %63, i32 65536)
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %156, %42
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 10
  br i1 %67, label %68, label %159

68:                                               ; preds = %65
  %69 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %70 = load i32, i32* @RTW_DBG_RFK, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 (%struct.rtw_dev*, i32, i8*, i32, ...) @rtw_dbg(%struct.rtw_dev* %69, i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 32771
  %76 = call i32 @rtw_write32(%struct.rtw_dev* %73, i32 7228, i32 %75)
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %78 = call i32 @rtw_write32(%struct.rtw_dev* %77, i32 7204, i32 65538)
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %80 = call i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev* %79, i32* %10, i32* %11)
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %82 = load i32, i32* @RTW_DBG_RFK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (%struct.rtw_dev*, i32, i8*, i32, ...) @rtw_dbg(%struct.rtw_dev* %81, i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %68
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 1024, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %68
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 1024, %97
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 1023
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, 1023
  %106 = shl i32 %105, 10
  %107 = or i32 %103, %106
  store i32 %107, i32* %12, align 4
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 104
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @rtw_write32(%struct.rtw_dev* %108, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %9, align 8
  %115 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %121 = load i32, i32* @RTW_DBG_RFK, align 4
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 104
  %124 = load i32, i32* %12, align 4
  %125 = call i32 (%struct.rtw_dev*, i32, i8*, i32, ...) @rtw_dbg(%struct.rtw_dev* %120, i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 33027
  %129 = call i32 @rtw_write32(%struct.rtw_dev* %126, i32 7228, i32 %128)
  %130 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %131 = call i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev* %130, i32* %10, i32* %11)
  %132 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %133 = load i32, i32* @RTW_DBG_RFK, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (%struct.rtw_dev*, i32, i8*, i32, ...) @rtw_dbg(%struct.rtw_dev* %132, i32 %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = icmp sge i32 %137, 512
  br i1 %138, label %139, label %142

139:                                              ; preds = %101
  %140 = load i32, i32* %10, align 4
  %141 = sub nsw i32 1024, %140
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %139, %101
  %143 = load i32, i32* %11, align 4
  %144 = icmp sge i32 %143, 512
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 1024, %146
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 5
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 5
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %159

155:                                              ; preds = %151, %148
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %65

159:                                              ; preds = %154, %65
  %160 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %161 = call i32 @rtw_write32(%struct.rtw_dev* %160, i32 7228, i32 3)
  %162 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 12
  %165 = call i32 @rtw_write32(%struct.rtw_dev* %162, i32 %164, i32 268436064)
  %166 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 16
  %169 = call i32 @rtw_write32(%struct.rtw_dev* %166, i32 %168, i32 47515844)
  %170 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @BIT(i32 13)
  %173 = call i32 @rtw_write_rf(%struct.rtw_dev* %170, i32 %171, i32 143, i32 %172, i32 1)
  br label %174

174:                                              ; preds = %159, %27
  ret void
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, ...) #1

declare dso_local i32 @rtw8822c_get_path_write_addr(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
