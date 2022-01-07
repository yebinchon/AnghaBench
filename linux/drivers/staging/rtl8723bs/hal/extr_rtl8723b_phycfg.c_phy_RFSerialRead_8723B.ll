; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_RFSerialRead_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_RFSerialRead_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.bb_register_def* }
%struct.bb_register_def = type { i32, i32 }

@RF_PATH_A = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@bLSSIReadAddress = common dso_local global i32 0, align 4
@bLSSIReadEdge = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter2 = common dso_local global i32 0, align 4
@MAX_STALL_TIME = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter1 = common dso_local global i32 0, align 4
@BIT8 = common dso_local global i32 0, align 4
@RF_PATH_B = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter1 = common dso_local global i32 0, align 4
@bLSSIReadBackData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @phy_RFSerialRead_8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_RFSerialRead_8723B(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hal_com_data*, align 8
  %9 = alloca %struct.bb_register_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %15)
  store %struct.hal_com_data* %16, %struct.hal_com_data** %8, align 8
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %8, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 0
  %19 = load %struct.bb_register_def*, %struct.bb_register_def** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bb_register_def, %struct.bb_register_def* %19, i64 %21
  store %struct.bb_register_def* %22, %struct.bb_register_def** %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RF_PATH_A, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %3
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @bMaskDWord, align 4
  %35 = call i32 @PHY_QueryBBReg(%struct.adapter* %30, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @bLSSIReadAddress, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 23
  %42 = or i32 %39, %41
  %43 = load i32, i32* @bLSSIReadEdge, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @bMaskDWord, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @bLSSIReadEdge, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @PHY_SetBBReg(%struct.adapter* %45, i32 %48, i32 %49, i32 %53)
  br label %81

55:                                               ; preds = %3
  %56 = load %struct.adapter*, %struct.adapter** %4, align 8
  %57 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @bMaskDWord, align 4
  %61 = call i32 @PHY_QueryBBReg(%struct.adapter* %56, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @bLSSIReadAddress, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 23
  %68 = or i32 %65, %67
  %69 = load i32, i32* @bLSSIReadEdge, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @bMaskDWord, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @bLSSIReadEdge, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @PHY_SetBBReg(%struct.adapter* %71, i32 %74, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %55, %29
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %84 = load i32, i32* %13, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @bMaskDWord, align 4
  %87 = call i32 @PHY_QueryBBReg(%struct.adapter* %82, i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.adapter*, %struct.adapter** %4, align 8
  %89 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @bMaskDWord, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @bLSSIReadEdge, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = call i32 @PHY_SetBBReg(%struct.adapter* %88, i32 %91, i32 %92, i32 %96)
  %98 = load %struct.adapter*, %struct.adapter** %4, align 8
  %99 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @bMaskDWord, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @bLSSIReadEdge, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @PHY_SetBBReg(%struct.adapter* %98, i32 %101, i32 %102, i32 %105)
  %107 = call i32 @udelay(i32 10)
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %114, %81
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @MAX_STALL_TIME, align 4
  %113 = call i32 @udelay(i32 %112)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %108

117:                                              ; preds = %108
  %118 = call i32 @udelay(i32 10)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @RF_PATH_A, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = load i32, i32* @rFPGA0_XA_HSSIParameter1, align 4
  %125 = load i32, i32* %13, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @BIT8, align 4
  %128 = call i32 @PHY_QueryBBReg(%struct.adapter* %123, i32 %126, i32 %127)
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %12, align 8
  br label %143

130:                                              ; preds = %117
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @RF_PATH_B, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.adapter*, %struct.adapter** %4, align 8
  %136 = load i32, i32* @rFPGA0_XB_HSSIParameter1, align 4
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @BIT8, align 4
  %140 = call i32 @PHY_QueryBBReg(%struct.adapter* %135, i32 %138, i32 %139)
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %134, %130
  br label %143

143:                                              ; preds = %142, %122
  %144 = load i64, i64* %12, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load %struct.adapter*, %struct.adapter** %4, align 8
  %148 = load %struct.bb_register_def*, %struct.bb_register_def** %9, align 8
  %149 = getelementptr inbounds %struct.bb_register_def, %struct.bb_register_def* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @bLSSIReadBackData, align 4
  %154 = call i32 @PHY_QueryBBReg(%struct.adapter* %147, i32 %152, i32 %153)
  store i32 %154, i32* %7, align 4
  br label %164

155:                                              ; preds = %143
  %156 = load %struct.adapter*, %struct.adapter** %4, align 8
  %157 = load %struct.bb_register_def*, %struct.bb_register_def** %9, align 8
  %158 = getelementptr inbounds %struct.bb_register_def, %struct.bb_register_def* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @bLSSIReadBackData, align 4
  %163 = call i32 @PHY_QueryBBReg(%struct.adapter* %156, i32 %161, i32 %162)
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %155, %146
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @PHY_QueryBBReg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PHY_SetBBReg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
