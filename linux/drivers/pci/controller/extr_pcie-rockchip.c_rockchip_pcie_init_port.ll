; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"assert aclk_rst err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"assert pclk_rst err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"assert pm_rst err %d\0A\00", align 1
@MAX_LANE_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"init phy%d err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"assert core_rst err %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"assert mgmt_rst err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"assert mgmt_sticky_rst err %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"assert pipe_rst err %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"deassert pm_rst err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"deassert aclk_rst err %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"deassert pclk_rst err %d\0A\00", align 1
@PCIE_CLIENT_GEN_SEL_2 = common dso_local global i32 0, align 4
@PCIE_CLIENT_CONFIG = common dso_local global i32 0, align 4
@PCIE_CLIENT_GEN_SEL_1 = common dso_local global i32 0, align 4
@PCIE_CLIENT_LINK_TRAIN_ENABLE = common dso_local global i32 0, align 4
@PCIE_CLIENT_ARI_ENABLE = common dso_local global i32 0, align 4
@PCIE_CLIENT_CONF_ENABLE = common dso_local global i32 0, align 4
@PCIE_CLIENT_MODE_RC = common dso_local global i32 0, align 4
@PCIE_CLIENT_CONF_DISABLE = common dso_local global i32 0, align 4
@PCIE_CLIENT_MODE_EP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"power on phy%d err %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"deassert mgmt_sticky_rst err %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"deassert core_rst err %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"deassert mgmt_rst err %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"deassert pipe_rst err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_pcie_init_port(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %8 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %8, i32 0, i32 11
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @reset_control_assert(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %295

22:                                               ; preds = %1
  %23 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %24 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reset_control_assert(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %295

34:                                               ; preds = %22
  %35 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %36 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reset_control_assert(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %295

46:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MAX_LANE_NUM, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %53 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @phy_init(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  br label %279

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %47

71:                                               ; preds = %47
  %72 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @reset_control_assert(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %279

82:                                               ; preds = %71
  %83 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %84 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @reset_control_assert(i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %279

93:                                               ; preds = %82
  %94 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %95 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @reset_control_assert(i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  br label %279

104:                                              ; preds = %93
  %105 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %106 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @reset_control_assert(i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %279

115:                                              ; preds = %104
  %116 = call i32 @udelay(i32 10)
  %117 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %118 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @reset_control_deassert(i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  br label %279

127:                                              ; preds = %115
  %128 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %129 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @reset_control_deassert(i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %136)
  br label %279

138:                                              ; preds = %127
  %139 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %140 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @reset_control_deassert(i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %147)
  br label %279

149:                                              ; preds = %138
  %150 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %151 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %156 = load i32, i32* @PCIE_CLIENT_GEN_SEL_2, align 4
  %157 = load i32, i32* @PCIE_CLIENT_CONFIG, align 4
  %158 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %155, i32 %156, i32 %157)
  br label %164

159:                                              ; preds = %149
  %160 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %161 = load i32, i32* @PCIE_CLIENT_GEN_SEL_1, align 4
  %162 = load i32, i32* @PCIE_CLIENT_CONFIG, align 4
  %163 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i32, i32* @PCIE_CLIENT_LINK_TRAIN_ENABLE, align 4
  %166 = load i32, i32* @PCIE_CLIENT_ARI_ENABLE, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %169 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @PCIE_CLIENT_CONF_LANE_NUM(i32 %170)
  %172 = or i32 %167, %171
  store i32 %172, i32* %7, align 4
  %173 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %174 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %164
  %178 = load i32, i32* @PCIE_CLIENT_CONF_ENABLE, align 4
  %179 = load i32, i32* @PCIE_CLIENT_MODE_RC, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %189

183:                                              ; preds = %164
  %184 = load i32, i32* @PCIE_CLIENT_CONF_DISABLE, align 4
  %185 = load i32, i32* @PCIE_CLIENT_MODE_EP, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %183, %177
  %190 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @PCIE_CLIENT_CONFIG, align 4
  %193 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %190, i32 %191, i32 %192)
  store i32 0, i32* %6, align 4
  br label %194

194:                                              ; preds = %215, %189
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @MAX_LANE_NUM, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %194
  %199 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %200 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @phy_power_on(i32 %205)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %198
  %210 = load %struct.device*, %struct.device** %4, align 8
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %211, i32 %212)
  br label %263

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %194

218:                                              ; preds = %194
  %219 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %220 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @reset_control_deassert(i32 %221)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = load i32, i32* %5, align 4
  %228 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %226, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %227)
  br label %263

229:                                              ; preds = %218
  %230 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %231 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @reset_control_deassert(i32 %232)
  store i32 %233, i32* %5, align 4
  %234 = load i32, i32* %5, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.device*, %struct.device** %4, align 8
  %238 = load i32, i32* %5, align 4
  %239 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %238)
  br label %263

240:                                              ; preds = %229
  %241 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %242 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @reset_control_deassert(i32 %243)
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %240
  %248 = load %struct.device*, %struct.device** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %249)
  br label %263

251:                                              ; preds = %240
  %252 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %253 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @reset_control_deassert(i32 %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %251
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = load i32, i32* %5, align 4
  %261 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %260)
  br label %263

262:                                              ; preds = %251
  store i32 0, i32* %2, align 4
  br label %295

263:                                              ; preds = %258, %247, %236, %225, %209
  br label %264

264:                                              ; preds = %268, %263
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %6, align 4
  %267 = icmp ne i32 %265, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %270 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @phy_power_off(i32 %275)
  br label %264

277:                                              ; preds = %264
  %278 = load i32, i32* @MAX_LANE_NUM, align 4
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %277, %145, %134, %123, %111, %100, %89, %78, %62
  br label %280

280:                                              ; preds = %284, %279
  %281 = load i32, i32* %6, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %6, align 4
  %283 = icmp ne i32 %281, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %286 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @phy_exit(i32 %291)
  br label %280

293:                                              ; preds = %280
  %294 = load i32, i32* %5, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %293, %262, %41, %29, %17
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

declare dso_local i32 @PCIE_CLIENT_CONF_LANE_NUM(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
