; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_write_pll_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_write_pll_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i64, i64 }
%struct.radeon_regs = type { i32, i32, i32 }

@PPLL_REF_DIV = common dso_local global i32 0, align 4
@PPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@PPLL_DIV_3 = common dso_local global i32 0, align 4
@PPLL_POST3_DIV_MASK = common dso_local global i32 0, align 4
@PPLL_FB3_DIV_MASK = common dso_local global i32 0, align 4
@CLOCK_CNTL_INDEX = common dso_local global i32 0, align 4
@PPLL_DIV_SEL_MASK = common dso_local global i32 0, align 4
@VCLK_ECP_CNTL = common dso_local global i32 0, align 4
@VCLK_SRC_SEL_CPUCLK = common dso_local global i32 0, align 4
@VCLK_SRC_SEL_MASK = common dso_local global i32 0, align 4
@PPLL_CNTL = common dso_local global i32 0, align 4
@PPLL_RESET = common dso_local global i32 0, align 4
@PPLL_ATOMIC_UPDATE_EN = common dso_local global i32 0, align 4
@PPLL_VGA_ATOMIC_UPDATE_EN = common dso_local global i32 0, align 4
@CHIP_FAMILY_RS300 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RS400 = common dso_local global i64 0, align 8
@CHIP_FAMILY_RS480 = common dso_local global i64 0, align 8
@R300_PPLL_REF_DIV_ACC_MASK = common dso_local global i32 0, align 4
@R300_PPLL_REF_DIV_ACC_SHIFT = common dso_local global i32 0, align 4
@PPLL_ATOMIC_UPDATE_R = common dso_local global i32 0, align 4
@PPLL_ATOMIC_UPDATE_W = common dso_local global i32 0, align 4
@HTOTAL_CNTL = common dso_local global i32 0, align 4
@PPLL_SLEEP = common dso_local global i32 0, align 4
@VCLK_SRC_SEL_PPLLCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*, %struct.radeon_regs*)* @radeon_write_pll_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_write_pll_regs(%struct.radeonfb_info* %0, %struct.radeon_regs* %1) #0 {
  %3 = alloca %struct.radeonfb_info*, align 8
  %4 = alloca %struct.radeon_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %3, align 8
  store %struct.radeon_regs* %1, %struct.radeon_regs** %4, align 8
  %6 = call i32 @radeon_fifo_wait(i32 20)
  %7 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %8 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PPLL_REF_DIV, align 4
  %16 = call i32 @INPLL(i32 %15)
  %17 = load i32, i32* @PPLL_REF_DIV_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %11
  %21 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PPLL_DIV_3, align 4
  %25 = call i32 @INPLL(i32 %24)
  %26 = load i32, i32* @PPLL_POST3_DIV_MASK, align 4
  %27 = load i32, i32* @PPLL_FB3_DIV_MASK, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %20
  %32 = load i32, i32* @CLOCK_CNTL_INDEX, align 4
  %33 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PPLL_DIV_SEL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @PPLL_DIV_SEL_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = call i32 @OUTREGP(i32 %32, i32 %37, i32 %39)
  %41 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %42 = call i32 @radeon_pll_errata_after_index(%struct.radeonfb_info* %41)
  %43 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %44 = call i32 @radeon_pll_errata_after_data(%struct.radeonfb_info* %43)
  br label %193

45:                                               ; preds = %20, %11
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %48 = load i32, i32* @VCLK_SRC_SEL_CPUCLK, align 4
  %49 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @OUTPLLP(i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* @PPLL_CNTL, align 4
  %53 = load i32, i32* @PPLL_RESET, align 4
  %54 = load i32, i32* @PPLL_ATOMIC_UPDATE_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PPLL_VGA_ATOMIC_UPDATE_EN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PPLL_RESET, align 4
  %59 = load i32, i32* @PPLL_ATOMIC_UPDATE_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PPLL_VGA_ATOMIC_UPDATE_EN, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = call i32 @OUTPLLP(i32 %52, i32 %57, i32 %63)
  %65 = load i32, i32* @CLOCK_CNTL_INDEX, align 4
  %66 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %67 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PPLL_DIV_SEL_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @PPLL_DIV_SEL_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = call i32 @OUTREGP(i32 %65, i32 %70, i32 %72)
  %74 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %75 = call i32 @radeon_pll_errata_after_index(%struct.radeonfb_info* %74)
  %76 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %77 = call i32 @radeon_pll_errata_after_data(%struct.radeonfb_info* %76)
  %78 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %79 = call i64 @IS_R300_VARIANT(%struct.radeonfb_info* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %46
  %82 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %83 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHIP_FAMILY_RS300, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %89 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CHIP_FAMILY_RS400, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %95 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @CHIP_FAMILY_RS480, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %93, %87, %81, %46
  %100 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @R300_PPLL_REF_DIV_ACC_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @PPLL_REF_DIV, align 4
  %108 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %109 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @OUTPLLP(i32 %107, i32 %110, i32 0)
  br label %122

112:                                              ; preds = %99
  %113 = load i32, i32* @PPLL_REF_DIV, align 4
  %114 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %115 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @R300_PPLL_REF_DIV_ACC_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* @R300_PPLL_REF_DIV_ACC_MASK, align 4
  %120 = xor i32 %119, -1
  %121 = call i32 @OUTPLLP(i32 %113, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %112, %106
  br label %131

123:                                              ; preds = %93
  %124 = load i32, i32* @PPLL_REF_DIV, align 4
  %125 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %126 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @PPLL_REF_DIV_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = call i32 @OUTPLLP(i32 %124, i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %123, %122
  %132 = load i32, i32* @PPLL_DIV_3, align 4
  %133 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %134 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PPLL_FB3_DIV_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = call i32 @OUTPLLP(i32 %132, i32 %135, i32 %137)
  %139 = load i32, i32* @PPLL_DIV_3, align 4
  %140 = load %struct.radeon_regs*, %struct.radeon_regs** %4, align 8
  %141 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PPLL_POST3_DIV_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = call i32 @OUTPLLP(i32 %139, i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %152, %131
  %147 = load i32, i32* @PPLL_REF_DIV, align 4
  %148 = call i32 @INPLL(i32 %147)
  %149 = load i32, i32* @PPLL_ATOMIC_UPDATE_R, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %146

153:                                              ; preds = %146
  %154 = load i32, i32* @PPLL_REF_DIV, align 4
  %155 = load i32, i32* @PPLL_ATOMIC_UPDATE_W, align 4
  %156 = load i32, i32* @PPLL_ATOMIC_UPDATE_W, align 4
  %157 = xor i32 %156, -1
  %158 = call i32 @OUTPLLP(i32 %154, i32 %155, i32 %157)
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %171, %153
  %160 = load i32, i32* %5, align 4
  %161 = icmp slt i32 %160, 10000
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* @PPLL_REF_DIV, align 4
  %164 = call i32 @INPLL(i32 %163)
  %165 = load i32, i32* @PPLL_ATOMIC_UPDATE_R, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %162, %159
  %169 = phi i1 [ false, %159 ], [ %167, %162 ]
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %159

174:                                              ; preds = %168
  %175 = load i32, i32* @HTOTAL_CNTL, align 4
  %176 = call i32 @OUTPLL(i32 %175, i32 0)
  %177 = load i32, i32* @PPLL_CNTL, align 4
  %178 = load i32, i32* @PPLL_RESET, align 4
  %179 = load i32, i32* @PPLL_SLEEP, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @PPLL_ATOMIC_UPDATE_EN, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @PPLL_VGA_ATOMIC_UPDATE_EN, align 4
  %184 = or i32 %182, %183
  %185 = xor i32 %184, -1
  %186 = call i32 @OUTPLLP(i32 %177, i32 0, i32 %185)
  %187 = call i32 @radeon_msleep(i32 5)
  %188 = load i32, i32* @VCLK_ECP_CNTL, align 4
  %189 = load i32, i32* @VCLK_SRC_SEL_PPLLCLK, align 4
  %190 = load i32, i32* @VCLK_SRC_SEL_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = call i32 @OUTPLLP(i32 %188, i32 %189, i32 %191)
  br label %193

193:                                              ; preds = %174, %31
  ret void
}

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @INPLL(i32) #1

declare dso_local i32 @OUTREGP(i32, i32, i32) #1

declare dso_local i32 @radeon_pll_errata_after_index(%struct.radeonfb_info*) #1

declare dso_local i32 @radeon_pll_errata_after_data(%struct.radeonfb_info*) #1

declare dso_local i32 @OUTPLLP(i32, i32, i32) #1

declare dso_local i64 @IS_R300_VARIANT(%struct.radeonfb_info*) #1

declare dso_local i32 @OUTPLL(i32, i32) #1

declare dso_local i32 @radeon_msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
