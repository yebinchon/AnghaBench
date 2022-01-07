; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i32, i8*, i32)* @bfad_iocmd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_handler(%struct.bfad_s* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %493 [
    i32 198, label %13
    i32 199, label %17
    i32 194, label %21
    i32 196, label %25
    i32 193, label %29
    i32 195, label %33
    i32 190, label %38
    i32 191, label %38
    i32 189, label %43
    i32 188, label %43
    i32 201, label %48
    i32 200, label %52
    i32 160, label %56
    i32 161, label %60
    i32 159, label %64
    i32 158, label %68
    i32 157, label %73
    i32 163, label %77
    i32 164, label %77
    i32 167, label %77
    i32 162, label %77
    i32 166, label %82
    i32 169, label %86
    i32 170, label %86
    i32 168, label %91
    i32 182, label %95
    i32 179, label %99
    i32 178, label %103
    i32 181, label %107
    i32 180, label %111
    i32 144, label %116
    i32 145, label %120
    i32 143, label %124
    i32 142, label %128
    i32 141, label %132
    i32 130, label %136
    i32 129, label %140
    i32 128, label %144
    i32 229, label %148
    i32 146, label %153
    i32 147, label %153
    i32 148, label %158
    i32 227, label %163
    i32 220, label %167
    i32 219, label %171
    i32 228, label %175
    i32 187, label %179
    i32 185, label %183
    i32 183, label %187
    i32 184, label %191
    i32 213, label %195
    i32 214, label %199
    i32 192, label %203
    i32 197, label %207
    i32 176, label %211
    i32 175, label %215
    i32 177, label %219
    i32 258, label %223
    i32 165, label %227
    i32 209, label %231
    i32 210, label %231
    i32 230, label %236
    i32 255, label %240
    i32 254, label %245
    i32 253, label %250
    i32 140, label %254
    i32 139, label %258
    i32 207, label %262
    i32 208, label %266
    i32 205, label %270
    i32 206, label %275
    i32 233, label %280
    i32 236, label %284
    i32 237, label %288
    i32 240, label %292
    i32 235, label %296
    i32 234, label %300
    i32 238, label %304
    i32 245, label %308
    i32 239, label %312
    i32 243, label %316
    i32 244, label %320
    i32 242, label %324
    i32 241, label %328
    i32 174, label %332
    i32 173, label %336
    i32 171, label %340
    i32 172, label %345
    i32 131, label %350
    i32 250, label %354
    i32 252, label %358
    i32 251, label %363
    i32 249, label %363
    i32 247, label %363
    i32 246, label %363
    i32 248, label %368
    i32 217, label %372
    i32 218, label %372
    i32 186, label %377
    i32 212, label %381
    i32 211, label %385
    i32 257, label %389
    i32 256, label %393
    i32 156, label %397
    i32 232, label %401
    i32 231, label %405
    i32 135, label %409
    i32 136, label %409
    i32 134, label %414
    i32 154, label %418
    i32 155, label %418
    i32 153, label %423
    i32 151, label %427
    i32 152, label %431
    i32 150, label %435
    i32 149, label %439
    i32 133, label %443
    i32 132, label %447
    i32 222, label %451
    i32 223, label %451
    i32 225, label %451
    i32 221, label %456
    i32 226, label %460
    i32 224, label %460
    i32 216, label %465
    i32 215, label %469
    i32 138, label %473
    i32 137, label %477
    i32 203, label %481
    i32 202, label %485
    i32 204, label %489
  ]

13:                                               ; preds = %4
  %14 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @bfad_iocmd_ioc_enable(%struct.bfad_s* %14, i8* %15)
  store i32 %16, i32* %9, align 4
  br label %496

17:                                               ; preds = %4
  %18 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @bfad_iocmd_ioc_disable(%struct.bfad_s* %18, i8* %19)
  store i32 %20, i32* %9, align 4
  br label %496

21:                                               ; preds = %4
  %22 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @bfad_iocmd_ioc_get_info(%struct.bfad_s* %22, i8* %23)
  store i32 %24, i32* %9, align 4
  br label %496

25:                                               ; preds = %4
  %26 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @bfad_iocmd_ioc_get_attr(%struct.bfad_s* %26, i8* %27)
  store i32 %28, i32* %9, align 4
  br label %496

29:                                               ; preds = %4
  %30 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @bfad_iocmd_ioc_get_stats(%struct.bfad_s* %30, i8* %31)
  store i32 %32, i32* %9, align 4
  br label %496

33:                                               ; preds = %4
  %34 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @bfad_iocmd_ioc_get_fwstats(%struct.bfad_s* %34, i8* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %496

38:                                               ; preds = %4, %4
  %39 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bfad_iocmd_ioc_reset_stats(%struct.bfad_s* %39, i8* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %496

43:                                               ; preds = %4, %4
  %44 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @bfad_iocmd_ioc_set_name(%struct.bfad_s* %44, i8* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %496

48:                                               ; preds = %4
  %49 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @bfad_iocmd_iocfc_get_attr(%struct.bfad_s* %49, i8* %50)
  store i32 %51, i32* %9, align 4
  br label %496

52:                                               ; preds = %4
  %53 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @bfad_iocmd_iocfc_set_intr(%struct.bfad_s* %53, i8* %54)
  store i32 %55, i32* %9, align 4
  br label %496

56:                                               ; preds = %4
  %57 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @bfad_iocmd_port_enable(%struct.bfad_s* %57, i8* %58)
  store i32 %59, i32* %9, align 4
  br label %496

60:                                               ; preds = %4
  %61 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @bfad_iocmd_port_disable(%struct.bfad_s* %61, i8* %62)
  store i32 %63, i32* %9, align 4
  br label %496

64:                                               ; preds = %4
  %65 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @bfad_iocmd_port_get_attr(%struct.bfad_s* %65, i8* %66)
  store i32 %67, i32* %9, align 4
  br label %496

68:                                               ; preds = %4
  %69 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @bfad_iocmd_port_get_stats(%struct.bfad_s* %69, i8* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %496

73:                                               ; preds = %4
  %74 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @bfad_iocmd_port_reset_stats(%struct.bfad_s* %74, i8* %75)
  store i32 %76, i32* %9, align 4
  br label %496

77:                                               ; preds = %4, %4, %4, %4
  %78 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @bfad_iocmd_set_port_cfg(%struct.bfad_s* %78, i8* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %496

82:                                               ; preds = %4
  %83 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @bfad_iocmd_port_cfg_maxfrsize(%struct.bfad_s* %83, i8* %84)
  store i32 %85, i32* %9, align 4
  br label %496

86:                                               ; preds = %4, %4
  %87 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @bfad_iocmd_port_cfg_bbcr(%struct.bfad_s* %87, i32 %88, i8* %89)
  store i32 %90, i32* %9, align 4
  br label %496

91:                                               ; preds = %4
  %92 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @bfad_iocmd_port_get_bbcr_attr(%struct.bfad_s* %92, i8* %93)
  store i32 %94, i32* %9, align 4
  br label %496

95:                                               ; preds = %4
  %96 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @bfad_iocmd_lport_get_attr(%struct.bfad_s* %96, i8* %97)
  store i32 %98, i32* %9, align 4
  br label %496

99:                                               ; preds = %4
  %100 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @bfad_iocmd_lport_get_stats(%struct.bfad_s* %100, i8* %101)
  store i32 %102, i32* %9, align 4
  br label %496

103:                                              ; preds = %4
  %104 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @bfad_iocmd_lport_reset_stats(%struct.bfad_s* %104, i8* %105)
  store i32 %106, i32* %9, align 4
  br label %496

107:                                              ; preds = %4
  %108 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @bfad_iocmd_lport_get_iostats(%struct.bfad_s* %108, i8* %109)
  store i32 %110, i32* %9, align 4
  br label %496

111:                                              ; preds = %4
  %112 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @bfad_iocmd_lport_get_rports(%struct.bfad_s* %112, i8* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  br label %496

116:                                              ; preds = %4
  %117 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @bfad_iocmd_rport_get_attr(%struct.bfad_s* %117, i8* %118)
  store i32 %119, i32* %9, align 4
  br label %496

120:                                              ; preds = %4
  %121 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @bfad_iocmd_rport_get_addr(%struct.bfad_s* %121, i8* %122)
  store i32 %123, i32* %9, align 4
  br label %496

124:                                              ; preds = %4
  %125 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @bfad_iocmd_rport_get_stats(%struct.bfad_s* %125, i8* %126)
  store i32 %127, i32* %9, align 4
  br label %496

128:                                              ; preds = %4
  %129 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @bfad_iocmd_rport_clr_stats(%struct.bfad_s* %129, i8* %130)
  store i32 %131, i32* %9, align 4
  br label %496

132:                                              ; preds = %4
  %133 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @bfad_iocmd_rport_set_speed(%struct.bfad_s* %133, i8* %134)
  store i32 %135, i32* %9, align 4
  br label %496

136:                                              ; preds = %4
  %137 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @bfad_iocmd_vport_get_attr(%struct.bfad_s* %137, i8* %138)
  store i32 %139, i32* %9, align 4
  br label %496

140:                                              ; preds = %4
  %141 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @bfad_iocmd_vport_get_stats(%struct.bfad_s* %141, i8* %142)
  store i32 %143, i32* %9, align 4
  br label %496

144:                                              ; preds = %4
  %145 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @bfad_iocmd_vport_clr_stats(%struct.bfad_s* %145, i8* %146)
  store i32 %147, i32* %9, align 4
  br label %496

148:                                              ; preds = %4
  %149 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @bfad_iocmd_fabric_get_lports(%struct.bfad_s* %149, i8* %150, i32 %151)
  store i32 %152, i32* %9, align 4
  br label %496

153:                                              ; preds = %4, %4
  %154 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @bfad_iocmd_ratelim(%struct.bfad_s* %154, i32 %155, i8* %156)
  store i32 %157, i32* %9, align 4
  br label %496

158:                                              ; preds = %4
  %159 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @bfad_iocmd_ratelim_speed(%struct.bfad_s* %159, i32 %160, i8* %161)
  store i32 %162, i32* %9, align 4
  br label %496

163:                                              ; preds = %4
  %164 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @bfad_iocmd_cfg_fcpim(%struct.bfad_s* %164, i8* %165)
  store i32 %166, i32* %9, align 4
  br label %496

167:                                              ; preds = %4
  %168 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @bfad_iocmd_fcpim_get_modstats(%struct.bfad_s* %168, i8* %169)
  store i32 %170, i32* %9, align 4
  br label %496

171:                                              ; preds = %4
  %172 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @bfad_iocmd_fcpim_clr_modstats(%struct.bfad_s* %172, i8* %173)
  store i32 %174, i32* %9, align 4
  br label %496

175:                                              ; preds = %4
  %176 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @bfad_iocmd_fcpim_get_del_itn_stats(%struct.bfad_s* %176, i8* %177)
  store i32 %178, i32* %9, align 4
  br label %496

179:                                              ; preds = %4
  %180 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @bfad_iocmd_itnim_get_attr(%struct.bfad_s* %180, i8* %181)
  store i32 %182, i32* %9, align 4
  br label %496

183:                                              ; preds = %4
  %184 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @bfad_iocmd_itnim_get_iostats(%struct.bfad_s* %184, i8* %185)
  store i32 %186, i32* %9, align 4
  br label %496

187:                                              ; preds = %4
  %188 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @bfad_iocmd_itnim_reset_stats(%struct.bfad_s* %188, i8* %189)
  store i32 %190, i32* %9, align 4
  br label %496

191:                                              ; preds = %4
  %192 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @bfad_iocmd_itnim_get_itnstats(%struct.bfad_s* %192, i8* %193)
  store i32 %194, i32* %9, align 4
  br label %496

195:                                              ; preds = %4
  %196 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 @bfad_iocmd_fcport_enable(%struct.bfad_s* %196, i8* %197)
  store i32 %198, i32* %9, align 4
  br label %496

199:                                              ; preds = %4
  %200 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 @bfad_iocmd_fcport_disable(%struct.bfad_s* %200, i8* %201)
  store i32 %202, i32* %9, align 4
  br label %496

203:                                              ; preds = %4
  %204 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 @bfad_iocmd_ioc_get_pcifn_cfg(%struct.bfad_s* %204, i8* %205)
  store i32 %206, i32* %9, align 4
  br label %496

207:                                              ; preds = %4
  %208 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %209 = load i8*, i8** %7, align 8
  %210 = call i32 @bfad_iocmd_ioc_fw_sig_inv(%struct.bfad_s* %208, i8* %209)
  store i32 %210, i32* %9, align 4
  br label %496

211:                                              ; preds = %4
  %212 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @bfad_iocmd_pcifn_create(%struct.bfad_s* %212, i8* %213)
  store i32 %214, i32* %9, align 4
  br label %496

215:                                              ; preds = %4
  %216 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @bfad_iocmd_pcifn_delete(%struct.bfad_s* %216, i8* %217)
  store i32 %218, i32* %9, align 4
  br label %496

219:                                              ; preds = %4
  %220 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %221 = load i8*, i8** %7, align 8
  %222 = call i32 @bfad_iocmd_pcifn_bw(%struct.bfad_s* %220, i8* %221)
  store i32 %222, i32* %9, align 4
  br label %496

223:                                              ; preds = %4
  %224 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = call i32 @bfad_iocmd_adapter_cfg_mode(%struct.bfad_s* %224, i8* %225)
  store i32 %226, i32* %9, align 4
  br label %496

227:                                              ; preds = %4
  %228 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %229 = load i8*, i8** %7, align 8
  %230 = call i32 @bfad_iocmd_port_cfg_mode(%struct.bfad_s* %228, i8* %229)
  store i32 %230, i32* %9, align 4
  br label %496

231:                                              ; preds = %4, %4
  %232 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @bfad_iocmd_ablk_optrom(%struct.bfad_s* %232, i32 %233, i8* %234)
  store i32 %235, i32* %9, align 4
  br label %496

236:                                              ; preds = %4
  %237 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %238 = load i8*, i8** %7, align 8
  %239 = call i32 @bfad_iocmd_faa_query(%struct.bfad_s* %237, i8* %238)
  store i32 %239, i32* %9, align 4
  br label %496

240:                                              ; preds = %4
  %241 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %242 = load i8*, i8** %7, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @bfad_iocmd_cee_attr(%struct.bfad_s* %241, i8* %242, i32 %243)
  store i32 %244, i32* %9, align 4
  br label %496

245:                                              ; preds = %4
  %246 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @bfad_iocmd_cee_get_stats(%struct.bfad_s* %246, i8* %247, i32 %248)
  store i32 %249, i32* %9, align 4
  br label %496

250:                                              ; preds = %4
  %251 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 @bfad_iocmd_cee_reset_stats(%struct.bfad_s* %251, i8* %252)
  store i32 %253, i32* %9, align 4
  br label %496

254:                                              ; preds = %4
  %255 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @bfad_iocmd_sfp_media(%struct.bfad_s* %255, i8* %256)
  store i32 %257, i32* %9, align 4
  br label %496

258:                                              ; preds = %4
  %259 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %260 = load i8*, i8** %7, align 8
  %261 = call i32 @bfad_iocmd_sfp_speed(%struct.bfad_s* %259, i8* %260)
  store i32 %261, i32* %9, align 4
  br label %496

262:                                              ; preds = %4
  %263 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %264 = load i8*, i8** %7, align 8
  %265 = call i32 @bfad_iocmd_flash_get_attr(%struct.bfad_s* %263, i8* %264)
  store i32 %265, i32* %9, align 4
  br label %496

266:                                              ; preds = %4
  %267 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %268 = load i8*, i8** %7, align 8
  %269 = call i32 @bfad_iocmd_flash_erase_part(%struct.bfad_s* %267, i8* %268)
  store i32 %269, i32* %9, align 4
  br label %496

270:                                              ; preds = %4
  %271 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @bfad_iocmd_flash_update_part(%struct.bfad_s* %271, i8* %272, i32 %273)
  store i32 %274, i32* %9, align 4
  br label %496

275:                                              ; preds = %4
  %276 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @bfad_iocmd_flash_read_part(%struct.bfad_s* %276, i8* %277, i32 %278)
  store i32 %279, i32* %9, align 4
  br label %496

280:                                              ; preds = %4
  %281 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = call i32 @bfad_iocmd_diag_temp(%struct.bfad_s* %281, i8* %282)
  store i32 %283, i32* %9, align 4
  br label %496

284:                                              ; preds = %4
  %285 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %286 = load i8*, i8** %7, align 8
  %287 = call i32 @bfad_iocmd_diag_memtest(%struct.bfad_s* %285, i8* %286)
  store i32 %287, i32* %9, align 4
  br label %496

288:                                              ; preds = %4
  %289 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = call i32 @bfad_iocmd_diag_loopback(%struct.bfad_s* %289, i8* %290)
  store i32 %291, i32* %9, align 4
  br label %496

292:                                              ; preds = %4
  %293 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = call i32 @bfad_iocmd_diag_fwping(%struct.bfad_s* %293, i8* %294)
  store i32 %295, i32* %9, align 4
  br label %496

296:                                              ; preds = %4
  %297 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %298 = load i8*, i8** %7, align 8
  %299 = call i32 @bfad_iocmd_diag_queuetest(%struct.bfad_s* %297, i8* %298)
  store i32 %299, i32* %9, align 4
  br label %496

300:                                              ; preds = %4
  %301 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %302 = load i8*, i8** %7, align 8
  %303 = call i32 @bfad_iocmd_diag_sfp(%struct.bfad_s* %301, i8* %302)
  store i32 %303, i32* %9, align 4
  br label %496

304:                                              ; preds = %4
  %305 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %306 = load i8*, i8** %7, align 8
  %307 = call i32 @bfad_iocmd_diag_led(%struct.bfad_s* %305, i8* %306)
  store i32 %307, i32* %9, align 4
  br label %496

308:                                              ; preds = %4
  %309 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = call i32 @bfad_iocmd_diag_beacon_lport(%struct.bfad_s* %309, i8* %310)
  store i32 %311, i32* %9, align 4
  br label %496

312:                                              ; preds = %4
  %313 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %314 = load i8*, i8** %7, align 8
  %315 = call i32 @bfad_iocmd_diag_lb_stat(%struct.bfad_s* %313, i8* %314)
  store i32 %315, i32* %9, align 4
  br label %496

316:                                              ; preds = %4
  %317 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %318 = load i8*, i8** %7, align 8
  %319 = call i32 @bfad_iocmd_diag_dport_enable(%struct.bfad_s* %317, i8* %318)
  store i32 %319, i32* %9, align 4
  br label %496

320:                                              ; preds = %4
  %321 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %322 = load i8*, i8** %7, align 8
  %323 = call i32 @bfad_iocmd_diag_dport_disable(%struct.bfad_s* %321, i8* %322)
  store i32 %323, i32* %9, align 4
  br label %496

324:                                              ; preds = %4
  %325 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = call i32 @bfad_iocmd_diag_dport_show(%struct.bfad_s* %325, i8* %326)
  store i32 %327, i32* %9, align 4
  br label %496

328:                                              ; preds = %4
  %329 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %330 = load i8*, i8** %7, align 8
  %331 = call i32 @bfad_iocmd_diag_dport_start(%struct.bfad_s* %329, i8* %330)
  store i32 %331, i32* %9, align 4
  br label %496

332:                                              ; preds = %4
  %333 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %334 = load i8*, i8** %7, align 8
  %335 = call i32 @bfad_iocmd_phy_get_attr(%struct.bfad_s* %333, i8* %334)
  store i32 %335, i32* %9, align 4
  br label %496

336:                                              ; preds = %4
  %337 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %338 = load i8*, i8** %7, align 8
  %339 = call i32 @bfad_iocmd_phy_get_stats(%struct.bfad_s* %337, i8* %338)
  store i32 %339, i32* %9, align 4
  br label %496

340:                                              ; preds = %4
  %341 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %342 = load i8*, i8** %7, align 8
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @bfad_iocmd_phy_update(%struct.bfad_s* %341, i8* %342, i32 %343)
  store i32 %344, i32* %9, align 4
  br label %496

345:                                              ; preds = %4
  %346 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %347 = load i8*, i8** %7, align 8
  %348 = load i32, i32* %8, align 4
  %349 = call i32 @bfad_iocmd_phy_read(%struct.bfad_s* %346, i8* %347, i32 %348)
  store i32 %349, i32* %9, align 4
  br label %496

350:                                              ; preds = %4
  %351 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %352 = load i8*, i8** %7, align 8
  %353 = call i32 @bfad_iocmd_vhba_query(%struct.bfad_s* %351, i8* %352)
  store i32 %353, i32* %9, align 4
  br label %496

354:                                              ; preds = %4
  %355 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %356 = load i8*, i8** %7, align 8
  %357 = call i32 @bfad_iocmd_porglog_get(%struct.bfad_s* %355, i8* %356)
  store i32 %357, i32* %9, align 4
  br label %496

358:                                              ; preds = %4
  %359 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %360 = load i8*, i8** %7, align 8
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @bfad_iocmd_debug_fw_core(%struct.bfad_s* %359, i8* %360, i32 %361)
  store i32 %362, i32* %9, align 4
  br label %496

363:                                              ; preds = %4, %4, %4, %4
  %364 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %365 = load i8*, i8** %7, align 8
  %366 = load i32, i32* %6, align 4
  %367 = call i32 @bfad_iocmd_debug_ctl(%struct.bfad_s* %364, i8* %365, i32 %366)
  store i32 %367, i32* %9, align 4
  br label %496

368:                                              ; preds = %4
  %369 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %370 = load i8*, i8** %7, align 8
  %371 = call i32 @bfad_iocmd_porglog_ctl(%struct.bfad_s* %369, i8* %370)
  store i32 %371, i32* %9, align 4
  br label %496

372:                                              ; preds = %4, %4
  %373 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %374 = load i8*, i8** %7, align 8
  %375 = load i32, i32* %6, align 4
  %376 = call i32 @bfad_iocmd_fcpim_cfg_profile(%struct.bfad_s* %373, i8* %374, i32 %375)
  store i32 %376, i32* %9, align 4
  br label %496

377:                                              ; preds = %4
  %378 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %379 = load i8*, i8** %7, align 8
  %380 = call i32 @bfad_iocmd_itnim_get_ioprofile(%struct.bfad_s* %378, i8* %379)
  store i32 %380, i32* %9, align 4
  br label %496

381:                                              ; preds = %4
  %382 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %383 = load i8*, i8** %7, align 8
  %384 = call i32 @bfad_iocmd_fcport_get_stats(%struct.bfad_s* %382, i8* %383)
  store i32 %384, i32* %9, align 4
  br label %496

385:                                              ; preds = %4
  %386 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %387 = load i8*, i8** %7, align 8
  %388 = call i32 @bfad_iocmd_fcport_reset_stats(%struct.bfad_s* %386, i8* %387)
  store i32 %388, i32* %9, align 4
  br label %496

389:                                              ; preds = %4
  %390 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %391 = load i8*, i8** %7, align 8
  %392 = call i32 @bfad_iocmd_boot_cfg(%struct.bfad_s* %390, i8* %391)
  store i32 %392, i32* %9, align 4
  br label %496

393:                                              ; preds = %4
  %394 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %395 = load i8*, i8** %7, align 8
  %396 = call i32 @bfad_iocmd_boot_query(%struct.bfad_s* %394, i8* %395)
  store i32 %396, i32* %9, align 4
  br label %496

397:                                              ; preds = %4
  %398 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %399 = load i8*, i8** %7, align 8
  %400 = call i32 @bfad_iocmd_preboot_query(%struct.bfad_s* %398, i8* %399)
  store i32 %400, i32* %9, align 4
  br label %496

401:                                              ; preds = %4
  %402 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %403 = load i8*, i8** %7, align 8
  %404 = call i32 @bfad_iocmd_ethboot_cfg(%struct.bfad_s* %402, i8* %403)
  store i32 %404, i32* %9, align 4
  br label %496

405:                                              ; preds = %4
  %406 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %407 = load i8*, i8** %7, align 8
  %408 = call i32 @bfad_iocmd_ethboot_query(%struct.bfad_s* %406, i8* %407)
  store i32 %408, i32* %9, align 4
  br label %496

409:                                              ; preds = %4, %4
  %410 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %411 = load i8*, i8** %7, align 8
  %412 = load i32, i32* %6, align 4
  %413 = call i32 @bfad_iocmd_cfg_trunk(%struct.bfad_s* %410, i8* %411, i32 %412)
  store i32 %413, i32* %9, align 4
  br label %496

414:                                              ; preds = %4
  %415 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %416 = load i8*, i8** %7, align 8
  %417 = call i32 @bfad_iocmd_trunk_get_attr(%struct.bfad_s* %415, i8* %416)
  store i32 %417, i32* %9, align 4
  br label %496

418:                                              ; preds = %4, %4
  %419 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %420 = load i8*, i8** %7, align 8
  %421 = load i32, i32* %6, align 4
  %422 = call i32 @bfad_iocmd_qos(%struct.bfad_s* %419, i8* %420, i32 %421)
  store i32 %422, i32* %9, align 4
  br label %496

423:                                              ; preds = %4
  %424 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %425 = load i8*, i8** %7, align 8
  %426 = call i32 @bfad_iocmd_qos_get_attr(%struct.bfad_s* %424, i8* %425)
  store i32 %426, i32* %9, align 4
  br label %496

427:                                              ; preds = %4
  %428 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %429 = load i8*, i8** %7, align 8
  %430 = call i32 @bfad_iocmd_qos_get_vc_attr(%struct.bfad_s* %428, i8* %429)
  store i32 %430, i32* %9, align 4
  br label %496

431:                                              ; preds = %4
  %432 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %433 = load i8*, i8** %7, align 8
  %434 = call i32 @bfad_iocmd_qos_get_stats(%struct.bfad_s* %432, i8* %433)
  store i32 %434, i32* %9, align 4
  br label %496

435:                                              ; preds = %4
  %436 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %437 = load i8*, i8** %7, align 8
  %438 = call i32 @bfad_iocmd_qos_reset_stats(%struct.bfad_s* %436, i8* %437)
  store i32 %438, i32* %9, align 4
  br label %496

439:                                              ; preds = %4
  %440 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %441 = load i8*, i8** %7, align 8
  %442 = call i32 @bfad_iocmd_qos_set_bw(%struct.bfad_s* %440, i8* %441)
  store i32 %442, i32* %9, align 4
  br label %496

443:                                              ; preds = %4
  %444 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %445 = load i8*, i8** %7, align 8
  %446 = call i32 @bfad_iocmd_vf_get_stats(%struct.bfad_s* %444, i8* %445)
  store i32 %446, i32* %9, align 4
  br label %496

447:                                              ; preds = %4
  %448 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %449 = load i8*, i8** %7, align 8
  %450 = call i32 @bfad_iocmd_vf_clr_stats(%struct.bfad_s* %448, i8* %449)
  store i32 %450, i32* %9, align 4
  br label %496

451:                                              ; preds = %4, %4, %4
  %452 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %453 = load i8*, i8** %7, align 8
  %454 = load i32, i32* %6, align 4
  %455 = call i32 @bfad_iocmd_lunmask(%struct.bfad_s* %452, i8* %453, i32 %454)
  store i32 %455, i32* %9, align 4
  br label %496

456:                                              ; preds = %4
  %457 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %458 = load i8*, i8** %7, align 8
  %459 = call i32 @bfad_iocmd_fcpim_lunmask_query(%struct.bfad_s* %457, i8* %458)
  store i32 %459, i32* %9, align 4
  br label %496

460:                                              ; preds = %4, %4
  %461 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %462 = load i8*, i8** %7, align 8
  %463 = load i32, i32* %6, align 4
  %464 = call i32 @bfad_iocmd_fcpim_cfg_lunmask(%struct.bfad_s* %461, i8* %462, i32 %463)
  store i32 %464, i32* %9, align 4
  br label %496

465:                                              ; preds = %4
  %466 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %467 = load i8*, i8** %7, align 8
  %468 = call i32 @bfad_iocmd_fcpim_throttle_query(%struct.bfad_s* %466, i8* %467)
  store i32 %468, i32* %9, align 4
  br label %496

469:                                              ; preds = %4
  %470 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %471 = load i8*, i8** %7, align 8
  %472 = call i32 @bfad_iocmd_fcpim_throttle_set(%struct.bfad_s* %470, i8* %471)
  store i32 %472, i32* %9, align 4
  br label %496

473:                                              ; preds = %4
  %474 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %475 = load i8*, i8** %7, align 8
  %476 = call i32 @bfad_iocmd_tfru_read(%struct.bfad_s* %474, i8* %475)
  store i32 %476, i32* %9, align 4
  br label %496

477:                                              ; preds = %4
  %478 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %479 = load i8*, i8** %7, align 8
  %480 = call i32 @bfad_iocmd_tfru_write(%struct.bfad_s* %478, i8* %479)
  store i32 %480, i32* %9, align 4
  br label %496

481:                                              ; preds = %4
  %482 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %483 = load i8*, i8** %7, align 8
  %484 = call i32 @bfad_iocmd_fruvpd_read(%struct.bfad_s* %482, i8* %483)
  store i32 %484, i32* %9, align 4
  br label %496

485:                                              ; preds = %4
  %486 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %487 = load i8*, i8** %7, align 8
  %488 = call i32 @bfad_iocmd_fruvpd_update(%struct.bfad_s* %486, i8* %487)
  store i32 %488, i32* %9, align 4
  br label %496

489:                                              ; preds = %4
  %490 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %491 = load i8*, i8** %7, align 8
  %492 = call i32 @bfad_iocmd_fruvpd_get_max_size(%struct.bfad_s* %490, i8* %491)
  store i32 %492, i32* %9, align 4
  br label %496

493:                                              ; preds = %4
  %494 = load i32, i32* @EINVAL, align 4
  %495 = sub nsw i32 0, %494
  store i32 %495, i32* %9, align 4
  br label %496

496:                                              ; preds = %493, %489, %485, %481, %477, %473, %469, %465, %460, %456, %451, %447, %443, %439, %435, %431, %427, %423, %418, %414, %409, %405, %401, %397, %393, %389, %385, %381, %377, %372, %368, %363, %358, %354, %350, %345, %340, %336, %332, %328, %324, %320, %316, %312, %308, %304, %300, %296, %292, %288, %284, %280, %275, %270, %266, %262, %258, %254, %250, %245, %240, %236, %231, %227, %223, %219, %215, %211, %207, %203, %199, %195, %191, %187, %183, %179, %175, %171, %167, %163, %158, %153, %148, %144, %140, %136, %132, %128, %124, %120, %116, %111, %107, %103, %99, %95, %91, %86, %82, %77, %73, %68, %64, %60, %56, %52, %48, %43, %38, %33, %29, %25, %21, %17, %13
  %497 = load i32, i32* %9, align 4
  ret i32 %497
}

declare dso_local i32 @bfad_iocmd_ioc_enable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_disable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_get_info(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_get_fwstats(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_ioc_reset_stats(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_ioc_set_name(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_iocfc_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_iocfc_set_intr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_port_enable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_port_disable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_port_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_port_get_stats(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_port_reset_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_set_port_cfg(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_port_cfg_maxfrsize(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_port_cfg_bbcr(%struct.bfad_s*, i32, i8*) #1

declare dso_local i32 @bfad_iocmd_port_get_bbcr_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_lport_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_lport_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_lport_reset_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_lport_get_iostats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_lport_get_rports(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_rport_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_rport_get_addr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_rport_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_rport_clr_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_rport_set_speed(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_vport_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_vport_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_vport_clr_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fabric_get_lports(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_ratelim(%struct.bfad_s*, i32, i8*) #1

declare dso_local i32 @bfad_iocmd_ratelim_speed(%struct.bfad_s*, i32, i8*) #1

declare dso_local i32 @bfad_iocmd_cfg_fcpim(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcpim_get_modstats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcpim_clr_modstats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcpim_get_del_itn_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_itnim_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_itnim_get_iostats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_itnim_reset_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_itnim_get_itnstats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcport_enable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcport_disable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_get_pcifn_cfg(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ioc_fw_sig_inv(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_pcifn_create(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_pcifn_delete(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_pcifn_bw(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_adapter_cfg_mode(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_port_cfg_mode(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ablk_optrom(%struct.bfad_s*, i32, i8*) #1

declare dso_local i32 @bfad_iocmd_faa_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_cee_attr(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_cee_get_stats(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_cee_reset_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_sfp_media(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_sfp_speed(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_flash_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_flash_erase_part(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_flash_update_part(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_flash_read_part(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_diag_temp(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_memtest(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_loopback(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_fwping(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_queuetest(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_sfp(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_led(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_beacon_lport(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_lb_stat(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_dport_enable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_dport_disable(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_dport_show(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_diag_dport_start(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_phy_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_phy_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_phy_update(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_phy_read(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_vhba_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_porglog_get(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_debug_fw_core(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_debug_ctl(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_porglog_ctl(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcpim_cfg_profile(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_itnim_get_ioprofile(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcport_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcport_reset_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_boot_cfg(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_boot_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_preboot_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ethboot_cfg(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_ethboot_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_cfg_trunk(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_trunk_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_qos(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_qos_get_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_qos_get_vc_attr(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_qos_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_qos_reset_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_qos_set_bw(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_vf_get_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_vf_clr_stats(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_lunmask(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_fcpim_lunmask_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcpim_cfg_lunmask(%struct.bfad_s*, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_fcpim_throttle_query(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fcpim_throttle_set(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_tfru_read(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_tfru_write(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fruvpd_read(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fruvpd_update(%struct.bfad_s*, i8*) #1

declare dso_local i32 @bfad_iocmd_fruvpd_get_max_size(%struct.bfad_s*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
