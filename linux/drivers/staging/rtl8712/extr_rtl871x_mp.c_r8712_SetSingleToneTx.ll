; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetSingleToneTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetSingleToneTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RF_PATH_B = common dso_local global i64 0, align 8
@RF_PATH_A = common dso_local global i64 0, align 8
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bDisable = common dso_local global i32 0, align 4
@bOFDMEn = common dso_local global i32 0, align 4
@RF_TX_G2 = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@RF_AC = common dso_local global i32 0, align 4
@bEnable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_SetSingleToneTx(%struct._adapter* %0, i64 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %13 [
    i32 128, label %10
    i32 129, label %12
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* @RF_PATH_B, align 8
  store i64 %11, i64* %5, align 8
  br label %15

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12
  %14 = load i64, i64* @RF_PATH_A, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %struct._adapter*, %struct._adapter** %3, align 8
  %20 = load i32, i32* @rFPGA0_RFMOD, align 4
  %21 = load i32, i32* @bCCKEn, align 4
  %22 = load i32, i32* @bDisable, align 4
  %23 = call i32 @set_bb_reg(%struct._adapter* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct._adapter*, %struct._adapter** %3, align 8
  %25 = load i32, i32* @rFPGA0_RFMOD, align 4
  %26 = load i32, i32* @bOFDMEn, align 4
  %27 = load i32, i32* @bDisable, align 4
  %28 = call i32 @set_bb_reg(%struct._adapter* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct._adapter*, %struct._adapter** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @RF_TX_G2, align 4
  %32 = load i32, i32* @bRFRegOffsetMask, align 4
  %33 = call i32 @set_rf_reg(%struct._adapter* %29, i64 %30, i32 %31, i32 %32, i32 868352)
  %34 = call i32 @msleep(i32 100)
  %35 = load %struct._adapter*, %struct._adapter** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @RF_AC, align 4
  %38 = load i32, i32* @bRFRegOffsetMask, align 4
  %39 = call i32 @set_rf_reg(%struct._adapter* %35, i64 %36, i32 %37, i32 %38, i32 131103)
  %40 = call i32 @msleep(i32 100)
  br label %64

41:                                               ; preds = %15
  %42 = load %struct._adapter*, %struct._adapter** %3, align 8
  %43 = load i32, i32* @rFPGA0_RFMOD, align 4
  %44 = load i32, i32* @bCCKEn, align 4
  %45 = load i32, i32* @bEnable, align 4
  %46 = call i32 @set_bb_reg(%struct._adapter* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct._adapter*, %struct._adapter** %3, align 8
  %48 = load i32, i32* @rFPGA0_RFMOD, align 4
  %49 = load i32, i32* @bOFDMEn, align 4
  %50 = load i32, i32* @bEnable, align 4
  %51 = call i32 @set_bb_reg(%struct._adapter* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct._adapter*, %struct._adapter** %3, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* @RF_TX_G2, align 4
  %55 = load i32, i32* @bRFRegOffsetMask, align 4
  %56 = call i32 @set_rf_reg(%struct._adapter* %52, i64 %53, i32 %54, i32 %55, i32 344064)
  %57 = call i32 @msleep(i32 100)
  %58 = load %struct._adapter*, %struct._adapter** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @RF_AC, align 4
  %61 = load i32, i32* @bRFRegOffsetMask, align 4
  %62 = call i32 @set_rf_reg(%struct._adapter* %58, i64 %59, i32 %60, i32 %61, i32 196608)
  %63 = call i32 @msleep(i32 100)
  br label %64

64:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @set_bb_reg(%struct._adapter*, i32, i32, i32) #1

declare dso_local i32 @set_rf_reg(%struct._adapter*, i64, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
