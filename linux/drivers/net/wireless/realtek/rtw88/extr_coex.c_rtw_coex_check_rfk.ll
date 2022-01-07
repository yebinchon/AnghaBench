; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_check_rfk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_check_rfk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_coex, %struct.rtw_chip_info* }
%struct.rtw_coex = type { %struct.rtw_coex_rfe, %struct.rtw_coex_stat }
%struct.rtw_coex_rfe = type { i64 }
%struct.rtw_coex_stat = type { i32 }
%struct.rtw_chip_info = type { i64 }

@COEX_RFK_TIMEOUT = common dso_local global i32 0, align 4
@COEX_MIN_DELAY = common dso_local global i32 0, align 4
@COEX_SCBD_BT_RFK = common dso_local global i32 0, align 4
@REG_ARFR4 = common dso_local global i32 0, align 4
@BIT_WL_RFK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_check_rfk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_check_rfk(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_chip_info*, align 8
  %4 = alloca %struct.rtw_coex*, align 8
  %5 = alloca %struct.rtw_coex_stat*, align 8
  %6 = alloca %struct.rtw_coex_rfe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  store %struct.rtw_chip_info* %13, %struct.rtw_chip_info** %3, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_coex* %15, %struct.rtw_coex** %4, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 1
  store %struct.rtw_coex_stat* %17, %struct.rtw_coex_stat** %5, align 8
  %18 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %18, i32 0, i32 0
  store %struct.rtw_coex_rfe* %19, %struct.rtw_coex_rfe** %6, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %6, align 8
  %21 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %1
  %25 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %3, align 8
  %26 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %24
  %30 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %31 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  %35 = load i32, i32* @COEX_RFK_TIMEOUT, align 4
  %36 = load i32, i32* @COEX_MIN_DELAY, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %65, %34
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %40 = call i32 @rtw_coex_read_scbd(%struct.rtw_dev* %39)
  %41 = load i32, i32* @COEX_SCBD_BT_RFK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %48 = load i32, i32* @REG_ARFR4, align 4
  %49 = call i32 @rtw_read8(%struct.rtw_dev* %47, i32 %48)
  %50 = load i32, i32* @BIT_WL_RFK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %38
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %70

62:                                               ; preds = %58, %38
  %63 = load i32, i32* @COEX_MIN_DELAY, align 4
  %64 = call i32 @mdelay(i32 %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %38, label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %5, align 8
  %76 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %75, i32 0, i32 0
  store i32 255, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %29, %24, %1
  ret void
}

declare dso_local i32 @rtw_coex_read_scbd(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
