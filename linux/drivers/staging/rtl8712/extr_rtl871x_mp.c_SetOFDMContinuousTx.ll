; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_SetOFDMContinuousTx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_SetOFDMContinuousTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bOFDMEn = common dso_local global i32 0, align 4
@bEnable = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKBBMode = common dso_local global i32 0, align 4
@bDisable = common dso_local global i32 0, align 4
@bCCKScramble = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@bOFDMContinueTx = common dso_local global i32 0, align 4
@bOFDMSingleCarrier = common dso_local global i32 0, align 4
@bOFDMSingleTone = common dso_local global i32 0, align 4
@rPMAC_Reset = common dso_local global i32 0, align 4
@bBBResetB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i64)* @SetOFDMContinuousTx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetOFDMContinuousTx(%struct._adapter* %0, i64 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = load i32, i32* @rFPGA0_RFMOD, align 4
  %10 = load i32, i32* @bOFDMEn, align 4
  %11 = call i32 @get_bb_reg(%struct._adapter* %8, i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct._adapter*, %struct._adapter** %3, align 8
  %15 = load i32, i32* @rFPGA0_RFMOD, align 4
  %16 = load i32, i32* @bOFDMEn, align 4
  %17 = load i32, i32* @bEnable, align 4
  %18 = call i32 @set_bb_reg(%struct._adapter* %14, i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %7
  %20 = load %struct._adapter*, %struct._adapter** %3, align 8
  %21 = load i32, i32* @rCCK0_System, align 4
  %22 = load i32, i32* @bCCKBBMode, align 4
  %23 = load i32, i32* @bDisable, align 4
  %24 = call i32 @set_bb_reg(%struct._adapter* %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct._adapter*, %struct._adapter** %3, align 8
  %26 = load i32, i32* @rCCK0_System, align 4
  %27 = load i32, i32* @bCCKScramble, align 4
  %28 = load i32, i32* @bEnable, align 4
  %29 = call i32 @set_bb_reg(%struct._adapter* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct._adapter*, %struct._adapter** %3, align 8
  %31 = load i32, i32* @rOFDM1_LSTF, align 4
  %32 = load i32, i32* @bOFDMContinueTx, align 4
  %33 = load i32, i32* @bEnable, align 4
  %34 = call i32 @set_bb_reg(%struct._adapter* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct._adapter*, %struct._adapter** %3, align 8
  %36 = load i32, i32* @rOFDM1_LSTF, align 4
  %37 = load i32, i32* @bOFDMSingleCarrier, align 4
  %38 = load i32, i32* @bDisable, align 4
  %39 = call i32 @set_bb_reg(%struct._adapter* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct._adapter*, %struct._adapter** %3, align 8
  %41 = load i32, i32* @rOFDM1_LSTF, align 4
  %42 = load i32, i32* @bOFDMSingleTone, align 4
  %43 = load i32, i32* @bDisable, align 4
  %44 = call i32 @set_bb_reg(%struct._adapter* %40, i32 %41, i32 %42, i32 %43)
  br label %70

45:                                               ; preds = %2
  %46 = load %struct._adapter*, %struct._adapter** %3, align 8
  %47 = load i32, i32* @rOFDM1_LSTF, align 4
  %48 = load i32, i32* @bOFDMContinueTx, align 4
  %49 = load i32, i32* @bDisable, align 4
  %50 = call i32 @set_bb_reg(%struct._adapter* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct._adapter*, %struct._adapter** %3, align 8
  %52 = load i32, i32* @rOFDM1_LSTF, align 4
  %53 = load i32, i32* @bOFDMSingleCarrier, align 4
  %54 = load i32, i32* @bDisable, align 4
  %55 = call i32 @set_bb_reg(%struct._adapter* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct._adapter*, %struct._adapter** %3, align 8
  %57 = load i32, i32* @rOFDM1_LSTF, align 4
  %58 = load i32, i32* @bOFDMSingleTone, align 4
  %59 = load i32, i32* @bDisable, align 4
  %60 = call i32 @set_bb_reg(%struct._adapter* %56, i32 %57, i32 %58, i32 %59)
  %61 = call i32 @msleep(i32 20)
  %62 = load %struct._adapter*, %struct._adapter** %3, align 8
  %63 = load i32, i32* @rPMAC_Reset, align 4
  %64 = load i32, i32* @bBBResetB, align 4
  %65 = call i32 @set_bb_reg(%struct._adapter* %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct._adapter*, %struct._adapter** %3, align 8
  %67 = load i32, i32* @rPMAC_Reset, align 4
  %68 = load i32, i32* @bBBResetB, align 4
  %69 = call i32 @set_bb_reg(%struct._adapter* %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %45, %19
  ret void
}

declare dso_local i32 @get_bb_reg(%struct._adapter*, i32, i32) #1

declare dso_local i32 @set_bb_reg(%struct._adapter*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
