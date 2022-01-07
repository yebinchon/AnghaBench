; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SwitchAntenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c_r8712_SwitchAntenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.R_ANTENNA_SELECT_CCK = type { i32, i32, i32 }

@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter2 = common dso_local global i32 0, align 4
@rFPGA1_TxInfo = common dso_local global i32 0, align 4
@rFPGA0_TxInfo = common dso_local global i32 0, align 4
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@rCCK0_AFESetting = common dso_local global i32 0, align 4
@bMaskByte3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_SwitchAntenna(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.R_ANTENNA_SELECT_CCK*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = bitcast i32* %6 to %struct.R_ANTENNA_SELECT_CCK*
  store %struct.R_ANTENNA_SELECT_CCK* %9, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %10 = load %struct._adapter*, %struct._adapter** %2, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %41 [
    i32 130, label %14
    i32 128, label %23
    i32 129, label %32
  ]

14:                                               ; preds = %1
  %15 = load %struct._adapter*, %struct._adapter** %2, align 8
  %16 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %17 = call i32 @set_bb_reg(%struct._adapter* %15, i32 %16, i32 14, i32 2)
  %18 = load %struct._adapter*, %struct._adapter** %2, align 8
  %19 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %20 = call i32 @set_bb_reg(%struct._adapter* %18, i32 %19, i32 14, i32 1)
  store i32 3, i32* %3, align 4
  store i32 286331153, i32* %4, align 4
  %21 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %22 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %21, i32 0, i32 0
  store i32 8, i32* %22, align 4
  br label %42

23:                                               ; preds = %1
  %24 = load %struct._adapter*, %struct._adapter** %2, align 8
  %25 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %26 = call i32 @set_bb_reg(%struct._adapter* %24, i32 %25, i32 14, i32 1)
  %27 = load %struct._adapter*, %struct._adapter** %2, align 8
  %28 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %29 = call i32 @set_bb_reg(%struct._adapter* %27, i32 %28, i32 14, i32 2)
  store i32 3, i32* %3, align 4
  store i32 572662306, i32* %4, align 4
  %30 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %31 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %30, i32 0, i32 0
  store i32 4, i32* %31, align 4
  br label %42

32:                                               ; preds = %1
  %33 = load %struct._adapter*, %struct._adapter** %2, align 8
  %34 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %35 = call i32 @set_bb_reg(%struct._adapter* %33, i32 %34, i32 14, i32 2)
  %36 = load %struct._adapter*, %struct._adapter** %2, align 8
  %37 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %38 = call i32 @set_bb_reg(%struct._adapter* %36, i32 %37, i32 14, i32 2)
  store i32 3, i32* %3, align 4
  store i32 53613363, i32* %4, align 4
  %39 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %40 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %39, i32 0, i32 0
  store i32 12, i32* %40, align 4
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %32, %23, %14
  %43 = load %struct._adapter*, %struct._adapter** %2, align 8
  %44 = load i32, i32* @rFPGA1_TxInfo, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @set_bb_reg(%struct._adapter* %43, i32 %44, i32 -1, i32 %45)
  %47 = load %struct._adapter*, %struct._adapter** %2, align 8
  %48 = load i32, i32* @rFPGA0_TxInfo, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @set_bb_reg(%struct._adapter* %47, i32 %48, i32 15, i32 %49)
  %51 = load %struct._adapter*, %struct._adapter** %2, align 8
  %52 = getelementptr inbounds %struct._adapter, %struct._adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %70 [
    i32 130, label %55
    i32 128, label %60
    i32 129, label %65
  ]

55:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  %56 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %57 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %59 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  br label %71

60:                                               ; preds = %42
  store i32 2, i32* %5, align 4
  %61 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %62 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %64 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %63, i32 0, i32 2
  store i32 1, i32* %64, align 4
  br label %71

65:                                               ; preds = %42
  store i32 3, i32* %5, align 4
  %66 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %67 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.R_ANTENNA_SELECT_CCK*, %struct.R_ANTENNA_SELECT_CCK** %8, align 8
  %69 = getelementptr inbounds %struct.R_ANTENNA_SELECT_CCK, %struct.R_ANTENNA_SELECT_CCK* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  br label %71

70:                                               ; preds = %42
  br label %71

71:                                               ; preds = %70, %65, %60, %55
  %72 = load %struct._adapter*, %struct._adapter** %2, align 8
  %73 = load i32, i32* @rOFDM0_TRxPathEnable, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @set_bb_reg(%struct._adapter* %72, i32 %73, i32 15, i32 %74)
  %76 = load %struct._adapter*, %struct._adapter** %2, align 8
  %77 = load i32, i32* @rOFDM1_TRxPathEnable, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @set_bb_reg(%struct._adapter* %76, i32 %77, i32 15, i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct._adapter*, %struct._adapter** %2, align 8
  %82 = load i32, i32* @rCCK0_AFESetting, align 4
  %83 = load i32, i32* @bMaskByte3, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @set_bb_reg(%struct._adapter* %81, i32 %82, i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @set_bb_reg(%struct._adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
