; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_rf_dac_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_rf_dac_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_backup_info = type { i32 }

@DACK_RF_8822C = common dso_local global i32 0, align 4
@DACK_PATH_8822C = common dso_local global i32 0, align 4
@DACK_REG_8822C = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[DACK] path A: ic=0x%x, qc=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[DACK] path B: ic=0x%x, qc=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[DACK] path A: i=0x%x, q=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[DACK] path B: i=0x%x, q=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_rf_dac_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_rf_dac_cal(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @DACK_RF_8822C, align 4
  %23 = load i32, i32* @DACK_PATH_8822C, align 4
  %24 = mul nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %3, align 8
  %27 = alloca %struct.rtw_backup_info, i64 %25, align 16
  store i64 %25, i64* %4, align 8
  %28 = load i32, i32* @DACK_REG_8822C, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca %struct.rtw_backup_info, i64 %29, align 16
  store i64 %29, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %32 = call i64 @rtw8822c_dac_cal_restore(%struct.rtw_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 1, i32* %21, align 4
  br label %143

35:                                               ; preds = %1
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %37 = call i32 @rtw8822c_dac_backup_reg(%struct.rtw_dev* %36, %struct.rtw_backup_info* %30, %struct.rtw_backup_info* %27)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %39 = call i32 @rtw8822c_dac_bb_setting(%struct.rtw_dev* %38)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* @RF_PATH_A, align 4
  %42 = call i32 @rtw8822c_dac_cal_adc(%struct.rtw_dev* %40, i32 %41, i32* %17, i32* %18)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %67, %35
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %48 = load i32, i32* @RF_PATH_A, align 4
  %49 = call i32 @rtw8822c_dac_cal_step1(%struct.rtw_dev* %47, i32 %48)
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %51 = load i32, i32* @RF_PATH_A, align 4
  %52 = call i32 @rtw8822c_dac_cal_step2(%struct.rtw_dev* %50, i32 %51, i32* %6, i32* %7)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %56 = load i32, i32* @RF_PATH_A, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @rtw8822c_dac_cal_step3(%struct.rtw_dev* %55, i32 %56, i32 %57, i32 %58, i32* %6, i32* %7, i32* %9, i32* %10)
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 5
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 5
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %70

66:                                               ; preds = %62, %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %43

70:                                               ; preds = %65, %43
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %72 = load i32, i32* @RF_PATH_A, align 4
  %73 = call i32 @rtw8822c_dac_cal_step4(%struct.rtw_dev* %71, i32 %72)
  %74 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %75 = load i32, i32* @RF_PATH_B, align 4
  %76 = call i32 @rtw8822c_dac_cal_adc(%struct.rtw_dev* %74, i32 %75, i32* %19, i32* %20)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %101, %70
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 10
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %82 = load i32, i32* @RF_PATH_B, align 4
  %83 = call i32 @rtw8822c_dac_cal_step1(%struct.rtw_dev* %81, i32 %82)
  %84 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %85 = load i32, i32* @RF_PATH_B, align 4
  %86 = call i32 @rtw8822c_dac_cal_step2(%struct.rtw_dev* %84, i32 %85, i32* %6, i32* %7)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %16, align 4
  %89 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %90 = load i32, i32* @RF_PATH_B, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @rtw8822c_dac_cal_step3(%struct.rtw_dev* %89, i32 %90, i32 %91, i32 %92, i32* %6, i32* %7, i32* %11, i32* %12)
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 5
  br i1 %95, label %96, label %100

96:                                               ; preds = %80
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 5
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %104

100:                                              ; preds = %96, %80
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %77

104:                                              ; preds = %99, %77
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %106 = load i32, i32* @RF_PATH_B, align 4
  %107 = call i32 @rtw8822c_dac_cal_step4(%struct.rtw_dev* %105, i32 %106)
  %108 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %109 = call i32 @rtw_write32(%struct.rtw_dev* %108, i32 6912, i32 8)
  %110 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %111 = call i32 @BIT(i32 30)
  %112 = call i32 @rtw_write32_mask(%struct.rtw_dev* %110, i32 16688, i32 %111, i32 1)
  %113 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %114 = call i32 @rtw_write8(%struct.rtw_dev* %113, i32 7116, i32 0)
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %116 = call i32 @rtw_write32(%struct.rtw_dev* %115, i32 6912, i32 10)
  %117 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %118 = call i32 @rtw_write8(%struct.rtw_dev* %117, i32 7116, i32 0)
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %120 = call i32 @rtw8822c_dac_restore_reg(%struct.rtw_dev* %119, %struct.rtw_backup_info* %30, %struct.rtw_backup_info* %27)
  %121 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %122 = call i32 @rtw8822c_dac_cal_backup(%struct.rtw_dev* %121)
  %123 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %124 = load i32, i32* @RTW_DBG_RFK, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @rtw_dbg(%struct.rtw_dev* %123, i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %129 = load i32, i32* @RTW_DBG_RFK, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @rtw_dbg(%struct.rtw_dev* %128, i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %134 = load i32, i32* @RTW_DBG_RFK, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @rtw_dbg(%struct.rtw_dev* %133, i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %139 = load i32, i32* @RTW_DBG_RFK, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @rtw_dbg(%struct.rtw_dev* %138, i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %141)
  store i32 0, i32* %21, align 4
  br label %143

143:                                              ; preds = %104, %34
  %144 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %21, align 4
  switch i32 %145, label %147 [
    i32 0, label %146
    i32 1, label %146
  ]

146:                                              ; preds = %143, %143
  ret void

147:                                              ; preds = %143
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rtw8822c_dac_cal_restore(%struct.rtw_dev*) #2

declare dso_local i32 @rtw8822c_dac_backup_reg(%struct.rtw_dev*, %struct.rtw_backup_info*, %struct.rtw_backup_info*) #2

declare dso_local i32 @rtw8822c_dac_bb_setting(%struct.rtw_dev*) #2

declare dso_local i32 @rtw8822c_dac_cal_adc(%struct.rtw_dev*, i32, i32*, i32*) #2

declare dso_local i32 @rtw8822c_dac_cal_step1(%struct.rtw_dev*, i32) #2

declare dso_local i32 @rtw8822c_dac_cal_step2(%struct.rtw_dev*, i32, i32*, i32*) #2

declare dso_local i32 @rtw8822c_dac_cal_step3(%struct.rtw_dev*, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @rtw8822c_dac_cal_step4(%struct.rtw_dev*, i32) #2

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw8822c_dac_restore_reg(%struct.rtw_dev*, %struct.rtw_backup_info*, %struct.rtw_backup_info*) #2

declare dso_local i32 @rtw8822c_dac_cal_backup(%struct.rtw_dev*) #2

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
