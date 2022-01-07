; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rf_serial_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rf_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32 }

@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i32 0, align 4
@bLSSIReadAddress = common dso_local global i32 0, align 4
@bLSSIReadEdge = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter1 = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter1 = common dso_local global i32 0, align 4
@bLSSIReadBackData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @rf_serial_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf_serial_read(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bb_reg_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.bb_reg_def*, %struct.bb_reg_def** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %16, i64 %18
  store %struct.bb_reg_def* %19, %struct.bb_reg_def** %8, align 8
  store i64 0, i64* %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %6, align 4
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %24 = load i32, i32* @bMaskDWord, align 4
  %25 = call i32 @phy_query_bb_reg(%struct.adapter* %22, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RF_PATH_A, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %10, align 4
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %34 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @bMaskDWord, align 4
  %37 = call i32 @phy_query_bb_reg(%struct.adapter* %32, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @bLSSIReadAddress, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 23
  %45 = or i32 %42, %44
  %46 = load i32, i32* @bLSSIReadEdge, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %50 = load i32, i32* @bMaskDWord, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @bLSSIReadEdge, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @phy_set_bb_reg(%struct.adapter* %48, i32 %49, i32 %50, i32 %54)
  %56 = call i32 @udelay(i32 10)
  %57 = load %struct.adapter*, %struct.adapter** %4, align 8
  %58 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %59 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @bMaskDWord, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @phy_set_bb_reg(%struct.adapter* %57, i32 %60, i32 %61, i32 %62)
  %64 = call i32 @udelay(i32 100)
  %65 = call i32 @udelay(i32 10)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @RF_PATH_A, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %38
  %70 = load %struct.adapter*, %struct.adapter** %4, align 8
  %71 = load i32, i32* @rFPGA0_XA_HSSIParameter1, align 4
  %72 = call i32 @BIT(i32 8)
  %73 = call i32 @phy_query_bb_reg(%struct.adapter* %70, i32 %71, i32 %72)
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %11, align 8
  br label %86

75:                                               ; preds = %38
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @RF_PATH_B, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.adapter*, %struct.adapter** %4, align 8
  %81 = load i32, i32* @rFPGA0_XB_HSSIParameter1, align 4
  %82 = call i32 @BIT(i32 8)
  %83 = call i32 @phy_query_bb_reg(%struct.adapter* %80, i32 %81, i32 %82)
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85, %69
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %92 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @bLSSIReadBackData, align 4
  %95 = call i32 @phy_query_bb_reg(%struct.adapter* %90, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %103

96:                                               ; preds = %86
  %97 = load %struct.adapter*, %struct.adapter** %4, align 8
  %98 = load %struct.bb_reg_def*, %struct.bb_reg_def** %8, align 8
  %99 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @bLSSIReadBackData, align 4
  %102 = call i32 @phy_query_bb_reg(%struct.adapter* %97, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
