; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_SetCCKContinuousTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_SetCCKContinuousTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bEnable = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@bOFDMContinueTx = common dso_local global i32 0, align 4
@bDisable = common dso_local global i32 0, align 4
@bOFDMSingleCarrier = common dso_local global i32 0, align 4
@bOFDMSingleTone = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKTxRate = common dso_local global i32 0, align 4
@bCCKBBMode = common dso_local global i32 0, align 4
@bCCKScramble = common dso_local global i32 0, align 4
@rPMAC_Reset = common dso_local global i32 0, align 4
@bBBResetB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i64)* @SetCCKContinuousTx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetCCKContinuousTx(%struct._adapter* %0, i64 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %2
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = load i32, i32* @rFPGA0_RFMOD, align 4
  %11 = load i32, i32* @bCCKEn, align 4
  %12 = call i32 @get_bb_reg(%struct._adapter* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = load i32, i32* @rFPGA0_RFMOD, align 4
  %17 = load i32, i32* @bCCKEn, align 4
  %18 = load i32, i32* @bEnable, align 4
  %19 = call i32 @set_bb_reg(%struct._adapter* %15, i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = load i32, i32* @rOFDM1_LSTF, align 4
  %23 = load i32, i32* @bOFDMContinueTx, align 4
  %24 = load i32, i32* @bDisable, align 4
  %25 = call i32 @set_bb_reg(%struct._adapter* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct._adapter*, %struct._adapter** %3, align 8
  %27 = load i32, i32* @rOFDM1_LSTF, align 4
  %28 = load i32, i32* @bOFDMSingleCarrier, align 4
  %29 = load i32, i32* @bDisable, align 4
  %30 = call i32 @set_bb_reg(%struct._adapter* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct._adapter*, %struct._adapter** %3, align 8
  %32 = load i32, i32* @rOFDM1_LSTF, align 4
  %33 = load i32, i32* @bOFDMSingleTone, align 4
  %34 = load i32, i32* @bDisable, align 4
  %35 = call i32 @set_bb_reg(%struct._adapter* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct._adapter*, %struct._adapter** %3, align 8
  %37 = getelementptr inbounds %struct._adapter, %struct._adapter* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load %struct._adapter*, %struct._adapter** %3, align 8
  %41 = load i32, i32* @rCCK0_System, align 4
  %42 = load i32, i32* @bCCKTxRate, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @set_bb_reg(%struct._adapter* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct._adapter*, %struct._adapter** %3, align 8
  %46 = load i32, i32* @rCCK0_System, align 4
  %47 = load i32, i32* @bCCKBBMode, align 4
  %48 = call i32 @set_bb_reg(%struct._adapter* %45, i32 %46, i32 %47, i32 2)
  %49 = load %struct._adapter*, %struct._adapter** %3, align 8
  %50 = load i32, i32* @rCCK0_System, align 4
  %51 = load i32, i32* @bCCKScramble, align 4
  %52 = load i32, i32* @bEnable, align 4
  %53 = call i32 @set_bb_reg(%struct._adapter* %49, i32 %50, i32 %51, i32 %52)
  br label %72

54:                                               ; preds = %2
  %55 = load %struct._adapter*, %struct._adapter** %3, align 8
  %56 = load i32, i32* @rCCK0_System, align 4
  %57 = load i32, i32* @bCCKBBMode, align 4
  %58 = call i32 @set_bb_reg(%struct._adapter* %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct._adapter*, %struct._adapter** %3, align 8
  %60 = load i32, i32* @rCCK0_System, align 4
  %61 = load i32, i32* @bCCKScramble, align 4
  %62 = load i32, i32* @bEnable, align 4
  %63 = call i32 @set_bb_reg(%struct._adapter* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct._adapter*, %struct._adapter** %3, align 8
  %65 = load i32, i32* @rPMAC_Reset, align 4
  %66 = load i32, i32* @bBBResetB, align 4
  %67 = call i32 @set_bb_reg(%struct._adapter* %64, i32 %65, i32 %66, i32 0)
  %68 = load %struct._adapter*, %struct._adapter** %3, align 8
  %69 = load i32, i32* @rPMAC_Reset, align 4
  %70 = load i32, i32* @bBBResetB, align 4
  %71 = call i32 @set_bb_reg(%struct._adapter* %68, i32 %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @get_bb_reg(%struct._adapter*, i32, i32) #1

declare dso_local i32 @set_bb_reg(%struct._adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
