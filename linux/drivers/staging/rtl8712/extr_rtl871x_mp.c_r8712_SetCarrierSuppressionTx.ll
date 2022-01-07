; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetCarrierSuppressionTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SetCarrierSuppressionTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MPT_RATE_11M = common dso_local global i64 0, align 8
@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bCCKEn = common dso_local global i32 0, align 4
@bEnable = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@bOFDMContinueTx = common dso_local global i32 0, align 4
@bDisable = common dso_local global i32 0, align 4
@bOFDMSingleCarrier = common dso_local global i32 0, align 4
@bOFDMSingleTone = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKBBMode = common dso_local global i32 0, align 4
@bCCKScramble = common dso_local global i32 0, align 4
@bCCKTxRate = common dso_local global i32 0, align 4
@rPMAC_Reset = common dso_local global i32 0, align 4
@bBBResetB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_SetCarrierSuppressionTx(%struct._adapter* %0, i64 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MPT_RATE_11M, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %7
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = load i32, i32* @rFPGA0_RFMOD, align 4
  %17 = load i32, i32* @bCCKEn, align 4
  %18 = call i32 @get_bb_reg(%struct._adapter* %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = load i32, i32* @rFPGA0_RFMOD, align 4
  %23 = load i32, i32* @bCCKEn, align 4
  %24 = load i32, i32* @bEnable, align 4
  %25 = call i32 @set_bb_reg(%struct._adapter* %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct._adapter*, %struct._adapter** %3, align 8
  %28 = load i32, i32* @rOFDM1_LSTF, align 4
  %29 = load i32, i32* @bOFDMContinueTx, align 4
  %30 = load i32, i32* @bDisable, align 4
  %31 = call i32 @set_bb_reg(%struct._adapter* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = load i32, i32* @rOFDM1_LSTF, align 4
  %34 = load i32, i32* @bOFDMSingleCarrier, align 4
  %35 = load i32, i32* @bDisable, align 4
  %36 = call i32 @set_bb_reg(%struct._adapter* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct._adapter*, %struct._adapter** %3, align 8
  %38 = load i32, i32* @rOFDM1_LSTF, align 4
  %39 = load i32, i32* @bOFDMSingleTone, align 4
  %40 = load i32, i32* @bDisable, align 4
  %41 = call i32 @set_bb_reg(%struct._adapter* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct._adapter*, %struct._adapter** %3, align 8
  %43 = load i32, i32* @rCCK0_System, align 4
  %44 = load i32, i32* @bCCKBBMode, align 4
  %45 = call i32 @set_bb_reg(%struct._adapter* %42, i32 %43, i32 %44, i32 2)
  %46 = load %struct._adapter*, %struct._adapter** %3, align 8
  %47 = load i32, i32* @rCCK0_System, align 4
  %48 = load i32, i32* @bCCKScramble, align 4
  %49 = load i32, i32* @bDisable, align 4
  %50 = call i32 @set_bb_reg(%struct._adapter* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct._adapter*, %struct._adapter** %3, align 8
  %52 = load i32, i32* @rCCK0_System, align 4
  %53 = load i32, i32* @bCCKTxRate, align 4
  %54 = call i32 @set_bb_reg(%struct._adapter* %51, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %26, %7
  br label %82

56:                                               ; preds = %2
  %57 = load %struct._adapter*, %struct._adapter** %3, align 8
  %58 = getelementptr inbounds %struct._adapter, %struct._adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MPT_RATE_11M, align 8
  %62 = icmp sle i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct._adapter*, %struct._adapter** %3, align 8
  %65 = load i32, i32* @rCCK0_System, align 4
  %66 = load i32, i32* @bCCKBBMode, align 4
  %67 = call i32 @set_bb_reg(%struct._adapter* %64, i32 %65, i32 %66, i32 0)
  %68 = load %struct._adapter*, %struct._adapter** %3, align 8
  %69 = load i32, i32* @rCCK0_System, align 4
  %70 = load i32, i32* @bCCKScramble, align 4
  %71 = load i32, i32* @bEnable, align 4
  %72 = call i32 @set_bb_reg(%struct._adapter* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct._adapter*, %struct._adapter** %3, align 8
  %74 = load i32, i32* @rPMAC_Reset, align 4
  %75 = load i32, i32* @bBBResetB, align 4
  %76 = call i32 @set_bb_reg(%struct._adapter* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct._adapter*, %struct._adapter** %3, align 8
  %78 = load i32, i32* @rPMAC_Reset, align 4
  %79 = load i32, i32* @bBBResetB, align 4
  %80 = call i32 @set_bb_reg(%struct._adapter* %77, i32 %78, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %63, %56
  br label %82

82:                                               ; preds = %81, %55
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
