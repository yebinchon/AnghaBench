; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5proc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5proc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i64, i32, i64, i64 }

@MSS_SDM845 = common dso_local global i64 0, align 8
@QDSP6SS_SLEEP = common dso_local global i64 0, align 8
@SLEEP_CHECK_MAX_LOOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"QDSP6SS Sleep clock timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QDSP6SS_BOOT_CORE_START = common dso_local global i64 0, align 8
@QDSP6SS_BOOT_CMD = common dso_local global i64 0, align 8
@RMB_MBA_MSS_STATUS = common dso_local global i64 0, align 8
@BOOT_FSM_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Boot FSM failed to complete.\0A\00", align 1
@MSS_MSM8996 = common dso_local global i64 0, align 8
@QDSP6SS_ACC_OVERRIDE_VAL = common dso_local global i32 0, align 4
@QDSP6SS_STRAP_ACC = common dso_local global i64 0, align 8
@QDSP6SS_RESET_REG = common dso_local global i64 0, align 8
@Q6SS_CORE_ARES = common dso_local global i32 0, align 4
@Q6SS_BUS_ARES_ENABLE = common dso_local global i32 0, align 4
@Q6SS_STOP_CORE = common dso_local global i32 0, align 4
@QDSP6SS_XO_CBCR = common dso_local global i64 0, align 8
@HALT_CHECK_MAX_LOOPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"xo cbcr enabling timed out (rc:%d)\0A\00", align 1
@QDSP6SS_PWR_CTL_REG = common dso_local global i64 0, align 8
@QDSP6v56_BHS_ON = common dso_local global i32 0, align 4
@QDSP6v56_LDO_BYP = common dso_local global i32 0, align 4
@QDSP6v56_CLAMP_QMC_MEM = common dso_local global i32 0, align 4
@Q6SS_L2DATA_STBY_N = common dso_local global i32 0, align 4
@Q6SS_SLP_RET_N = common dso_local global i32 0, align 4
@QDSP6SS_MEM_PWR_CTL = common dso_local global i64 0, align 8
@QDSP6v56_CLAMP_WL = common dso_local global i32 0, align 4
@QDSS_BHS_ON = common dso_local global i32 0, align 4
@QDSS_LDO_BYP = common dso_local global i32 0, align 4
@Q6SS_L2TAG_SLP_NRET_N = common dso_local global i32 0, align 4
@Q6SS_ETB_SLP_NRET_N = common dso_local global i32 0, align 4
@Q6SS_L2DATA_SLP_NRET_N_2 = common dso_local global i32 0, align 4
@Q6SS_L2DATA_SLP_NRET_N_1 = common dso_local global i32 0, align 4
@Q6SS_L2DATA_SLP_NRET_N_0 = common dso_local global i32 0, align 4
@Q6SS_CLAMP_IO = common dso_local global i32 0, align 4
@QDSP6SS_GFMUX_CTL_REG = common dso_local global i64 0, align 8
@Q6SS_CLK_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"PBL boot timed out\0A\00", align 1
@RMB_PBL_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"PBL returned unexpected status %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*)* @q6v5proc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5proc_reset(%struct.q6v5* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %3, align 8
  %7 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %8 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MSS_SDM845, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %88

12:                                               ; preds = %1
  %13 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %14 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QDSP6SS_SLEEP, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %23 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QDSP6SS_SLEEP, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %29 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @QDSP6SS_SLEEP, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @BIT(i32 31)
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @SLEEP_CHECK_MAX_LOOPS, align 4
  %41 = call i32 @readl_poll_timeout(i64 %32, i32 %33, i32 %39, i32 1, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %12
  %45 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %46 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %467

51:                                               ; preds = %12
  %52 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %53 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QDSP6SS_BOOT_CORE_START, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 1, i64 %56)
  %58 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %59 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @QDSP6SS_BOOT_CMD, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 1, i64 %62)
  %64 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %65 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RMB_MBA_MSS_STATUS, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @BIT(i32 0)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* @BOOT_FSM_TIMEOUT, align 4
  %76 = call i32 @readl_poll_timeout(i64 %68, i32 %69, i32 %74, i32 10, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %51
  %80 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %81 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %85 = call i32 @q6v5_reset_deassert(%struct.q6v5* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %467

87:                                               ; preds = %51
  br label %439

88:                                               ; preds = %1
  %89 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %90 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MSS_MSM8996, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %276

94:                                               ; preds = %88
  %95 = load i32, i32* @QDSP6SS_ACC_OVERRIDE_VAL, align 4
  %96 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %97 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @QDSP6SS_STRAP_ACC, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %103 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl(i64 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @Q6SS_CORE_ARES, align 4
  %109 = load i32, i32* @Q6SS_BUS_ARES_ENABLE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @Q6SS_STOP_CORE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %117 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %123 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @QDSP6SS_XO_CBCR, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, 1
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %132 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @QDSP6SS_XO_CBCR, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %138 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @QDSP6SS_XO_CBCR, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @BIT(i32 31)
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* @HALT_CHECK_MAX_LOOPS, align 4
  %150 = call i32 @readl_poll_timeout(i64 %141, i32 %142, i32 %148, i32 1, i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %94
  %154 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %155 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %467

160:                                              ; preds = %94
  %161 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %162 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* @QDSP6v56_BHS_ON, align 4
  %168 = load i32, i32* %4, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %172 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @writel(i32 %170, i64 %175)
  %177 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %178 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @readl(i64 %181)
  %183 = load i32, i32* %4, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %4, align 4
  %185 = call i32 @udelay(i32 1)
  %186 = load i32, i32* @QDSP6v56_LDO_BYP, align 4
  %187 = load i32, i32* %4, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %4, align 4
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %191 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  %196 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %197 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @readl(i64 %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* @QDSP6v56_CLAMP_QMC_MEM, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %4, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %208 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writel(i32 %206, i64 %211)
  %213 = load i32, i32* @Q6SS_L2DATA_STBY_N, align 4
  %214 = load i32, i32* @Q6SS_SLP_RET_N, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %4, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %220 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writel(i32 %218, i64 %223)
  %225 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %226 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @QDSP6SS_MEM_PWR_CTL, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @readl(i64 %229)
  store i32 %230, i32* %4, align 4
  store i32 19, i32* %6, align 4
  br label %231

231:                                              ; preds = %255, %160
  %232 = load i32, i32* %6, align 4
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %258

234:                                              ; preds = %231
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @BIT(i32 %235)
  %237 = load i32, i32* %4, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* %4, align 4
  %240 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %241 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @QDSP6SS_MEM_PWR_CTL, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @writel(i32 %239, i64 %244)
  %246 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %247 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @QDSP6SS_MEM_PWR_CTL, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @readl(i64 %250)
  %252 = load i32, i32* %4, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %4, align 4
  %254 = call i32 @udelay(i32 1)
  br label %255

255:                                              ; preds = %234
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %6, align 4
  br label %231

258:                                              ; preds = %231
  %259 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %260 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @readl(i64 %263)
  store i32 %264, i32* %4, align 4
  %265 = load i32, i32* @QDSP6v56_CLAMP_WL, align 4
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %4, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* %4, align 4
  %270 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %271 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @writel(i32 %269, i64 %274)
  br label %376

276:                                              ; preds = %88
  %277 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %278 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @readl(i64 %281)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* @Q6SS_CORE_ARES, align 4
  %284 = load i32, i32* @Q6SS_BUS_ARES_ENABLE, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @Q6SS_STOP_CORE, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* %4, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %4, align 4
  %290 = load i32, i32* %4, align 4
  %291 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %292 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %295 = add nsw i64 %293, %294
  %296 = call i32 @writel(i32 %290, i64 %295)
  %297 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %298 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @readl(i64 %301)
  store i32 %302, i32* %4, align 4
  %303 = load i32, i32* @QDSS_BHS_ON, align 4
  %304 = load i32, i32* @QDSS_LDO_BYP, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* %4, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %4, align 4
  %308 = load i32, i32* %4, align 4
  %309 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %310 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %313 = add nsw i64 %311, %312
  %314 = call i32 @writel(i32 %308, i64 %313)
  %315 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %316 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @readl(i64 %319)
  %321 = load i32, i32* %4, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %4, align 4
  %323 = call i32 @udelay(i32 1)
  %324 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %325 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %328 = add nsw i64 %326, %327
  %329 = call i32 @readl(i64 %328)
  store i32 %329, i32* %4, align 4
  %330 = load i32, i32* @Q6SS_SLP_RET_N, align 4
  %331 = load i32, i32* @Q6SS_L2TAG_SLP_NRET_N, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @Q6SS_ETB_SLP_NRET_N, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @Q6SS_L2DATA_STBY_N, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* %4, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %4, align 4
  %339 = load i32, i32* %4, align 4
  %340 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %341 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %344 = add nsw i64 %342, %343
  %345 = call i32 @writel(i32 %339, i64 %344)
  %346 = load i32, i32* @Q6SS_L2DATA_SLP_NRET_N_2, align 4
  %347 = load i32, i32* %4, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %4, align 4
  %349 = load i32, i32* %4, align 4
  %350 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %351 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %354 = add nsw i64 %352, %353
  %355 = call i32 @writel(i32 %349, i64 %354)
  %356 = load i32, i32* @Q6SS_L2DATA_SLP_NRET_N_1, align 4
  %357 = load i32, i32* %4, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %4, align 4
  %359 = load i32, i32* %4, align 4
  %360 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %361 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %364 = add nsw i64 %362, %363
  %365 = call i32 @writel(i32 %359, i64 %364)
  %366 = load i32, i32* @Q6SS_L2DATA_SLP_NRET_N_0, align 4
  %367 = load i32, i32* %4, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %4, align 4
  %369 = load i32, i32* %4, align 4
  %370 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %371 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %374 = add nsw i64 %372, %373
  %375 = call i32 @writel(i32 %369, i64 %374)
  br label %376

376:                                              ; preds = %276, %258
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* @Q6SS_CLAMP_IO, align 4
  %379 = xor i32 %378, -1
  %380 = load i32, i32* %4, align 4
  %381 = and i32 %380, %379
  store i32 %381, i32* %4, align 4
  %382 = load i32, i32* %4, align 4
  %383 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %384 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @QDSP6SS_PWR_CTL_REG, align 8
  %387 = add nsw i64 %385, %386
  %388 = call i32 @writel(i32 %382, i64 %387)
  %389 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %390 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %393 = add nsw i64 %391, %392
  %394 = call i32 @readl(i64 %393)
  store i32 %394, i32* %4, align 4
  %395 = load i32, i32* @Q6SS_CORE_ARES, align 4
  %396 = xor i32 %395, -1
  %397 = load i32, i32* %4, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %4, align 4
  %399 = load i32, i32* %4, align 4
  %400 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %401 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %404 = add nsw i64 %402, %403
  %405 = call i32 @writel(i32 %399, i64 %404)
  %406 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %407 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @QDSP6SS_GFMUX_CTL_REG, align 8
  %410 = add nsw i64 %408, %409
  %411 = call i32 @readl(i64 %410)
  store i32 %411, i32* %4, align 4
  %412 = load i32, i32* @Q6SS_CLK_ENABLE, align 4
  %413 = load i32, i32* %4, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %4, align 4
  %415 = load i32, i32* %4, align 4
  %416 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %417 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @QDSP6SS_GFMUX_CTL_REG, align 8
  %420 = add nsw i64 %418, %419
  %421 = call i32 @writel(i32 %415, i64 %420)
  %422 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %423 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %426 = add nsw i64 %424, %425
  %427 = call i32 @readl(i64 %426)
  store i32 %427, i32* %4, align 4
  %428 = load i32, i32* @Q6SS_STOP_CORE, align 4
  %429 = xor i32 %428, -1
  %430 = load i32, i32* %4, align 4
  %431 = and i32 %430, %429
  store i32 %431, i32* %4, align 4
  %432 = load i32, i32* %4, align 4
  %433 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %434 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @QDSP6SS_RESET_REG, align 8
  %437 = add nsw i64 %435, %436
  %438 = call i32 @writel(i32 %432, i64 %437)
  br label %439

439:                                              ; preds = %377, %87
  %440 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %441 = call i32 @q6v5_rmb_pbl_wait(%struct.q6v5* %440, i32 1000)
  store i32 %441, i32* %5, align 4
  %442 = load i32, i32* %5, align 4
  %443 = load i32, i32* @ETIMEDOUT, align 4
  %444 = sub nsw i32 0, %443
  %445 = icmp eq i32 %442, %444
  br i1 %445, label %446, label %451

446:                                              ; preds = %439
  %447 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %448 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = call i32 (i32, i8*, ...) @dev_err(i32 %449, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %465

451:                                              ; preds = %439
  %452 = load i32, i32* %5, align 4
  %453 = load i32, i32* @RMB_PBL_SUCCESS, align 4
  %454 = icmp ne i32 %452, %453
  br i1 %454, label %455, label %463

455:                                              ; preds = %451
  %456 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %457 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* %5, align 4
  %460 = call i32 (i32, i8*, ...) @dev_err(i32 %458, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %459)
  %461 = load i32, i32* @EINVAL, align 4
  %462 = sub nsw i32 0, %461
  store i32 %462, i32* %5, align 4
  br label %464

463:                                              ; preds = %451
  store i32 0, i32* %5, align 4
  br label %464

464:                                              ; preds = %463, %455
  br label %465

465:                                              ; preds = %464, %446
  %466 = load i32, i32* %5, align 4
  store i32 %466, i32* %2, align 4
  br label %467

467:                                              ; preds = %465, %153, %79, %44
  %468 = load i32, i32* %2, align 4
  ret i32 %468
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @q6v5_reset_deassert(%struct.q6v5*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @q6v5_rmb_pbl_wait(%struct.q6v5*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
