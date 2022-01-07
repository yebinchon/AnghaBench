; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_config_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmic_mpp_pad* }
%struct.pmic_mpp_pad = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.pmic_mpp_state = type { i32 }

@PMIC_MPP_PULL_UP_OPEN = common dso_local global i32 0, align 4
@PMIC_MPP_PULL_UP_0P6KOHM = common dso_local global i32 0, align 4
@PMIC_MPP_PULL_UP_10KOHM = common dso_local global i32 0, align 4
@PMIC_MPP_PULL_UP_30KOHM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMIC_MPP_AMUX_ROUTE_ABUS4 = common dso_local global i32 0, align 4
@PMIC_MPP_REG_VIN_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_DIG_VIN_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_PULL_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_DIG_PULL_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AIN_ROUTE_MASK = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AIN_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_AOUT_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_SINK_CTL = common dso_local global i32 0, align 4
@PMIC_MPP_REG_MASTER_EN_SHIFT = common dso_local global i32 0, align 4
@PMIC_MPP_REG_EN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @pmic_mpp_config_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_mpp_config_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmic_mpp_state*, align 8
  %11 = alloca %struct.pmic_mpp_pad*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %18 = call %struct.pmic_mpp_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %17)
  store %struct.pmic_mpp_state* %18, %struct.pmic_mpp_state** %10, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %20 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %27, align 8
  store %struct.pmic_mpp_pad* %28, %struct.pmic_mpp_pad** %11, align 8
  %29 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %30 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %135, %4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %31
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pinconf_to_config_param(i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @pinconf_to_config_argument(i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %131 [
    i32 138, label %49
    i32 136, label %53
    i32 137, label %71
    i32 132, label %74
    i32 134, label %87
    i32 133, label %94
    i32 129, label %100
    i32 135, label %104
    i32 131, label %108
    i32 130, label %119
    i32 128, label %123
  ]

49:                                               ; preds = %35
  %50 = load i32, i32* @PMIC_MPP_PULL_UP_OPEN, align 4
  %51 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %52 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %134

53:                                               ; preds = %35
  %54 = load i32, i32* %13, align 4
  switch i32 %54, label %67 [
    i32 600, label %55
    i32 10000, label %59
    i32 30000, label %63
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @PMIC_MPP_PULL_UP_0P6KOHM, align 4
  %57 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %58 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %70

59:                                               ; preds = %53
  %60 = load i32, i32* @PMIC_MPP_PULL_UP_10KOHM, align 4
  %61 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %62 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %70

63:                                               ; preds = %53
  %64 = load i32, i32* @PMIC_MPP_PULL_UP_30KOHM, align 4
  %65 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %66 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %70

67:                                               ; preds = %53
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %232

70:                                               ; preds = %63, %59, %55
  br label %134

71:                                               ; preds = %35
  %72 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %73 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %134

74:                                               ; preds = %35
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %77 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp uge i32 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %232

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %86 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %134

87:                                               ; preds = %35
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %93 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %134

94:                                               ; preds = %35
  %95 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %96 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %95, i32 0, i32 5
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %99 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  br label %134

100:                                              ; preds = %35
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %103 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  br label %134

104:                                              ; preds = %35
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %107 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  br label %134

108:                                              ; preds = %35
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @PMIC_MPP_AMUX_ROUTE_ABUS4, align 4
  %111 = icmp uge i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %232

115:                                              ; preds = %108
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %118 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  br label %134

119:                                              ; preds = %35
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %122 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 8
  br label %134

123:                                              ; preds = %35
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %130 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 4
  br label %134

131:                                              ; preds = %35
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %232

134:                                              ; preds = %123, %119, %115, %104, %100, %94, %87, %83, %71, %70, %49
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %31

138:                                              ; preds = %31
  %139 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %140 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PMIC_MPP_REG_VIN_SHIFT, align 4
  %143 = shl i32 %141, %142
  store i32 %143, i32* %14, align 4
  %144 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %145 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %146 = load i32, i32* @PMIC_MPP_REG_DIG_VIN_CTL, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %144, %struct.pmic_mpp_pad* %145, i32 %146, i32 %147)
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %138
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %5, align 4
  br label %232

153:                                              ; preds = %138
  %154 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %155 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %154, i32 0, i32 12
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  %159 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %160 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @PMIC_MPP_REG_PULL_SHIFT, align 4
  %163 = shl i32 %161, %162
  store i32 %163, i32* %14, align 4
  %164 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %165 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %166 = load i32, i32* @PMIC_MPP_REG_DIG_PULL_CTL, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %164, %struct.pmic_mpp_pad* %165, i32 %166, i32 %167)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %158
  %172 = load i32, i32* %16, align 4
  store i32 %172, i32* %5, align 4
  br label %232

173:                                              ; preds = %158
  br label %174

174:                                              ; preds = %173, %153
  %175 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %176 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @PMIC_MPP_REG_AIN_ROUTE_MASK, align 4
  %179 = and i32 %177, %178
  store i32 %179, i32* %14, align 4
  %180 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %181 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %182 = load i32, i32* @PMIC_MPP_REG_AIN_CTL, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %180, %struct.pmic_mpp_pad* %181, i32 %182, i32 %183)
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %174
  %188 = load i32, i32* %16, align 4
  store i32 %188, i32* %5, align 4
  br label %232

189:                                              ; preds = %174
  %190 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %191 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %192 = load i32, i32* @PMIC_MPP_REG_AOUT_CTL, align 4
  %193 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %194 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %193, i32 0, i32 10
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %190, %struct.pmic_mpp_pad* %191, i32 %192, i32 %195)
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %189
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %5, align 4
  br label %232

201:                                              ; preds = %189
  %202 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %203 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %204 = call i32 @pmic_mpp_write_mode_ctl(%struct.pmic_mpp_state* %202, %struct.pmic_mpp_pad* %203)
  store i32 %204, i32* %16, align 4
  %205 = load i32, i32* %16, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %5, align 4
  br label %232

209:                                              ; preds = %201
  %210 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %211 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %212 = load i32, i32* @PMIC_MPP_REG_SINK_CTL, align 4
  %213 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %214 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %210, %struct.pmic_mpp_pad* %211, i32 %212, i32 %215)
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %5, align 4
  br label %232

221:                                              ; preds = %209
  %222 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %223 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @PMIC_MPP_REG_MASTER_EN_SHIFT, align 4
  %226 = shl i32 %224, %225
  store i32 %226, i32* %14, align 4
  %227 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %10, align 8
  %228 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %11, align 8
  %229 = load i32, i32* @PMIC_MPP_REG_EN_CTL, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @pmic_mpp_write(%struct.pmic_mpp_state* %227, %struct.pmic_mpp_pad* %228, i32 %229, i32 %230)
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %221, %219, %207, %199, %187, %171, %151, %131, %112, %80, %67
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local %struct.pmic_mpp_state* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @pmic_mpp_write(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*, i32, i32) #1

declare dso_local i32 @pmic_mpp_write_mode_ctl(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
