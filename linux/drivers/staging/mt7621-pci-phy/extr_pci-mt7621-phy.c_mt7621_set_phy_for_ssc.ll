; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_set_phy_for_ssc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci-phy/extr_pci-mt7621-phy.c_mt7621_set_phy_for_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pci_phy = type { %struct.device* }
%struct.device = type { i32 }
%struct.mt7621_pci_phy_instance = type { i32 }

@SYSC_REG_SYSTEM_CONFIG0 = common dso_local global i32 0, align 4
@RG_PE1_FRC_H_XTAL_REG = common dso_local global i32 0, align 4
@RG_PE1_FRC_H_XTAL_TYPE = common dso_local global i32 0, align 4
@RG_PE1_H_XTAL_TYPE = common dso_local global i32 0, align 4
@RG_PE1_FRC_PHY_REG = common dso_local global i32 0, align 4
@RG_P0_TO_P1_WIDTH = common dso_local global i32 0, align 4
@RG_PE1_FRC_PHY_EN = common dso_local global i32 0, align 4
@RG_PE1_PHY_EN = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_REG = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_PREDIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Xtal is 40MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Xtal is 25MHz\0A\00", align 1
@RG_PE1_H_PLL_FBKSEL_REG = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_FBKSEL = common dso_local global i32 0, align 4
@RG_PE1_H_LCDDS_SSC_PRD_REG = common dso_local global i32 0, align 4
@RG_PE1_H_LCDDS_SSC_PRD = common dso_local global i32 0, align 4
@RG_PE1_H_LCDDS_SSC_DELTA_REG = common dso_local global i32 0, align 4
@RG_PE1_H_LCDDS_SSC_DELTA = common dso_local global i32 0, align 4
@RG_PE1_H_LCDDS_SSC_DELTA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Xtal is 20MHz\0A\00", align 1
@RG_PE1_LCDDS_CLK_PH_INV_REG = common dso_local global i32 0, align 4
@RG_PE1_LCDDS_CLK_PH_INV = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_BC = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_BP = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_IR = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_IC = common dso_local global i32 0, align 4
@RG_PE1_PLL_DIVEN = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_BR_REG = common dso_local global i32 0, align 4
@RG_PE1_H_PLL_BR = common dso_local global i32 0, align 4
@RG_PE1_MSTCKDIV_REG = common dso_local global i32 0, align 4
@RG_PE1_MSTCKDIV = common dso_local global i32 0, align 4
@RG_PE1_FRC_MSTCKDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_pci_phy*, %struct.mt7621_pci_phy_instance*)* @mt7621_set_phy_for_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_set_phy_for_ssc(%struct.mt7621_pci_phy* %0, %struct.mt7621_pci_phy_instance* %1) #0 {
  %3 = alloca %struct.mt7621_pci_phy*, align 8
  %4 = alloca %struct.mt7621_pci_phy_instance*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7621_pci_phy* %0, %struct.mt7621_pci_phy** %3, align 8
  store %struct.mt7621_pci_phy_instance* %1, %struct.mt7621_pci_phy_instance** %4, align 8
  %9 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %10 = getelementptr inbounds %struct.mt7621_pci_phy, %struct.mt7621_pci_phy* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load i32, i32* @SYSC_REG_SYSTEM_CONFIG0, align 4
  %13 = call i32 @rt_sysc_r32(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 6
  %16 = and i32 %15, 7
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %18 = load i32, i32* @RG_PE1_FRC_H_XTAL_REG, align 4
  %19 = call i32 @phy_read(%struct.mt7621_pci_phy* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @RG_PE1_FRC_H_XTAL_TYPE, align 4
  %21 = load i32, i32* @RG_PE1_H_XTAL_TYPE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @RG_PE1_FRC_H_XTAL_TYPE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = call i32 @RG_PE1_H_XTAL_TYPE_VAL(i32 0)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RG_PE1_FRC_H_XTAL_REG, align 4
  %35 = call i32 @phy_write(%struct.mt7621_pci_phy* %32, i32 %33, i32 %34)
  %36 = load %struct.mt7621_pci_phy_instance*, %struct.mt7621_pci_phy_instance** %4, align 8
  %37 = getelementptr inbounds %struct.mt7621_pci_phy_instance, %struct.mt7621_pci_phy_instance* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @RG_PE1_FRC_PHY_REG, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @RG_PE1_FRC_PHY_REG, align 4
  %44 = load i32, i32* @RG_P0_TO_P1_WIDTH, align 4
  %45 = add nsw i32 %43, %44
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i32 [ %41, %40 ], [ %45, %42 ]
  store i32 %47, i32* %7, align 4
  %48 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @phy_read(%struct.mt7621_pci_phy* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @RG_PE1_FRC_PHY_EN, align 4
  %52 = load i32, i32* @RG_PE1_PHY_EN, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @RG_PE1_FRC_PHY_EN, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @phy_write(%struct.mt7621_pci_phy* %60, i32 %61, i32 %62)
  %64 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %65 = load i32, i32* @RG_PE1_H_PLL_REG, align 4
  %66 = call i32 @phy_read(%struct.mt7621_pci_phy* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @RG_PE1_H_PLL_PREDIV, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp sle i32 %71, 5
  br i1 %72, label %73, label %86

73:                                               ; preds = %46
  %74 = load i32, i32* %6, align 4
  %75 = icmp sge i32 %74, 3
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = call i32 @RG_PE1_H_PLL_PREDIV_VAL(i32 1)
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @RG_PE1_H_PLL_REG, align 4
  %83 = call i32 @phy_write(%struct.mt7621_pci_phy* %80, i32 %81, i32 %82)
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_info(%struct.device* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %164

86:                                               ; preds = %73, %46
  %87 = call i32 @RG_PE1_H_PLL_PREDIV_VAL(i32 0)
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @RG_PE1_H_PLL_REG, align 4
  %93 = call i32 @phy_write(%struct.mt7621_pci_phy* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 6
  br i1 %95, label %96, label %160

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %100 = load i32, i32* @RG_PE1_H_PLL_FBKSEL_REG, align 4
  %101 = call i32 @phy_read(%struct.mt7621_pci_phy* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @RG_PE1_H_PLL_FBKSEL, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = call i32 @RG_PE1_H_PLL_FBKSEL_VAL(i32 1)
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @RG_PE1_H_PLL_FBKSEL_REG, align 4
  %112 = call i32 @phy_write(%struct.mt7621_pci_phy* %109, i32 %110, i32 %111)
  %113 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %114 = load i32, i32* @RG_PE1_H_LCDDS_SSC_PRD_REG, align 4
  %115 = call i32 @phy_read(%struct.mt7621_pci_phy* %113, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @RG_PE1_H_LCDDS_SSC_PRD, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = call i32 @RG_PE1_H_LCDDS_SSC_PRD_VAL(i32 402653184)
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @RG_PE1_H_LCDDS_SSC_PRD_REG, align 4
  %126 = call i32 @phy_write(%struct.mt7621_pci_phy* %123, i32 %124, i32 %125)
  %127 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %128 = load i32, i32* @RG_PE1_H_LCDDS_SSC_PRD_REG, align 4
  %129 = call i32 @phy_read(%struct.mt7621_pci_phy* %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @RG_PE1_H_LCDDS_SSC_PRD, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = call i32 @RG_PE1_H_LCDDS_SSC_PRD_VAL(i32 397)
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @RG_PE1_H_LCDDS_SSC_PRD_REG, align 4
  %140 = call i32 @phy_write(%struct.mt7621_pci_phy* %137, i32 %138, i32 %139)
  %141 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %142 = load i32, i32* @RG_PE1_H_LCDDS_SSC_DELTA_REG, align 4
  %143 = call i32 @phy_read(%struct.mt7621_pci_phy* %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* @RG_PE1_H_LCDDS_SSC_DELTA, align 4
  %145 = load i32, i32* @RG_PE1_H_LCDDS_SSC_DELTA1, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = call i32 @RG_PE1_H_LCDDS_SSC_DELTA_VAL(i32 74)
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = call i32 @RG_PE1_H_LCDDS_SSC_DELTA1_VAL(i32 74)
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @RG_PE1_H_LCDDS_SSC_DELTA_REG, align 4
  %159 = call i32 @phy_write(%struct.mt7621_pci_phy* %156, i32 %157, i32 %158)
  br label %163

160:                                              ; preds = %86
  %161 = load %struct.device*, %struct.device** %5, align 8
  %162 = call i32 @dev_info(%struct.device* %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %96
  br label %164

164:                                              ; preds = %163, %76
  %165 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %166 = load i32, i32* @RG_PE1_LCDDS_CLK_PH_INV_REG, align 4
  %167 = call i32 @phy_read(%struct.mt7621_pci_phy* %165, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @RG_PE1_LCDDS_CLK_PH_INV, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %8, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* @RG_PE1_LCDDS_CLK_PH_INV, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @RG_PE1_LCDDS_CLK_PH_INV_REG, align 4
  %178 = call i32 @phy_write(%struct.mt7621_pci_phy* %175, i32 %176, i32 %177)
  %179 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %180 = load i32, i32* @RG_PE1_H_PLL_REG, align 4
  %181 = call i32 @phy_read(%struct.mt7621_pci_phy* %179, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* @RG_PE1_H_PLL_BC, align 4
  %183 = load i32, i32* @RG_PE1_H_PLL_BP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @RG_PE1_H_PLL_IR, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @RG_PE1_H_PLL_IC, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @RG_PE1_PLL_DIVEN, align 4
  %190 = or i32 %188, %189
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = call i32 @RG_PE1_H_PLL_BC_VAL(i32 2)
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  %197 = call i32 @RG_PE1_H_PLL_BP_VAL(i32 6)
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = call i32 @RG_PE1_H_PLL_IR_VAL(i32 2)
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  %203 = call i32 @RG_PE1_H_PLL_IC_VAL(i32 1)
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %8, align 4
  %206 = call i32 @RG_PE1_PLL_DIVEN_VAL(i32 2)
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @RG_PE1_H_PLL_REG, align 4
  %212 = call i32 @phy_write(%struct.mt7621_pci_phy* %209, i32 %210, i32 %211)
  %213 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %214 = load i32, i32* @RG_PE1_H_PLL_BR_REG, align 4
  %215 = call i32 @phy_read(%struct.mt7621_pci_phy* %213, i32 %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* @RG_PE1_H_PLL_BR, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %8, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %8, align 4
  %220 = call i32 @RG_PE1_H_PLL_BR_VAL(i32 0)
  %221 = load i32, i32* %8, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %8, align 4
  %223 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @RG_PE1_H_PLL_BR_REG, align 4
  %226 = call i32 @phy_write(%struct.mt7621_pci_phy* %223, i32 %224, i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = icmp sle i32 %227, 5
  br i1 %228, label %229, label %251

229:                                              ; preds = %164
  %230 = load i32, i32* %6, align 4
  %231 = icmp sge i32 %230, 3
  br i1 %231, label %232, label %251

232:                                              ; preds = %229
  %233 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %234 = load i32, i32* @RG_PE1_MSTCKDIV_REG, align 4
  %235 = call i32 @phy_read(%struct.mt7621_pci_phy* %233, i32 %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* @RG_PE1_MSTCKDIV, align 4
  %237 = load i32, i32* @RG_PE1_FRC_MSTCKDIV, align 4
  %238 = or i32 %236, %237
  %239 = xor i32 %238, -1
  %240 = load i32, i32* %8, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %8, align 4
  %242 = call i32 @RG_PE1_MSTCKDIV_VAL(i32 1)
  %243 = load i32, i32* @RG_PE1_FRC_MSTCKDIV, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* %8, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %8, align 4
  %247 = load %struct.mt7621_pci_phy*, %struct.mt7621_pci_phy** %3, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @RG_PE1_MSTCKDIV_REG, align 4
  %250 = call i32 @phy_write(%struct.mt7621_pci_phy* %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %232, %229, %164
  ret void
}

declare dso_local i32 @rt_sysc_r32(i32) #1

declare dso_local i32 @phy_read(%struct.mt7621_pci_phy*, i32) #1

declare dso_local i32 @RG_PE1_H_XTAL_TYPE_VAL(i32) #1

declare dso_local i32 @phy_write(%struct.mt7621_pci_phy*, i32, i32) #1

declare dso_local i32 @RG_PE1_H_PLL_PREDIV_VAL(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @RG_PE1_H_PLL_FBKSEL_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_LCDDS_SSC_PRD_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_LCDDS_SSC_DELTA_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_LCDDS_SSC_DELTA1_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_PLL_BC_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_PLL_BP_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_PLL_IR_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_PLL_IC_VAL(i32) #1

declare dso_local i32 @RG_PE1_PLL_DIVEN_VAL(i32) #1

declare dso_local i32 @RG_PE1_H_PLL_BR_VAL(i32) #1

declare dso_local i32 @RG_PE1_MSTCKDIV_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
