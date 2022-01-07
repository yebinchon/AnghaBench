; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_svdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_pd_svdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32*, i32, i32, i32, i32, %struct.pd_mode_data }
%struct.pd_mode_data = type { i64, i64, i32* }
%struct.typec_altmode = type { i32, i32 }

@PD_MAX_PAYLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Rx VDM cmd 0x%x type %d cmd %d len %d\00", align 1
@ALTMODE_DISCOVERY_MAX = common dso_local global i32 0, align 4
@TYPEC_DEVICE = common dso_local global i32 0, align 4
@CMDT_RSP_BUSY = common dso_local global i32 0, align 4
@USB_SID_PD = common dso_local global i32 0, align 4
@TYPEC_STATE_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*, i32*, i32, i32*)* @tcpm_pd_svdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_pd_svdm(%struct.tcpm_port* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpm_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.typec_altmode*, align 8
  %11 = alloca %struct.typec_altmode*, align 8
  %12 = alloca %struct.pd_mode_data*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* @PD_MAX_PAYLOAD, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %25

25:                                               ; preds = %39, %4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %24, i64 %37
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  br label %25

42:                                               ; preds = %25
  %43 = getelementptr inbounds i32, i32* %24, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = call i32 @PD_VDO_CMDT(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = getelementptr inbounds i32, i32* %24, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = call i32 @PD_VDO_CMD(i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %50 = getelementptr inbounds i32, i32* %24, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @tcpm_log(%struct.tcpm_port* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %57 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %56, i32 0, i32 6
  store %struct.pd_mode_data* %57, %struct.pd_mode_data** %12, align 8
  %58 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %59 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ALTMODE_DISCOVERY_MAX, align 4
  %62 = getelementptr inbounds i32, i32* %24, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = call i32 @PD_VDO_VID(i32 %63)
  %65 = getelementptr inbounds i32, i32* %24, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = call i32 @PD_VDO_OPOS(i32 %66)
  %68 = call %struct.typec_altmode* @typec_match_altmode(i32 %60, i32 %61, i32 %64, i32 %67)
  store %struct.typec_altmode* %68, %struct.typec_altmode** %10, align 8
  %69 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %70 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ALTMODE_DISCOVERY_MAX, align 4
  %73 = getelementptr inbounds i32, i32* %24, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = call i32 @PD_VDO_VID(i32 %74)
  %76 = getelementptr inbounds i32, i32* %24, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = call i32 @PD_VDO_OPOS(i32 %77)
  %79 = call %struct.typec_altmode* @typec_match_altmode(i32 %71, i32 %72, i32 %75, i32 %78)
  store %struct.typec_altmode* %79, %struct.typec_altmode** %11, align 8
  %80 = load i32, i32* %16, align 4
  switch i32 %80, label %311 [
    i32 136, label %81
    i32 135, label %167
    i32 134, label %298
  ]

81:                                               ; preds = %42
  %82 = load i32, i32* %17, align 4
  switch i32 %82, label %136 [
    i32 132, label %83
    i32 130, label %123
    i32 131, label %124
    i32 129, label %125
    i32 128, label %126
    i32 133, label %127
  ]

83:                                               ; preds = %81
  %84 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %85 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TYPEC_DEVICE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %91 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %98 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %103 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %18, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %119 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %117, %89, %83
  br label %137

123:                                              ; preds = %81
  br label %137

124:                                              ; preds = %81
  br label %137

125:                                              ; preds = %81
  br label %137

126:                                              ; preds = %81
  br label %137

127:                                              ; preds = %81
  %128 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %129 = icmp ne %struct.typec_altmode* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %132 = getelementptr inbounds i32, i32* %24, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @typec_altmode_attention(%struct.typec_altmode* %131, i32 %133)
  br label %135

135:                                              ; preds = %130, %127
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %324

136:                                              ; preds = %81
  br label %137

137:                                              ; preds = %136, %126, %125, %124, %123, %122
  %138 = load i32, i32* %15, align 4
  %139 = icmp sge i32 %138, 1
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = getelementptr inbounds i32, i32* %24, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = call i32 @VDO_CMDT(i32 135)
  %144 = or i32 %142, %143
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %144, i32* %146, align 4
  br label %166

147:                                              ; preds = %137
  %148 = load i32, i32* %15, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = getelementptr inbounds i32, i32* %24, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = call i32 @VDO_CMDT(i32 134)
  %154 = or i32 %152, %153
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %154, i32* %156, align 4
  store i32 1, i32* %15, align 4
  br label %165

157:                                              ; preds = %147
  %158 = getelementptr inbounds i32, i32* %24, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = load i32, i32* @CMDT_RSP_BUSY, align 4
  %161 = call i32 @VDO_CMDT(i32 %160)
  %162 = or i32 %159, %161
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  store i32 1, i32* %15, align 4
  br label %165

165:                                              ; preds = %157, %150
  br label %166

166:                                              ; preds = %165, %140
  br label %312

167:                                              ; preds = %42
  %168 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %169 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @IS_ERR_OR_NULL(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %312

174:                                              ; preds = %167
  %175 = load i32, i32* %17, align 4
  switch i32 %175, label %296 [
    i32 132, label %176
    i32 130, label %185
    i32 131, label %216
    i32 129, label %249
    i32 128, label %282
  ]

176:                                              ; preds = %174
  %177 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @svdm_consume_identity(%struct.tcpm_port* %177, i32* %178, i32 %179)
  %181 = load i32, i32* @USB_SID_PD, align 4
  %182 = call i32 @VDO(i32 %181, i32 1, i32 130)
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %182, i32* %184, align 4
  store i32 1, i32* %15, align 4
  br label %297

185:                                              ; preds = %174
  %186 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @svdm_consume_svids(%struct.tcpm_port* %186, i32* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load i32, i32* @USB_SID_PD, align 4
  %193 = call i32 @VDO(i32 %192, i32 1, i32 130)
  %194 = load i32*, i32** %9, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %193, i32* %195, align 4
  store i32 1, i32* %15, align 4
  br label %215

196:                                              ; preds = %185
  %197 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %198 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %196
  %202 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %203 = call i32 @supports_modal(%struct.tcpm_port* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %207 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @VDO(i32 %210, i32 1, i32 131)
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %211, i32* %213, align 4
  store i32 1, i32* %15, align 4
  br label %214

214:                                              ; preds = %205, %201, %196
  br label %215

215:                                              ; preds = %214, %191
  br label %297

216:                                              ; preds = %174
  %217 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @svdm_consume_modes(%struct.tcpm_port* %217, i32* %218, i32 %219)
  %221 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %222 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %222, align 8
  %225 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %226 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %229 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ult i64 %227, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %216
  %233 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %234 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.pd_mode_data*, %struct.pd_mode_data** %12, align 8
  %237 = getelementptr inbounds %struct.pd_mode_data, %struct.pd_mode_data* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %20, align 4
  %242 = call i32 @VDO(i32 %241, i32 1, i32 131)
  %243 = load i32*, i32** %9, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %242, i32* %244, align 4
  store i32 1, i32* %15, align 4
  br label %248

245:                                              ; preds = %216
  %246 = load %struct.tcpm_port*, %struct.tcpm_port** %6, align 8
  %247 = call i32 @tcpm_register_partner_altmodes(%struct.tcpm_port* %246)
  br label %248

248:                                              ; preds = %245, %232
  br label %297

249:                                              ; preds = %174
  %250 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %251 = icmp ne %struct.typec_altmode* %250, null
  br i1 %251, label %252, label %281

252:                                              ; preds = %249
  %253 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %254 = icmp ne %struct.typec_altmode* %253, null
  br i1 %254, label %255, label %281

255:                                              ; preds = %252
  %256 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %257 = call i32 @typec_altmode_update_active(%struct.typec_altmode* %256, i32 1)
  %258 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %259 = getelementptr inbounds i32, i32* %24, i64 0
  %260 = load i32, i32* %259, align 16
  %261 = getelementptr inbounds i32, i32* %24, i64 1
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @typec_altmode_vdm(%struct.typec_altmode* %258, i32 %260, i32* %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %255
  %266 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %267 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @VDO(i32 %268, i32 1, i32 128)
  %270 = load i32*, i32** %9, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 %269, i32* %271, align 4
  %272 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %273 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @VDO_OPOS(i32 %274)
  %276 = load i32*, i32** %9, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %324

280:                                              ; preds = %255
  br label %281

281:                                              ; preds = %280, %252, %249
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %324

282:                                              ; preds = %174
  %283 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %284 = icmp ne %struct.typec_altmode* %283, null
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %287 = icmp ne %struct.typec_altmode* %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %285
  %289 = load %struct.typec_altmode*, %struct.typec_altmode** %11, align 8
  %290 = call i32 @typec_altmode_update_active(%struct.typec_altmode* %289, i32 0)
  %291 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %292 = load i32, i32* @TYPEC_STATE_USB, align 4
  %293 = call i32 @typec_altmode_notify(%struct.typec_altmode* %291, i32 %292, i32* null)
  %294 = call i32 @WARN_ON(i32 %293)
  br label %295

295:                                              ; preds = %288, %285, %282
  br label %297

296:                                              ; preds = %174
  br label %297

297:                                              ; preds = %296, %295, %248, %215, %176
  br label %312

298:                                              ; preds = %42
  %299 = load i32, i32* %17, align 4
  switch i32 %299, label %309 [
    i32 129, label %300
  ]

300:                                              ; preds = %298
  %301 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %302 = icmp ne %struct.typec_altmode* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %305 = load i32, i32* @TYPEC_STATE_USB, align 4
  %306 = call i32 @typec_altmode_notify(%struct.typec_altmode* %304, i32 %305, i32* null)
  %307 = call i32 @WARN_ON(i32 %306)
  br label %308

308:                                              ; preds = %303, %300
  br label %310

309:                                              ; preds = %298
  br label %310

310:                                              ; preds = %309, %308
  br label %312

311:                                              ; preds = %42
  br label %312

312:                                              ; preds = %311, %310, %297, %173, %166
  %313 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %314 = icmp ne %struct.typec_altmode* %313, null
  br i1 %314, label %315, label %322

315:                                              ; preds = %312
  %316 = load %struct.typec_altmode*, %struct.typec_altmode** %10, align 8
  %317 = getelementptr inbounds i32, i32* %24, i64 0
  %318 = load i32, i32* %317, align 16
  %319 = getelementptr inbounds i32, i32* %24, i64 1
  %320 = load i32, i32* %8, align 4
  %321 = call i32 @typec_altmode_vdm(%struct.typec_altmode* %316, i32 %318, i32* %319, i32 %320)
  br label %322

322:                                              ; preds = %315, %312
  %323 = load i32, i32* %15, align 4
  store i32 %323, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %324

324:                                              ; preds = %322, %281, %265, %135
  %325 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %5, align 4
  ret i32 %326
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @PD_VDO_CMDT(i32) #2

declare dso_local i32 @PD_VDO_CMD(i32) #2

declare dso_local i32 @tcpm_log(%struct.tcpm_port*, i8*, i32, i32, i32, i32) #2

declare dso_local %struct.typec_altmode* @typec_match_altmode(i32, i32, i32, i32) #2

declare dso_local i32 @PD_VDO_VID(i32) #2

declare dso_local i32 @PD_VDO_OPOS(i32) #2

declare dso_local i32 @typec_altmode_attention(%struct.typec_altmode*, i32) #2

declare dso_local i32 @VDO_CMDT(i32) #2

declare dso_local i32 @IS_ERR_OR_NULL(i32) #2

declare dso_local i32 @svdm_consume_identity(%struct.tcpm_port*, i32*, i32) #2

declare dso_local i32 @VDO(i32, i32, i32) #2

declare dso_local i32 @svdm_consume_svids(%struct.tcpm_port*, i32*, i32) #2

declare dso_local i32 @supports_modal(%struct.tcpm_port*) #2

declare dso_local i32 @svdm_consume_modes(%struct.tcpm_port*, i32*, i32) #2

declare dso_local i32 @tcpm_register_partner_altmodes(%struct.tcpm_port*) #2

declare dso_local i32 @typec_altmode_update_active(%struct.typec_altmode*, i32) #2

declare dso_local i32 @typec_altmode_vdm(%struct.typec_altmode*, i32, i32*, i32) #2

declare dso_local i32 @VDO_OPOS(i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @typec_altmode_notify(%struct.typec_altmode*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
