; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_enable_sec_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_sec.c_rtw_sec_enable_sec_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_sec_desc }
%struct.rtw_sec_desc = type { i32 }

@REG_CR = common dso_local global i32 0, align 4
@RTW_SEC_ENGINE_EN = common dso_local global i32 0, align 4
@RTW_SEC_CONFIG = common dso_local global i32 0, align 4
@RTW_SEC_TX_DEC_EN = common dso_local global i32 0, align 4
@RTW_SEC_RX_DEC_EN = common dso_local global i32 0, align 4
@RTW_SEC_TX_UNI_USE_DK = common dso_local global i32 0, align 4
@RTW_SEC_RX_UNI_USE_DK = common dso_local global i32 0, align 4
@RTW_SEC_TX_BC_USE_DK = common dso_local global i32 0, align 4
@RTW_SEC_RX_BC_USE_DK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_sec_enable_sec_engine(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_sec_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_sec_desc* %7, %struct.rtw_sec_desc** %3, align 8
  %8 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = load i32, i32* @REG_CR, align 4
  %12 = call i32 @rtw_read16(%struct.rtw_dev* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RTW_SEC_ENGINE_EN, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = load i32, i32* @REG_CR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rtw_write16(%struct.rtw_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %21 = load i32, i32* @RTW_SEC_CONFIG, align 4
  %22 = call i32 @rtw_read16(%struct.rtw_dev* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @RTW_SEC_TX_DEC_EN, align 4
  %24 = load i32, i32* @RTW_SEC_RX_DEC_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.rtw_sec_desc*, %struct.rtw_sec_desc** %3, align 8
  %29 = getelementptr inbounds %struct.rtw_sec_desc, %struct.rtw_sec_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load i32, i32* @RTW_SEC_TX_UNI_USE_DK, align 4
  %34 = load i32, i32* @RTW_SEC_RX_UNI_USE_DK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RTW_SEC_TX_BC_USE_DK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RTW_SEC_RX_BC_USE_DK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %1
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %44 = load i32, i32* @RTW_SEC_CONFIG, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rtw_write16(%struct.rtw_dev* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
