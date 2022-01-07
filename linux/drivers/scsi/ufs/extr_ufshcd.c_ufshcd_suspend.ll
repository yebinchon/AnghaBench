; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@UFS_POWERDOWN_PWR_MODE = common dso_local global i32 0, align 4
@UIC_LINK_OFF_STATE = common dso_local global i32 0, align 4
@UFS_ACTIVE_PWR_MODE = common dso_local global i32 0, align 4
@UIC_LINK_ACTIVE_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLKS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufshcd_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_suspend(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ufshcd_is_shutdown_pm(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ufshcd_is_runtime_pm(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %20 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %24 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ufs_get_pm_lvl_to_dev_pwr_mode(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ufs_get_pm_lvl_to_link_pwr_state(i32 %30)
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @UFS_POWERDOWN_PWR_MODE, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @UIC_LINK_OFF_STATE, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %37 = call i32 @ufshcd_hold(%struct.ufs_hba* %36, i32 0)
  %38 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %39 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %42 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  %47 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %48 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @cancel_work_sync(i32* %49)
  %51 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %52 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @cancel_work_sync(i32* %53)
  %55 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %56 = call i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba* %55)
  br label %57

57:                                               ; preds = %46, %35
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @UFS_ACTIVE_PWR_MODE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @UIC_LINK_ACTIVE_STATE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %148

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %69 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %75 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %223

79:                                               ; preds = %72, %66
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %81 = call i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %85 = call i32 @ufshcd_is_link_active(%struct.ufs_hba* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %223

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @ufshcd_is_runtime_pm(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %96 = call i64 @ufshcd_can_autobkops_during_suspend(%struct.ufs_hba* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %100 = call i32 @ufshcd_urgent_bkops(%struct.ufs_hba* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %223

104:                                              ; preds = %98
  br label %108

105:                                              ; preds = %94
  %106 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %107 = call i32 @ufshcd_disable_auto_bkops(%struct.ufs_hba* %106)
  br label %108

108:                                              ; preds = %105, %104
  br label %109

109:                                              ; preds = %108, %90
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %112 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %109
  %116 = load i32, i32* %4, align 4
  %117 = call i64 @ufshcd_is_runtime_pm(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %121 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119, %115
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @ufshcd_is_runtime_pm(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %130 = call i32 @ufshcd_disable_auto_bkops(%struct.ufs_hba* %129)
  %131 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @ufshcd_set_dev_pwr_mode(%struct.ufs_hba* %131, i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %223

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %124, %109
  %139 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @ufshcd_link_state_transition(%struct.ufs_hba* %139, i32 %140, i32 1)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %214

145:                                              ; preds = %138
  %146 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %147 = call i32 @ufshcd_vreg_set_lpm(%struct.ufs_hba* %146)
  br label %148

148:                                              ; preds = %145, %65
  %149 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @ufshcd_vops_suspend(%struct.ufs_hba* %149, i32 %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %183

155:                                              ; preds = %148
  %156 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %157 = call i32 @ufshcd_is_link_active(%struct.ufs_hba* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %161 = call i32 @ufshcd_setup_clocks(%struct.ufs_hba* %160, i32 0)
  br label %165

162:                                              ; preds = %155
  %163 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %164 = call i32 @__ufshcd_setup_clocks(%struct.ufs_hba* %163, i32 0, i32 1)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* @CLKS_OFF, align 4
  %167 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %168 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %171 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dev_name(i32 %172)
  %174 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %175 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @trace_ufshcd_clk_gating(i32 %173, i32 %177)
  %179 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %180 = call i32 @ufshcd_disable_irq(%struct.ufs_hba* %179)
  %181 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %182 = call i32 @ufshcd_hba_vreg_set_lpm(%struct.ufs_hba* %181)
  br label %238

183:                                              ; preds = %154
  %184 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %185 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %191 = call i32 @ufshcd_resume_clkscaling(%struct.ufs_hba* %190)
  br label %192

192:                                              ; preds = %189, %183
  %193 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %194 = call i32 @ufshcd_vreg_set_hpm(%struct.ufs_hba* %193)
  %195 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %196 = call i64 @ufshcd_is_link_hibern8(%struct.ufs_hba* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %200 = call i32 @ufshcd_uic_hibern8_exit(%struct.ufs_hba* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %204 = call i32 @ufshcd_set_link_active(%struct.ufs_hba* %203)
  br label %213

205:                                              ; preds = %198, %192
  %206 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %207 = call i64 @ufshcd_is_link_off(%struct.ufs_hba* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %211 = call i32 @ufshcd_host_reset_and_restore(%struct.ufs_hba* %210)
  br label %212

212:                                              ; preds = %209, %205
  br label %213

213:                                              ; preds = %212, %202
  br label %214

214:                                              ; preds = %213, %144
  %215 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %216 = load i32, i32* @UFS_ACTIVE_PWR_MODE, align 4
  %217 = call i32 @ufshcd_set_dev_pwr_mode(%struct.ufs_hba* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %214
  %220 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %221 = call i32 @ufshcd_disable_auto_bkops(%struct.ufs_hba* %220)
  br label %222

222:                                              ; preds = %219, %214
  br label %223

223:                                              ; preds = %222, %136, %103, %87, %78
  %224 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %225 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %224, i32 0, i32 7
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %231 = call i32 @ufshcd_resume_clkscaling(%struct.ufs_hba* %230)
  br label %232

232:                                              ; preds = %229, %223
  %233 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %234 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  store i32 0, i32* %235, align 8
  %236 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %237 = call i32 @ufshcd_release(%struct.ufs_hba* %236)
  br label %238

238:                                              ; preds = %232, %165
  %239 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %240 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %239, i32 0, i32 0
  store i32 0, i32* %240, align 8
  %241 = load i32, i32* %5, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %245 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @ufshcd_update_reg_hist(i32* %246, i32 %247)
  br label %249

249:                                              ; preds = %243, %238
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @ufshcd_is_shutdown_pm(i32) #1

declare dso_local i64 @ufshcd_is_runtime_pm(i32) #1

declare dso_local i32 @ufs_get_pm_lvl_to_dev_pwr_mode(i32) #1

declare dso_local i32 @ufs_get_pm_lvl_to_link_pwr_state(i32) #1

declare dso_local i32 @ufshcd_hold(%struct.ufs_hba*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ufshcd_suspend_clkscaling(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_is_ufs_dev_active(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_is_link_active(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_can_autobkops_during_suspend(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_urgent_bkops(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_disable_auto_bkops(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_set_dev_pwr_mode(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_link_state_transition(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @ufshcd_vreg_set_lpm(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vops_suspend(%struct.ufs_hba*, i32) #1

declare dso_local i32 @ufshcd_setup_clocks(%struct.ufs_hba*, i32) #1

declare dso_local i32 @__ufshcd_setup_clocks(%struct.ufs_hba*, i32, i32) #1

declare dso_local i32 @trace_ufshcd_clk_gating(i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @ufshcd_disable_irq(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_hba_vreg_set_lpm(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_resume_clkscaling(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_vreg_set_hpm(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_link_hibern8(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_uic_hibern8_exit(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_set_link_active(%struct.ufs_hba*) #1

declare dso_local i64 @ufshcd_is_link_off(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_host_reset_and_restore(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_release(%struct.ufs_hba*) #1

declare dso_local i32 @ufshcd_update_reg_hist(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
