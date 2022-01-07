; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_result_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_result_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32*, i32*, i64*, i64*, i64*, i32 }

@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_dpk_result_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_result_reset(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_dpk_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.rtw_dpk_info* %7, %struct.rtw_dpk_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %18 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clear_bit(i32 %16, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_NCTL0, align 4
  %23 = load i32, i32* @BIT_SUBPAGE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 1
  %26 = or i32 8, %25
  %27 = call i32 @rtw_write32_mask(%struct.rtw_dev* %21, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = call i32 @rtw_write32_mask(%struct.rtw_dev* %28, i32 7000, i32 127, i32 0)
  %30 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %31 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %30, i32 0, i32 4
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %37 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 91, i32* %47, align 4
  %48 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %49 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @rtw8822c_dpk_thermal_read(%struct.rtw_dev* %54, i32 %55)
  %57 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %3, align 8
  %58 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %15
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw8822c_dpk_thermal_read(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
