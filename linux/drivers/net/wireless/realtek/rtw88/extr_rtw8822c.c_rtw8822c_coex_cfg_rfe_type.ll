; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_coex_cfg_rfe_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_coex_cfg_rfe_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_efuse = type { i64, i32 }
%struct.rtw_coex = type { %struct.rtw_coex_rfe }
%struct.rtw_coex_rfe = type { i32, i32, i32, i32, i64, i32 }

@BIT_LTE_COEX_EN = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_coex_cfg_rfe_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_coex_cfg_rfe_type(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_rfe*, align 8
  %5 = alloca %struct.rtw_efuse*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 1
  store %struct.rtw_coex* %7, %struct.rtw_coex** %3, align 8
  %8 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %8, i32 0, i32 0
  store %struct.rtw_coex_rfe* %9, %struct.rtw_coex_rfe** %4, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  store %struct.rtw_efuse* %11, %struct.rtw_efuse** %5, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %23 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load %struct.rtw_efuse*, %struct.rtw_efuse** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %32 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.rtw_coex_rfe*, %struct.rtw_coex_rfe** %4, align 8
  %35 = getelementptr inbounds %struct.rtw_coex_rfe, %struct.rtw_coex_rfe* %34, i32 0, i32 3
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %38 = load i32, i32* @BIT_LTE_COEX_EN, align 4
  %39 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %37, i32 56, i32 %38, i32 0)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %41 = load i32, i32* @MASKLWORD, align 4
  %42 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %40, i32 160, i32 %41, i32 65535)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* @MASKLWORD, align 4
  %45 = call i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev* %43, i32 164, i32 %44, i32 65535)
  ret void
}

declare dso_local i32 @rtw_coex_write_indirect_reg(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
