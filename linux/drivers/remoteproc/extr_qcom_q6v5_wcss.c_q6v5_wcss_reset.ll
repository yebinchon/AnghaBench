; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5_wcss = type { i64, i32 }

@Q6SS_RESET_REG = common dso_local global i64 0, align 8
@Q6SS_CORE_ARES = common dso_local global i32 0, align 4
@Q6SS_BUS_ARES_ENABLE = common dso_local global i32 0, align 4
@Q6SS_STOP_CORE = common dso_local global i32 0, align 4
@Q6SS_XO_CBCR = common dso_local global i64 0, align 8
@HALT_CHECK_MAX_LOOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"xo cbcr enabling timed out (rc:%d)\0A\00", align 1
@Q6SS_PWR_CTL_REG = common dso_local global i64 0, align 8
@Q6SS_BHS_ON = common dso_local global i32 0, align 4
@Q6SS_LDO_BYP = common dso_local global i32 0, align 4
@Q6SS_CLAMP_QMC_MEM = common dso_local global i32 0, align 4
@Q6SS_L2DATA_STBY_N = common dso_local global i32 0, align 4
@Q6SS_SLP_RET_N = common dso_local global i32 0, align 4
@Q6SS_MEM_PWR_CTL = common dso_local global i64 0, align 8
@MEM_BANKS = common dso_local global i32 0, align 4
@Q6SS_CLAMP_WL = common dso_local global i32 0, align 4
@Q6SS_CLAMP_IO = common dso_local global i32 0, align 4
@Q6SS_GFMUX_CTL_REG = common dso_local global i64 0, align 8
@Q6SS_CLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5_wcss*)* @q6v5_wcss_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_reset(%struct.q6v5_wcss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5_wcss*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.q6v5_wcss* %0, %struct.q6v5_wcss** %3, align 8
  %7 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %8 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @Q6SS_RESET_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @Q6SS_CORE_ARES, align 4
  %14 = load i32, i32* @Q6SS_BUS_ARES_ENABLE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @Q6SS_STOP_CORE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %22 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @Q6SS_RESET_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %28 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @Q6SS_XO_CBCR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %37 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @Q6SS_XO_CBCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %43 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @Q6SS_XO_CBCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BIT(i32 31)
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* @HALT_CHECK_MAX_LOOPS, align 4
  %55 = call i32 @readl_poll_timeout(i64 %46, i32 %47, i32 %53, i32 1, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %1
  %59 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %60 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %235

65:                                               ; preds = %1
  %66 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %67 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @Q6SS_BHS_ON, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %77 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = call i32 @udelay(i32 1)
  %83 = load i32, i32* @Q6SS_LDO_BYP, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %88 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  %93 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %94 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @readl(i64 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @Q6SS_CLAMP_QMC_MEM, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %105 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load i32, i32* @Q6SS_L2DATA_STBY_N, align 4
  %111 = load i32, i32* @Q6SS_SLP_RET_N, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %117 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  %122 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %123 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @Q6SS_MEM_PWR_CTL, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @MEM_BANKS, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %153, %65
  %130 = load i32, i32* %6, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %129
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @BIT(i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %139 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @Q6SS_MEM_PWR_CTL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel(i32 %137, i64 %142)
  %144 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %145 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @Q6SS_MEM_PWR_CTL, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @readl(i64 %148)
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = call i32 @udelay(i32 1)
  br label %153

153:                                              ; preds = %132
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %6, align 4
  br label %129

156:                                              ; preds = %129
  %157 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %158 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @readl(i64 %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @Q6SS_CLAMP_WL, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %169 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  %174 = load i32, i32* @Q6SS_CLAMP_IO, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %5, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %180 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @Q6SS_PWR_CTL_REG, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  %185 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %186 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @Q6SS_RESET_REG, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @readl(i64 %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* @Q6SS_CORE_ARES, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %5, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %197 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @Q6SS_RESET_REG, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel(i32 %195, i64 %200)
  %202 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %203 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @Q6SS_GFMUX_CTL_REG, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @readl(i64 %206)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* @Q6SS_CLK_ENABLE, align 4
  %209 = load i32, i32* %5, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %5, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %213 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @Q6SS_GFMUX_CTL_REG, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 %211, i64 %216)
  %218 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %219 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @Q6SS_RESET_REG, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @readl(i64 %222)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* @Q6SS_STOP_CORE, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %5, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %3, align 8
  %230 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @Q6SS_RESET_REG, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @writel(i32 %228, i64 %233)
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %156, %58
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
