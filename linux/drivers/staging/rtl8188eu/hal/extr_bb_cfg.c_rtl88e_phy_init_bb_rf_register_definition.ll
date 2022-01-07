; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_bb_cfg.c_rtl88e_phy_init_bb_rf_register_definition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_bb_cfg.c_rtl88e_phy_init_bb_rf_register_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bb_reg_def* }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@rFPGA0_XAB_RFInterfaceSW = common dso_local global i8* null, align 8
@rFPGA0_XAB_RFInterfaceRB = common dso_local global i8* null, align 8
@rFPGA0_XA_RFInterfaceOE = common dso_local global i8* null, align 8
@rFPGA0_XB_RFInterfaceOE = common dso_local global i8* null, align 8
@rFPGA0_XA_LSSIParameter = common dso_local global i32 0, align 4
@rFPGA0_XB_LSSIParameter = common dso_local global i32 0, align 4
@rFPGA0_XAB_RFParameter = common dso_local global i8* null, align 8
@rFPGA0_TxGainStage = common dso_local global i8* null, align 8
@rFPGA0_XA_HSSIParameter1 = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter1 = common dso_local global i32 0, align 4
@rFPGA0_XA_HSSIParameter2 = common dso_local global i32 0, align 4
@rFPGA0_XB_HSSIParameter2 = common dso_local global i32 0, align 4
@rFPGA0_XAB_SwitchControl = common dso_local global i8* null, align 8
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XAAGCCore2 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore2 = common dso_local global i32 0, align 4
@rOFDM0_XARxIQImbalance = common dso_local global i32 0, align 4
@rOFDM0_XBRxIQImbalance = common dso_local global i32 0, align 4
@rOFDM0_XARxAFE = common dso_local global i32 0, align 4
@rOFDM0_XBRxAFE = common dso_local global i32 0, align 4
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@rOFDM0_XBTxIQImbalance = common dso_local global i32 0, align 4
@rOFDM0_XATxAFE = common dso_local global i32 0, align 4
@rOFDM0_XBTxAFE = common dso_local global i32 0, align 4
@rFPGA0_XA_LSSIReadBack = common dso_local global i32 0, align 4
@rFPGA0_XB_LSSIReadBack = common dso_local global i32 0, align 4
@TransceiverA_HSPI_Readback = common dso_local global i32 0, align 4
@TransceiverB_HSPI_Readback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtl88e_phy_init_bb_rf_register_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_phy_init_bb_rf_register_definition(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca [4 x %struct.bb_reg_def*], align 16
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.bb_reg_def*, %struct.bb_reg_def** %7, align 8
  %9 = load i64, i64* @RF_PATH_A, align 8
  %10 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %8, i64 %9
  %11 = load i64, i64* @RF_PATH_A, align 8
  %12 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %11
  store %struct.bb_reg_def* %10, %struct.bb_reg_def** %12, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.bb_reg_def*, %struct.bb_reg_def** %16, align 8
  %18 = load i64, i64* @RF_PATH_B, align 8
  %19 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %17, i64 %18
  %20 = load i64, i64* @RF_PATH_B, align 8
  %21 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %20
  store %struct.bb_reg_def* %19, %struct.bb_reg_def** %21, align 8
  %22 = load i8*, i8** @rFPGA0_XAB_RFInterfaceSW, align 8
  %23 = load i64, i64* @RF_PATH_A, align 8
  %24 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %23
  %25 = load %struct.bb_reg_def*, %struct.bb_reg_def** %24, align 8
  %26 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %25, i32 0, i32 17
  store i8* %22, i8** %26, align 8
  %27 = load i8*, i8** @rFPGA0_XAB_RFInterfaceSW, align 8
  %28 = load i64, i64* @RF_PATH_B, align 8
  %29 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %28
  %30 = load %struct.bb_reg_def*, %struct.bb_reg_def** %29, align 8
  %31 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %30, i32 0, i32 17
  store i8* %27, i8** %31, align 8
  %32 = load i8*, i8** @rFPGA0_XAB_RFInterfaceRB, align 8
  %33 = load i64, i64* @RF_PATH_A, align 8
  %34 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %33
  %35 = load %struct.bb_reg_def*, %struct.bb_reg_def** %34, align 8
  %36 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %35, i32 0, i32 16
  store i8* %32, i8** %36, align 8
  %37 = load i8*, i8** @rFPGA0_XAB_RFInterfaceRB, align 8
  %38 = load i64, i64* @RF_PATH_B, align 8
  %39 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %38
  %40 = load %struct.bb_reg_def*, %struct.bb_reg_def** %39, align 8
  %41 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %40, i32 0, i32 16
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** @rFPGA0_XA_RFInterfaceOE, align 8
  %43 = load i64, i64* @RF_PATH_A, align 8
  %44 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %43
  %45 = load %struct.bb_reg_def*, %struct.bb_reg_def** %44, align 8
  %46 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %45, i32 0, i32 15
  store i8* %42, i8** %46, align 8
  %47 = load i8*, i8** @rFPGA0_XB_RFInterfaceOE, align 8
  %48 = load i64, i64* @RF_PATH_B, align 8
  %49 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %48
  %50 = load %struct.bb_reg_def*, %struct.bb_reg_def** %49, align 8
  %51 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %50, i32 0, i32 15
  store i8* %47, i8** %51, align 8
  %52 = load i8*, i8** @rFPGA0_XA_RFInterfaceOE, align 8
  %53 = load i64, i64* @RF_PATH_A, align 8
  %54 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %53
  %55 = load %struct.bb_reg_def*, %struct.bb_reg_def** %54, align 8
  %56 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %55, i32 0, i32 14
  store i8* %52, i8** %56, align 8
  %57 = load i8*, i8** @rFPGA0_XB_RFInterfaceOE, align 8
  %58 = load i64, i64* @RF_PATH_B, align 8
  %59 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %58
  %60 = load %struct.bb_reg_def*, %struct.bb_reg_def** %59, align 8
  %61 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %60, i32 0, i32 14
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* @rFPGA0_XA_LSSIParameter, align 4
  %63 = load i64, i64* @RF_PATH_A, align 8
  %64 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %63
  %65 = load %struct.bb_reg_def*, %struct.bb_reg_def** %64, align 8
  %66 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %65, i32 0, i32 13
  store i32 %62, i32* %66, align 8
  %67 = load i32, i32* @rFPGA0_XB_LSSIParameter, align 4
  %68 = load i64, i64* @RF_PATH_B, align 8
  %69 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %68
  %70 = load %struct.bb_reg_def*, %struct.bb_reg_def** %69, align 8
  %71 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %70, i32 0, i32 13
  store i32 %67, i32* %71, align 8
  %72 = load i8*, i8** @rFPGA0_XAB_RFParameter, align 8
  %73 = load i64, i64* @RF_PATH_A, align 8
  %74 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %73
  %75 = load %struct.bb_reg_def*, %struct.bb_reg_def** %74, align 8
  %76 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %75, i32 0, i32 12
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @rFPGA0_XAB_RFParameter, align 8
  %78 = load i64, i64* @RF_PATH_B, align 8
  %79 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %78
  %80 = load %struct.bb_reg_def*, %struct.bb_reg_def** %79, align 8
  %81 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %80, i32 0, i32 12
  store i8* %77, i8** %81, align 8
  %82 = load i8*, i8** @rFPGA0_TxGainStage, align 8
  %83 = load i64, i64* @RF_PATH_A, align 8
  %84 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %83
  %85 = load %struct.bb_reg_def*, %struct.bb_reg_def** %84, align 8
  %86 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %85, i32 0, i32 11
  store i8* %82, i8** %86, align 8
  %87 = load i8*, i8** @rFPGA0_TxGainStage, align 8
  %88 = load i64, i64* @RF_PATH_B, align 8
  %89 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %88
  %90 = load %struct.bb_reg_def*, %struct.bb_reg_def** %89, align 8
  %91 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %90, i32 0, i32 11
  store i8* %87, i8** %91, align 8
  %92 = load i32, i32* @rFPGA0_XA_HSSIParameter1, align 4
  %93 = load i64, i64* @RF_PATH_A, align 8
  %94 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %93
  %95 = load %struct.bb_reg_def*, %struct.bb_reg_def** %94, align 8
  %96 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %95, i32 0, i32 10
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* @rFPGA0_XB_HSSIParameter1, align 4
  %98 = load i64, i64* @RF_PATH_B, align 8
  %99 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %98
  %100 = load %struct.bb_reg_def*, %struct.bb_reg_def** %99, align 8
  %101 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %100, i32 0, i32 10
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @rFPGA0_XA_HSSIParameter2, align 4
  %103 = load i64, i64* @RF_PATH_A, align 8
  %104 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %103
  %105 = load %struct.bb_reg_def*, %struct.bb_reg_def** %104, align 8
  %106 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %105, i32 0, i32 9
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* @rFPGA0_XB_HSSIParameter2, align 4
  %108 = load i64, i64* @RF_PATH_B, align 8
  %109 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %108
  %110 = load %struct.bb_reg_def*, %struct.bb_reg_def** %109, align 8
  %111 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %110, i32 0, i32 9
  store i32 %107, i32* %111, align 8
  %112 = load i8*, i8** @rFPGA0_XAB_SwitchControl, align 8
  %113 = load i64, i64* @RF_PATH_A, align 8
  %114 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %113
  %115 = load %struct.bb_reg_def*, %struct.bb_reg_def** %114, align 8
  %116 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %115, i32 0, i32 8
  store i8* %112, i8** %116, align 8
  %117 = load i8*, i8** @rFPGA0_XAB_SwitchControl, align 8
  %118 = load i64, i64* @RF_PATH_B, align 8
  %119 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %118
  %120 = load %struct.bb_reg_def*, %struct.bb_reg_def** %119, align 8
  %121 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %120, i32 0, i32 8
  store i8* %117, i8** %121, align 8
  %122 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %123 = load i64, i64* @RF_PATH_A, align 8
  %124 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %123
  %125 = load %struct.bb_reg_def*, %struct.bb_reg_def** %124, align 8
  %126 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %125, i32 0, i32 7
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %128 = load i64, i64* @RF_PATH_B, align 8
  %129 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %128
  %130 = load %struct.bb_reg_def*, %struct.bb_reg_def** %129, align 8
  %131 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %130, i32 0, i32 7
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @rOFDM0_XAAGCCore2, align 4
  %133 = load i64, i64* @RF_PATH_A, align 8
  %134 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %133
  %135 = load %struct.bb_reg_def*, %struct.bb_reg_def** %134, align 8
  %136 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %135, i32 0, i32 6
  store i32 %132, i32* %136, align 8
  %137 = load i32, i32* @rOFDM0_XBAGCCore2, align 4
  %138 = load i64, i64* @RF_PATH_B, align 8
  %139 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %138
  %140 = load %struct.bb_reg_def*, %struct.bb_reg_def** %139, align 8
  %141 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %140, i32 0, i32 6
  store i32 %137, i32* %141, align 8
  %142 = load i32, i32* @rOFDM0_XARxIQImbalance, align 4
  %143 = load i64, i64* @RF_PATH_A, align 8
  %144 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %143
  %145 = load %struct.bb_reg_def*, %struct.bb_reg_def** %144, align 8
  %146 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %145, i32 0, i32 5
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* @rOFDM0_XBRxIQImbalance, align 4
  %148 = load i64, i64* @RF_PATH_B, align 8
  %149 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %148
  %150 = load %struct.bb_reg_def*, %struct.bb_reg_def** %149, align 8
  %151 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %150, i32 0, i32 5
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* @rOFDM0_XARxAFE, align 4
  %153 = load i64, i64* @RF_PATH_A, align 8
  %154 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %153
  %155 = load %struct.bb_reg_def*, %struct.bb_reg_def** %154, align 8
  %156 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %155, i32 0, i32 4
  store i32 %152, i32* %156, align 8
  %157 = load i32, i32* @rOFDM0_XBRxAFE, align 4
  %158 = load i64, i64* @RF_PATH_B, align 8
  %159 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %158
  %160 = load %struct.bb_reg_def*, %struct.bb_reg_def** %159, align 8
  %161 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %160, i32 0, i32 4
  store i32 %157, i32* %161, align 8
  %162 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %163 = load i64, i64* @RF_PATH_A, align 8
  %164 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %163
  %165 = load %struct.bb_reg_def*, %struct.bb_reg_def** %164, align 8
  %166 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %165, i32 0, i32 3
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* @rOFDM0_XBTxIQImbalance, align 4
  %168 = load i64, i64* @RF_PATH_B, align 8
  %169 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %168
  %170 = load %struct.bb_reg_def*, %struct.bb_reg_def** %169, align 8
  %171 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %170, i32 0, i32 3
  store i32 %167, i32* %171, align 4
  %172 = load i32, i32* @rOFDM0_XATxAFE, align 4
  %173 = load i64, i64* @RF_PATH_A, align 8
  %174 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %173
  %175 = load %struct.bb_reg_def*, %struct.bb_reg_def** %174, align 8
  %176 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %175, i32 0, i32 2
  store i32 %172, i32* %176, align 8
  %177 = load i32, i32* @rOFDM0_XBTxAFE, align 4
  %178 = load i64, i64* @RF_PATH_B, align 8
  %179 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %178
  %180 = load %struct.bb_reg_def*, %struct.bb_reg_def** %179, align 8
  %181 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %180, i32 0, i32 2
  store i32 %177, i32* %181, align 8
  %182 = load i32, i32* @rFPGA0_XA_LSSIReadBack, align 4
  %183 = load i64, i64* @RF_PATH_A, align 8
  %184 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %183
  %185 = load %struct.bb_reg_def*, %struct.bb_reg_def** %184, align 8
  %186 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %185, i32 0, i32 1
  store i32 %182, i32* %186, align 4
  %187 = load i32, i32* @rFPGA0_XB_LSSIReadBack, align 4
  %188 = load i64, i64* @RF_PATH_B, align 8
  %189 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %188
  %190 = load %struct.bb_reg_def*, %struct.bb_reg_def** %189, align 8
  %191 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %190, i32 0, i32 1
  store i32 %187, i32* %191, align 4
  %192 = load i32, i32* @TransceiverA_HSPI_Readback, align 4
  %193 = load i64, i64* @RF_PATH_A, align 8
  %194 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %193
  %195 = load %struct.bb_reg_def*, %struct.bb_reg_def** %194, align 8
  %196 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 8
  %197 = load i32, i32* @TransceiverB_HSPI_Readback, align 4
  %198 = load i64, i64* @RF_PATH_B, align 8
  %199 = getelementptr inbounds [4 x %struct.bb_reg_def*], [4 x %struct.bb_reg_def*]* %3, i64 0, i64 %198
  %200 = load %struct.bb_reg_def*, %struct.bb_reg_def** %199, align 8
  %201 = getelementptr inbounds %struct.bb_reg_def, %struct.bb_reg_def* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
