; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_coex_cfg_gnt_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_coex_cfg_gnt_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_efuse = type { i64 }
%struct.rtw_coex = type { i64, i64, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i64, i64, i32 }

@RF_PATH_B = common dso_local global i32 0, align 4
@COEX_WLINK_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_coex_cfg_gnt_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_coex_cfg_gnt_fix(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 1
  store %struct.rtw_coex* %8, %struct.rtw_coex** %3, align 8
  %9 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %9, i32 0, i32 2
  store %struct.rtw_coex_stat* %10, %struct.rtw_coex_stat** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_efuse* %12, %struct.rtw_efuse** %5, align 8
  %13 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %14 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %114

21:                                               ; preds = %1
  %22 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %23 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %26 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %28 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %33 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31, %21
  %37 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %38 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  store i32 262177, i32* %6, align 4
  br label %43

42:                                               ; preds = %36
  store i32 262144, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %45 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = call i32 @BIT(i32 13)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %54 = load i32, i32* @RF_PATH_B, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @rtw_write_rf(%struct.rtw_dev* %53, i32 %54, i32 1, i32 1048575, i32 %55)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %58 = call i32 @BIT(i32 6)
  %59 = call i32 @rtw_write8_mask(%struct.rtw_dev* %57, i32 7218, i32 %58, i32 1)
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %61 = call i32 @BIT(i32 4)
  %62 = call i32 @rtw_write8_mask(%struct.rtw_dev* %60, i32 7225, i32 %61, i32 0)
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = call i32 @BIT(i32 4)
  %65 = call i32 @rtw_write8_mask(%struct.rtw_dev* %63, i32 7227, i32 %64, i32 1)
  %66 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %67 = call i32 @BIT(i32 3)
  %68 = call i32 @rtw_write8_mask(%struct.rtw_dev* %66, i32 16736, i32 %67, i32 1)
  %69 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %70 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @COEX_WLINK_5G, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %52
  %75 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %76 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %81 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %79, %74, %52
  %85 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %86 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %87, 3
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %91 = call i32 @BIT(i32 3)
  %92 = call i32 @rtw_write8_mask(%struct.rtw_dev* %90, i32 6240, i32 %91, i32 0)
  %93 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %94 = call i32 @BIT(i32 3)
  %95 = call i32 @rtw_write8_mask(%struct.rtw_dev* %93, i32 7335, i32 %94, i32 1)
  br label %100

96:                                               ; preds = %84
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %98 = call i32 @BIT(i32 3)
  %99 = call i32 @rtw_write8_mask(%struct.rtw_dev* %97, i32 6240, i32 %98, i32 1)
  br label %100

100:                                              ; preds = %96, %89
  br label %114

101:                                              ; preds = %79
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %103 = call i32 @BIT(i32 3)
  %104 = call i32 @rtw_write8_mask(%struct.rtw_dev* %102, i32 6240, i32 %103, i32 0)
  %105 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %106 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 3
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %111 = call i32 @BIT(i32 3)
  %112 = call i32 @rtw_write8_mask(%struct.rtw_dev* %110, i32 7335, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %109, %101
  br label %114

114:                                              ; preds = %20, %113, %100
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_write8_mask(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
