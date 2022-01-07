; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_SetOFDMTxPower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_SetOFDMTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@rTxAGC_Rate18_06 = common dso_local global i32 0, align 4
@bTxAGCRate18_06 = common dso_local global i32 0, align 4
@rTxAGC_Rate54_24 = common dso_local global i32 0, align 4
@bTxAGCRate54_24 = common dso_local global i32 0, align 4
@rTxAGC_Mcs03_Mcs00 = common dso_local global i32 0, align 4
@bTxAGCRateMCS3_MCS0 = common dso_local global i32 0, align 4
@rTxAGC_Mcs07_Mcs04 = common dso_local global i32 0, align 4
@bTxAGCRateMCS7_MCS4 = common dso_local global i32 0, align 4
@rTxAGC_Mcs11_Mcs08 = common dso_local global i32 0, align 4
@bTxAGCRateMCS11_MCS8 = common dso_local global i32 0, align 4
@rTxAGC_Mcs15_Mcs12 = common dso_local global i32 0, align 4
@bTxAGCRateMCS15_MCS12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @SetOFDMTxPower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetOFDMTxPower(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 %6, 24
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 16
  %10 = or i32 %7, %9
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 8
  %13 = or i32 %10, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct._adapter*, %struct._adapter** %3, align 8
  %19 = load i32, i32* @rTxAGC_Rate18_06, align 4
  %20 = load i32, i32* @bTxAGCRate18_06, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @set_bb_reg(%struct._adapter* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct._adapter*, %struct._adapter** %3, align 8
  %24 = load i32, i32* @rTxAGC_Rate54_24, align 4
  %25 = load i32, i32* @bTxAGCRate54_24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @set_bb_reg(%struct._adapter* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct._adapter*, %struct._adapter** %3, align 8
  %29 = load i32, i32* @rTxAGC_Mcs03_Mcs00, align 4
  %30 = load i32, i32* @bTxAGCRateMCS3_MCS0, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @set_bb_reg(%struct._adapter* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct._adapter*, %struct._adapter** %3, align 8
  %34 = load i32, i32* @rTxAGC_Mcs07_Mcs04, align 4
  %35 = load i32, i32* @bTxAGCRateMCS7_MCS4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @set_bb_reg(%struct._adapter* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct._adapter*, %struct._adapter** %3, align 8
  %39 = load i32, i32* @rTxAGC_Mcs11_Mcs08, align 4
  %40 = load i32, i32* @bTxAGCRateMCS11_MCS8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @set_bb_reg(%struct._adapter* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct._adapter*, %struct._adapter** %3, align 8
  %44 = load i32, i32* @rTxAGC_Mcs15_Mcs12, align 4
  %45 = load i32, i32* @bTxAGCRateMCS15_MCS12, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @set_bb_reg(%struct._adapter* %43, i32 %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @set_bb_reg(%struct._adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
