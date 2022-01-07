; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_fill_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_fill_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rtw_dpk_info }
%struct.rtw_dpk_info = type { i32*, i32* }

@REG_NCTL0 = common dso_local global i32 0, align 4
@BIT_SUBPAGE = common dso_local global i32 0, align 4
@REG_DPD_AGC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i32, i32)* @rtw8822c_dpk_fill_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_fill_result(%struct.rtw_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_dpk_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rtw_dpk_info* %12, %struct.rtw_dpk_info** %9, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %14 = load i32, i32* @REG_NCTL0, align 4
  %15 = load i32, i32* @BIT_SUBPAGE, align 4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 1
  %18 = or i32 8, %17
  %19 = call i32 @rtw_write32_mask(%struct.rtw_dev* %13, i32 %14, i32 %15, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %24 = load i32, i32* @REG_DPD_AGC, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 6
  %27 = call i32 @rtw_write8(%struct.rtw_dev* %23, i32 %24, i32 %26)
  br label %32

28:                                               ; preds = %4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %30 = load i32, i32* @REG_DPD_AGC, align 4
  %31 = call i32 @rtw_write8(%struct.rtw_dev* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %9, align 8
  %35 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %41 = load i32, i32* @REG_DPD_AGC, align 4
  %42 = call i32 @rtw_read8(%struct.rtw_dev* %40, i32 %41)
  %43 = load %struct.rtw_dpk_info*, %struct.rtw_dpk_info** %9, align 8
  %44 = getelementptr inbounds %struct.rtw_dpk_info, %struct.rtw_dpk_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @rtw8822c_dpk_coef_write(%struct.rtw_dev* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw8822c_dpk_coef_write(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
