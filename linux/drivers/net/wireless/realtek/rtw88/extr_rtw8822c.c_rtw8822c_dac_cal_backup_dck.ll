; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup_dck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_backup_dck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i8**** }

@REG_DCKA_I_0 = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i64 0, align 8
@REG_DCKA_I_1 = common dso_local global i32 0, align 4
@REG_DCKA_Q_0 = common dso_local global i32 0, align 4
@REG_DCKA_Q_1 = common dso_local global i32 0, align 4
@REG_DCKB_I_0 = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i64 0, align 8
@REG_DCKB_I_1 = common dso_local global i32 0, align 4
@REG_DCKB_Q_0 = common dso_local global i32 0, align 4
@REG_DCKB_Q_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dac_cal_backup_dck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_backup_dck(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dm_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 0
  store %struct.rtw_dm_info* %6, %struct.rtw_dm_info** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = load i32, i32* @REG_DCKA_I_0, align 4
  %9 = call i64 @rtw_read32_mask(%struct.rtw_dev* %7, i32 %8, i32 -268435456)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %12, i32 0, i32 0
  %14 = load i8****, i8***** %13, align 8
  %15 = load i64, i64* @RF_PATH_A, align 8
  %16 = getelementptr inbounds i8***, i8**** %14, i64 %15
  %17 = load i8***, i8**** %16, align 8
  %18 = getelementptr inbounds i8**, i8*** %17, i64 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %11, i8** %20, align 8
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_DCKA_I_1, align 4
  %23 = call i64 @rtw_read32_mask(%struct.rtw_dev* %21, i32 %22, i32 15)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %27 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %26, i32 0, i32 0
  %28 = load i8****, i8***** %27, align 8
  %29 = load i64, i64* @RF_PATH_A, align 8
  %30 = getelementptr inbounds i8***, i8**** %28, i64 %29
  %31 = load i8***, i8**** %30, align 8
  %32 = getelementptr inbounds i8**, i8*** %31, i64 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* %25, i8** %34, align 8
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %36 = load i32, i32* @REG_DCKA_Q_0, align 4
  %37 = call i64 @rtw_read32_mask(%struct.rtw_dev* %35, i32 %36, i32 -268435456)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %41 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %40, i32 0, i32 0
  %42 = load i8****, i8***** %41, align 8
  %43 = load i64, i64* @RF_PATH_A, align 8
  %44 = getelementptr inbounds i8***, i8**** %42, i64 %43
  %45 = load i8***, i8**** %44, align 8
  %46 = getelementptr inbounds i8**, i8*** %45, i64 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %39, i8** %48, align 8
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %50 = load i32, i32* @REG_DCKA_Q_1, align 4
  %51 = call i64 @rtw_read32_mask(%struct.rtw_dev* %49, i32 %50, i32 15)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %55 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %54, i32 0, i32 0
  %56 = load i8****, i8***** %55, align 8
  %57 = load i64, i64* @RF_PATH_A, align 8
  %58 = getelementptr inbounds i8***, i8**** %56, i64 %57
  %59 = load i8***, i8**** %58, align 8
  %60 = getelementptr inbounds i8**, i8*** %59, i64 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %53, i8** %62, align 8
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = load i32, i32* @REG_DCKB_I_0, align 4
  %65 = call i64 @rtw_read32_mask(%struct.rtw_dev* %63, i32 %64, i32 -268435456)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %4, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %69 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %68, i32 0, i32 0
  %70 = load i8****, i8***** %69, align 8
  %71 = load i64, i64* @RF_PATH_B, align 8
  %72 = getelementptr inbounds i8***, i8**** %70, i64 %71
  %73 = load i8***, i8**** %72, align 8
  %74 = getelementptr inbounds i8**, i8*** %73, i64 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  store i8* %67, i8** %76, align 8
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %78 = load i32, i32* @REG_DCKB_I_1, align 4
  %79 = call i64 @rtw_read32_mask(%struct.rtw_dev* %77, i32 %78, i32 15)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %83 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %82, i32 0, i32 0
  %84 = load i8****, i8***** %83, align 8
  %85 = load i64, i64* @RF_PATH_B, align 8
  %86 = getelementptr inbounds i8***, i8**** %84, i64 %85
  %87 = load i8***, i8**** %86, align 8
  %88 = getelementptr inbounds i8**, i8*** %87, i64 1
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  store i8* %81, i8** %90, align 8
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %92 = load i32, i32* @REG_DCKB_Q_0, align 4
  %93 = call i64 @rtw_read32_mask(%struct.rtw_dev* %91, i32 %92, i32 -268435456)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %4, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %97 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %96, i32 0, i32 0
  %98 = load i8****, i8***** %97, align 8
  %99 = load i64, i64* @RF_PATH_B, align 8
  %100 = getelementptr inbounds i8***, i8**** %98, i64 %99
  %101 = load i8***, i8**** %100, align 8
  %102 = getelementptr inbounds i8**, i8*** %101, i64 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  store i8* %95, i8** %104, align 8
  %105 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %106 = load i32, i32* @REG_DCKB_Q_1, align 4
  %107 = call i64 @rtw_read32_mask(%struct.rtw_dev* %105, i32 %106, i32 15)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %4, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %3, align 8
  %111 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %110, i32 0, i32 0
  %112 = load i8****, i8***** %111, align 8
  %113 = load i64, i64* @RF_PATH_B, align 8
  %114 = getelementptr inbounds i8***, i8**** %112, i64 %113
  %115 = load i8***, i8**** %114, align 8
  %116 = getelementptr inbounds i8**, i8*** %115, i64 1
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* %109, i8** %118, align 8
  ret void
}

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
