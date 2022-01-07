; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i64*** }

@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"failed to restore dack vectors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw8822c_dac_cal_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dac_cal_restore(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_dm_info*, align 8
  %5 = alloca [3 x i32], align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_dm_info* %7, %struct.rtw_dm_info** %4, align 8
  %8 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %9 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %8, i32 0, i32 0
  %10 = load i64***, i64**** %9, align 8
  %11 = load i64, i64* @RF_PATH_A, align 8
  %12 = getelementptr inbounds i64**, i64*** %10, i64 %11
  %13 = load i64**, i64*** %12, align 8
  %14 = getelementptr inbounds i64*, i64** %13, i64 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %1
  %20 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %20, i32 0, i32 0
  %22 = load i64***, i64**** %21, align 8
  %23 = load i64, i64* @RF_PATH_A, align 8
  %24 = getelementptr inbounds i64**, i64*** %22, i64 %23
  %25 = load i64**, i64*** %24, align 8
  %26 = getelementptr inbounds i64*, i64** %25, i64 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %19
  %32 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %33 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %32, i32 0, i32 0
  %34 = load i64***, i64**** %33, align 8
  %35 = load i64, i64* @RF_PATH_B, align 8
  %36 = getelementptr inbounds i64**, i64*** %34, i64 %35
  %37 = load i64**, i64*** %36, align 8
  %38 = getelementptr inbounds i64*, i64** %37, i64 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %31
  %44 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %4, align 8
  %45 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %44, i32 0, i32 0
  %46 = load i64***, i64**** %45, align 8
  %47 = load i64, i64* @RF_PATH_B, align 8
  %48 = getelementptr inbounds i64**, i64*** %46, i64 %47
  %49 = load i64**, i64*** %48, align 8
  %50 = getelementptr inbounds i64*, i64** %49, i64 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %122

56:                                               ; preds = %43, %31, %19, %1
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %58 = call i32 @rtw_read32(%struct.rtw_dev* %57, i32 6240)
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %61 = call i32 @rtw_read32(%struct.rtw_dev* %60, i32 16736)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %64 = call i32 @rtw_read32(%struct.rtw_dev* %63, i32 2484)
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %67 = call i32 @rtw8822c_dac_cal_restore_prepare(%struct.rtw_dev* %66)
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %69 = call i32 @check_hw_ready(%struct.rtw_dev* %68, i32 10248, i32 8388480, i32 65535)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %56
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = call i32 @check_hw_ready(%struct.rtw_dev* %72, i32 10292, i32 8388480, i32 65535)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %77 = call i32 @check_hw_ready(%struct.rtw_dev* %76, i32 17672, i32 8388480, i32 65535)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %81 = call i32 @check_hw_ready(%struct.rtw_dev* %80, i32 17716, i32 8388480, i32 65535)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %75, %71, %56
  store i32 0, i32* %2, align 4
  br label %122

84:                                               ; preds = %79
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %86 = call i32 @__rtw8822c_dac_cal_restore(%struct.rtw_dev* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %90 = call i32 @rtw_err(%struct.rtw_dev* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %122

91:                                               ; preds = %84
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = call i32 @BIT(i32 30)
  %94 = call i32 @rtw_write32_mask(%struct.rtw_dev* %92, i32 6192, i32 %93, i32 1)
  %95 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %96 = call i32 @BIT(i32 30)
  %97 = call i32 @rtw_write32_mask(%struct.rtw_dev* %95, i32 16688, i32 %96, i32 1)
  %98 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtw_write32(%struct.rtw_dev* %98, i32 6240, i32 %100)
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @rtw_write32(%struct.rtw_dev* %102, i32 16736, i32 %104)
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %107 = call i32 @BIT(i32 27)
  %108 = call i32 @rtw_write32_mask(%struct.rtw_dev* %106, i32 6320, i32 %107, i32 1)
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %110 = call i32 @BIT(i32 27)
  %111 = call i32 @rtw_write32_mask(%struct.rtw_dev* %109, i32 6348, i32 %110, i32 1)
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %113 = call i32 @BIT(i32 27)
  %114 = call i32 @rtw_write32_mask(%struct.rtw_dev* %112, i32 16816, i32 %113, i32 1)
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %116 = call i32 @BIT(i32 27)
  %117 = call i32 @rtw_write32_mask(%struct.rtw_dev* %115, i32 16844, i32 %116, i32 1)
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @rtw_write32(%struct.rtw_dev* %118, i32 2484, i32 %120)
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %91, %88, %83, %55
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw8822c_dac_cal_restore_prepare(%struct.rtw_dev*) #1

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @__rtw8822c_dac_cal_restore(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
