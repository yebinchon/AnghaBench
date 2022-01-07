; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SwitchBandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SwitchBandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rFPGA0_RFMOD = common dso_local global i32 0, align 4
@bRFMOD = common dso_local global i32 0, align 4
@rFPGA1_RFMOD = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rCCK0_System = common dso_local global i32 0, align 4
@bCCKSideBand = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@rOFDM1_LSTF = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_SwitchBandwidth(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct._adapter*, %struct._adapter** %2, align 8
  %10 = call i32 @r8712_read8(%struct._adapter* %9, i32 270860803)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 129
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @BIT(i32 2)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %1
  %18 = call i32 @BIT(i32 2)
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct._adapter*, %struct._adapter** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @r8712_write8(%struct._adapter* %23, i32 270860803, i32 %24)
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %63 [
    i32 129, label %27
    i32 128, label %40
  ]

27:                                               ; preds = %22
  %28 = load %struct._adapter*, %struct._adapter** %2, align 8
  %29 = load i32, i32* @rFPGA0_RFMOD, align 4
  %30 = load i32, i32* @bRFMOD, align 4
  %31 = call i32 @set_bb_reg(%struct._adapter* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct._adapter*, %struct._adapter** %2, align 8
  %33 = load i32, i32* @rFPGA1_RFMOD, align 4
  %34 = load i32, i32* @bRFMOD, align 4
  %35 = call i32 @set_bb_reg(%struct._adapter* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct._adapter*, %struct._adapter** %2, align 8
  %37 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %38 = load i32, i32* @bMaskDWord, align 4
  %39 = call i32 @set_bb_reg(%struct._adapter* %36, i32 %37, i32 %38, i32 88)
  br label %64

40:                                               ; preds = %22
  %41 = load %struct._adapter*, %struct._adapter** %2, align 8
  %42 = load i32, i32* @rFPGA0_RFMOD, align 4
  %43 = load i32, i32* @bRFMOD, align 4
  %44 = call i32 @set_bb_reg(%struct._adapter* %41, i32 %42, i32 %43, i32 1)
  %45 = load %struct._adapter*, %struct._adapter** %2, align 8
  %46 = load i32, i32* @rFPGA1_RFMOD, align 4
  %47 = load i32, i32* @bRFMOD, align 4
  %48 = call i32 @set_bb_reg(%struct._adapter* %45, i32 %46, i32 %47, i32 1)
  %49 = load %struct._adapter*, %struct._adapter** %2, align 8
  %50 = load i32, i32* @rCCK0_System, align 4
  %51 = load i32, i32* @bCCKSideBand, align 4
  %52 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %53 = ashr i32 %52, 1
  %54 = call i32 @set_bb_reg(%struct._adapter* %49, i32 %50, i32 %51, i32 %53)
  %55 = load %struct._adapter*, %struct._adapter** %2, align 8
  %56 = load i32, i32* @rOFDM1_LSTF, align 4
  %57 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %58 = call i32 @set_bb_reg(%struct._adapter* %55, i32 %56, i32 3072, i32 %57)
  %59 = load %struct._adapter*, %struct._adapter** %2, align 8
  %60 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %61 = load i32, i32* @bMaskDWord, align 4
  %62 = call i32 @set_bb_reg(%struct._adapter* %59, i32 %60, i32 %61, i32 24)
  br label %64

63:                                               ; preds = %22
  br label %64

64:                                               ; preds = %63, %40, %27
  %65 = load i32, i32* %4, align 4
  switch i32 %65, label %82 [
    i32 129, label %66
    i32 128, label %74
  ]

66:                                               ; preds = %64
  %67 = load %struct._adapter*, %struct._adapter** %2, align 8
  %68 = load i32, i32* @RF_PATH_A, align 4
  %69 = load i32, i32* @RF_CHNLBW, align 4
  %70 = call i32 @BIT(i32 10)
  %71 = call i32 @BIT(i32 11)
  %72 = or i32 %70, %71
  %73 = call i32 @set_rf_reg(%struct._adapter* %67, i32 %68, i32 %69, i32 %72, i32 1)
  br label %83

74:                                               ; preds = %64
  %75 = load %struct._adapter*, %struct._adapter** %2, align 8
  %76 = load i32, i32* @RF_PATH_A, align 4
  %77 = load i32, i32* @RF_CHNLBW, align 4
  %78 = call i32 @BIT(i32 10)
  %79 = call i32 @BIT(i32 11)
  %80 = or i32 %78, %79
  %81 = call i32 @set_rf_reg(%struct._adapter* %75, i32 %76, i32 %77, i32 %80, i32 0)
  br label %83

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %74, %66
  ret void
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @set_bb_reg(%struct._adapter*, i32, i32, i32) #1

declare dso_local i32 @set_rf_reg(%struct._adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
