; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_fwio.c_cw1200_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_fwio.c_cw1200_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@ST90TDS_CONFIG_REG_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can't read config register.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad config register value (0x%08x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't deduce hardware type.\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@ST90TDS_TSET_GEN_R_W_REG_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Can't write DPLL register.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Can't read DPLL register.\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Unable to initialise DPLL register. Wrote 0x%.8X, Read 0x%.8X.\0A\00", align 1
@ST90TDS_CONTROL_REG_ID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"set_wakeup: can't read control register.\0A\00", align 1
@ST90TDS_CONT_WUP_BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"set_wakeup: can't write control register.\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"wait_for_wakeup: can't read control register.\0A\00", align 1
@ST90TDS_CONT_RDY_BIT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"wait_for_wakeup: device is not responding.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CW1200_CUT_ID_ADDR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"HW detection: can't read CUT ID.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"CW1x00 Cut 1.1 silicon detected.\0A\00", align 1
@CW1200_HW_REV_CUT11 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"CW1x00 Cut 1.0 silicon detected.\0A\00", align 1
@CW1200_HW_REV_CUT10 = common dso_local global i32 0, align 4
@CW1200_CUT2_ID_ADDR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"(1) HW detection: can't read CUT ID\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"(2) HW detection: can't read CUT ID.\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"(3) HW detection: can't read CUT ID.\0A\00", align 1
@CW1200_CUT_22_ID_STR1 = common dso_local global i32 0, align 4
@CW1200_CUT_22_ID_STR2 = common dso_local global i32 0, align 4
@CW1200_CUT_22_ID_STR3 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"CW1x00 Cut 2.2 silicon detected.\0A\00", align 1
@CW1200_HW_REV_CUT22 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"CW1x00 Cut 2.0 silicon detected.\0A\00", align 1
@CW1200_HW_REV_CUT20 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"CW1x60 silicon detected.\0A\00", align 1
@CW1X60_HW_REV = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"Unsupported silicon major revision %d.\0A\00", align 1
@ST90TDS_CONFIG_ACCESS_MODE_BIT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"Device is already in QUEUE mode!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [45 x i8] c"Can't handle CW1160/1260 firmware load yet.\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Can't perform firmware load for hw type %d.\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Firmware load error.\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Can't write config register.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_load_firmware(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 -1, i32* %8, align 4
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %13 = load i32, i32* @ST90TDS_CONFIG_REG_ID, align 4
  %14 = call i32 @cw1200_reg_read_32(%struct.cw1200_common* %12, i32 %13, i32* %6)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %312

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %312

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @cw1200_get_hw_type(i32 %31, i32* %8)
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %312

43:                                               ; preds = %30
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %45 = load i32, i32* @ST90TDS_TSET_GEN_R_W_REG_ID, align 4
  %46 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %47 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cw1200_dpll_from_clk(i32 %48)
  %50 = call i32 @cw1200_reg_write_32(%struct.cw1200_common* %44, i32 %45, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %312

55:                                               ; preds = %43
  %56 = call i32 @msleep(i32 20)
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %58 = load i32, i32* @ST90TDS_TSET_GEN_R_W_REG_ID, align 4
  %59 = call i32 @cw1200_reg_read_32(%struct.cw1200_common* %57, i32 %58, i32* %6)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %312

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %67 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @cw1200_dpll_from_clk(i32 %68)
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %73 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cw1200_dpll_from_clk(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %312

80:                                               ; preds = %64
  %81 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %82 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %83 = call i32 @cw1200_reg_read_16(%struct.cw1200_common* %81, i32 %82, i32* %7)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %312

88:                                               ; preds = %80
  %89 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %90 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ST90TDS_CONT_WUP_BIT, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @cw1200_reg_write_16(%struct.cw1200_common* %89, i32 %90, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %312

99:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %120, %99
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 300
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %105 = load i32, i32* @ST90TDS_CONTROL_REG_ID, align 4
  %106 = call i32 @cw1200_reg_read_16(%struct.cw1200_common* %104, i32 %105, i32* %7)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %312

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @ST90TDS_CONT_RDY_BIT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %126

117:                                              ; preds = %111
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @msleep(i32 %118)
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = sdiv i32 %121, 2
  %123 = add nsw i32 1, %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %100

126:                                              ; preds = %116, %100
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ST90TDS_CONT_RDY_BIT, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i32, i32* @ETIMEDOUT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %312

135:                                              ; preds = %126
  %136 = load i32, i32* %8, align 4
  switch i32 %136, label %216 [
    i32 1, label %137
    i32 2, label %162
    i32 4, label %211
  ]

137:                                              ; preds = %135
  %138 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %139 = load i32, i32* @CW1200_CUT_ID_ADDR, align 4
  %140 = call i32 @cw1200_ahb_read_32(%struct.cw1200_common* %138, i32 %139, i32* %6)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %312

145:                                              ; preds = %137
  %146 = load i32, i32* %6, align 4
  switch i32 %146, label %152 [
    i32 129, label %147
  ]

147:                                              ; preds = %145
  %148 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %149 = load i32, i32* @CW1200_HW_REV_CUT11, align 4
  %150 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %151 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %157

152:                                              ; preds = %145
  %153 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %154 = load i32, i32* @CW1200_HW_REV_CUT10, align 4
  %155 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %156 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %159 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  %160 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %161 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %160, i32 0, i32 4
  store i32 0, i32* %161, align 8
  br label %221

162:                                              ; preds = %135
  %163 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %164 = load i32, i32* @CW1200_CUT2_ID_ADDR, align 4
  %165 = call i32 @cw1200_ahb_read_32(%struct.cw1200_common* %163, i32 %164, i32* %9)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %312

170:                                              ; preds = %162
  %171 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %172 = load i32, i32* @CW1200_CUT2_ID_ADDR, align 4
  %173 = add nsw i32 %172, 4
  %174 = call i32 @cw1200_ahb_read_32(%struct.cw1200_common* %171, i32 %173, i32* %10)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %170
  %178 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  br label %312

179:                                              ; preds = %170
  %180 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %181 = load i32, i32* @CW1200_CUT2_ID_ADDR, align 4
  %182 = add nsw i32 %181, 8
  %183 = call i32 @cw1200_ahb_read_32(%struct.cw1200_common* %180, i32 %182, i32* %11)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  br label %312

188:                                              ; preds = %179
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @CW1200_CUT_22_ID_STR1, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @CW1200_CUT_22_ID_STR2, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @CW1200_CUT_22_ID_STR3, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %202 = load i32, i32* @CW1200_HW_REV_CUT22, align 4
  %203 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %204 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  br label %210

205:                                              ; preds = %196, %192, %188
  %206 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %207 = load i32, i32* @CW1200_HW_REV_CUT20, align 4
  %208 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %209 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %200
  br label %221

211:                                              ; preds = %135
  %212 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %213 = load i32, i32* @CW1X60_HW_REV, align 4
  %214 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %215 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  br label %221

216:                                              ; preds = %135
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @ENOTSUPP, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %312

221:                                              ; preds = %211, %210, %157
  %222 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %223 = call i32 @config_reg_read(%struct.cw1200_common* %222, i32* %6)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %312

228:                                              ; preds = %221
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @ST90TDS_CONFIG_ACCESS_MODE_BIT, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %228
  %234 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %4, align 4
  br label %312

237:                                              ; preds = %228
  %238 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %239 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  switch i32 %240, label %254 [
    i32 128, label %241
  ]

241:                                              ; preds = %237
  %242 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %243 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @CW1X60_HW_REV, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  %249 = load i32, i32* @ENOTSUPP, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %4, align 4
  br label %312

251:                                              ; preds = %241
  %252 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %253 = call i32 @cw1200_load_firmware_cw1200(%struct.cw1200_common* %252)
  store i32 %253, i32* %4, align 4
  br label %261

254:                                              ; preds = %237
  %255 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %256 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @ENOTSUPP, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %4, align 4
  br label %312

261:                                              ; preds = %251
  %262 = load i32, i32* %4, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  br label %312

266:                                              ; preds = %261
  %267 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %268 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %267, i32 0, i32 1
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 1
  %271 = load i32 (i32)*, i32 (i32)** %270, align 8
  %272 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %273 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 %271(i32 %274)
  %276 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %277 = call i32 @__cw1200_irq_enable(%struct.cw1200_common* %276, i32 1)
  store i32 %277, i32* %4, align 4
  %278 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %279 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %278, i32 0, i32 1
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 0
  %282 = load i32 (i32)*, i32 (i32)** %281, align 8
  %283 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %284 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 %282(i32 %285)
  %287 = load i32, i32* %4, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %266
  br label %314

290:                                              ; preds = %266
  %291 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %292 = call i32 @config_reg_read(%struct.cw1200_common* %291, i32* %6)
  store i32 %292, i32* %4, align 4
  %293 = load i32, i32* %4, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %314

297:                                              ; preds = %290
  %298 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @ST90TDS_CONFIG_ACCESS_MODE_BIT, align 4
  %301 = xor i32 %300, -1
  %302 = and i32 %299, %301
  %303 = call i32 @config_reg_write(%struct.cw1200_common* %298, i32 %302)
  store i32 %303, i32* %4, align 4
  %304 = load i32, i32* %4, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %297
  %307 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  br label %314

308:                                              ; preds = %297
  %309 = call i32 @mdelay(i32 10)
  %310 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %311 = call i32 @config_reg_read(%struct.cw1200_common* %310, i32* %6)
  br label %312

312:                                              ; preds = %308, %264, %254, %247, %233, %226, %216, %186, %177, %168, %143, %131, %109, %97, %86, %71, %62, %53, %39, %25, %17
  %313 = load i32, i32* %4, align 4
  store i32 %313, i32* %2, align 4
  br label %336

314:                                              ; preds = %306, %295, %289
  %315 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %316 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %315, i32 0, i32 1
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 1
  %319 = load i32 (i32)*, i32 (i32)** %318, align 8
  %320 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %321 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 %319(i32 %322)
  %324 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %325 = call i32 @__cw1200_irq_enable(%struct.cw1200_common* %324, i32 0)
  store i32 %325, i32* %4, align 4
  %326 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %327 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %326, i32 0, i32 1
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 0
  %330 = load i32 (i32)*, i32 (i32)** %329, align 8
  %331 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %332 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 %330(i32 %333)
  %335 = load i32, i32* %4, align 4
  store i32 %335, i32* %2, align 4
  br label %336

336:                                              ; preds = %314, %312
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @cw1200_reg_read_32(%struct.cw1200_common*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @cw1200_get_hw_type(i32, i32*) #1

declare dso_local i32 @cw1200_reg_write_32(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_dpll_from_clk(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cw1200_reg_read_16(%struct.cw1200_common*, i32, i32*) #1

declare dso_local i32 @cw1200_reg_write_16(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_ahb_read_32(%struct.cw1200_common*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @config_reg_read(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @cw1200_load_firmware_cw1200(%struct.cw1200_common*) #1

declare dso_local i32 @__cw1200_irq_enable(%struct.cw1200_common*, i32) #1

declare dso_local i32 @config_reg_write(%struct.cw1200_common*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
