; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dac_cal_step2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_DBG_RFK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"[DACK] before i=0x%x, q=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[DACK] after  i=0x%x, q=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32*, i32*)* @rtw8822c_dac_cal_step2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dac_cal_step2(%struct.rtw_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @rtw8822c_get_path_write_addr(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 188
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %16, i32 %18, i32 -268435456, i32 0)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 192
  %23 = call i32 @rtw_write32_mask(%struct.rtw_dev* %20, i32 %22, i32 15, i32 8)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 216
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %24, i32 %26, i32 -268435456, i32 0)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 220
  %31 = call i32 @rtw_write32_mask(%struct.rtw_dev* %28, i32 %30, i32 15, i32 8)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %33 = call i32 @rtw_write32(%struct.rtw_dev* %32, i32 6912, i32 8)
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %35 = call i32 @rtw_write8(%struct.rtw_dev* %34, i32 7116, i32 63)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 12
  %39 = call i32 @rtw_write32(%struct.rtw_dev* %36, i32 %38, i32 -537918944)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 16
  %43 = call i32 @rtw_write32(%struct.rtw_dev* %40, i32 %42, i32 47515845)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %45 = call i32 @rtw_write32(%struct.rtw_dev* %44, i32 7228, i32 557315)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %47 = call i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev* %46, i32* %12, i32* %13)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 1024, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 1024, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 768
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 2
  %67 = mul nsw i32 %66, 6
  %68 = sdiv i32 %67, 5
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 128
  store i32 %70, i32* %10, align 4
  br label %79

71:                                               ; preds = %61
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 1024, %72
  %74 = mul nsw i32 %73, 2
  %75 = mul nsw i32 %74, 6
  %76 = sdiv i32 %75, 5
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 127, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %71, %64
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 768
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 2
  %85 = mul nsw i32 %84, 6
  %86 = sdiv i32 %85, 5
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 128
  store i32 %88, i32* %11, align 4
  br label %97

89:                                               ; preds = %79
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 1024, %90
  %92 = mul nsw i32 %91, 2
  %93 = mul nsw i32 %92, 6
  %94 = sdiv i32 %93, 5
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 127, %95
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %89, %82
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %103 = load i32, i32* @RTW_DBG_RFK, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @rtw_dbg(%struct.rtw_dev* %102, i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %108 = load i32, i32* @RTW_DBG_RFK, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @rtw_dbg(%struct.rtw_dev* %107, i32 %108, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  ret void
}

declare dso_local i32 @rtw8822c_get_path_write_addr(i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw8822c_dac_cal_rf_mode(%struct.rtw_dev*, i32*, i32*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
