; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_erp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_erp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32 }
%struct.ipr_cmnd = type { %struct.TYPE_10__*, i32, i64, %struct.scsi_cmnd*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.ipr_resource_entry* }
%struct.ipr_resource_entry = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IPR_IOASC_IOASC_MASK = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@DID_PASSTHROUGH = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*)* @ipr_erp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_erp_start(%struct.ipr_ioa_cfg* %0, %struct.ipr_cmnd* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_cmnd*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_cmnd* %1, %struct.ipr_cmnd** %4, align 8
  %9 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %9, i32 0, i32 3
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** %5, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %15, align 8
  store %struct.ipr_resource_entry* %16, %struct.ipr_resource_entry** %6, align 8
  %17 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @be32_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IPR_IOASC_IOASC_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %28 = icmp ne %struct.ipr_resource_entry* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %31 = call i32 @__ipr_scsi_eh_done(%struct.ipr_cmnd* %30)
  br label %252

32:                                               ; preds = %2
  %33 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %34 = call i32 @ipr_is_gscsi(%struct.ipr_resource_entry* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 135
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %41 = call i32 @ipr_gen_sense(%struct.ipr_cmnd* %40)
  br label %42

42:                                               ; preds = %39, %36, %32
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %44 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %45 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %46 = call i32 @ipr_dump_ioasa(%struct.ipr_ioa_cfg* %43, %struct.ipr_cmnd* %44, %struct.ipr_resource_entry* %45)
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %201 [
    i32 138, label %48
    i32 131, label %67
    i32 132, label %67
    i32 134, label %74
    i32 128, label %88
    i32 130, label %103
    i32 139, label %103
    i32 137, label %117
    i32 136, label %117
    i32 135, label %146
    i32 129, label %178
    i32 133, label %179
  ]

48:                                               ; preds = %42
  %49 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %50 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @DID_ABORT, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %66

59:                                               ; preds = %48
  %60 = load i32, i32* @DID_IMM_RETRY, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %225

67:                                               ; preds = %42, %42
  %68 = load i32, i32* @DID_NO_CONNECT, align 4
  %69 = shl i32 %68, 16
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %225

74:                                               ; preds = %42
  %75 = load i32, i32* @DID_NO_CONNECT, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %82 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %74
  %85 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %86 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %74
  br label %225

88:                                               ; preds = %42
  %89 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %90 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %95 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* @DID_IMM_RETRY, align 4
  %98 = shl i32 %97, 16
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %225

103:                                              ; preds = %42, %42
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* @DID_PASSTHROUGH, align 4
  %111 = shl i32 %110, 16
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %109, %103
  br label %225

117:                                              ; preds = %42, %42
  %118 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %119 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %124 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @scsi_report_bus_reset(i32 %125, i32 %130)
  br label %132

132:                                              ; preds = %122, %117
  %133 = load i32, i32* @DID_ERROR, align 4
  %134 = shl i32 %133, 16
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %140 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %132
  %143 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %144 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %132
  br label %225

146:                                              ; preds = %42
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @IPR_IOASC_SENSE_STATUS(i32 %147)
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @IPR_IOASC_SENSE_STATUS(i32 %153)
  %155 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %146
  %158 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %159 = call i32 @ipr_get_autosense(%struct.ipr_cmnd* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %163 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %167 = call i32 @ipr_erp_cancel_all(%struct.ipr_cmnd* %166)
  br label %252

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %157
  br label %170

170:                                              ; preds = %169, %146
  %171 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %172 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %176 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %175, i32 0, i32 0
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %170
  br label %225

178:                                              ; preds = %42
  br label %225

179:                                              ; preds = %42
  %180 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %181 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %186 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %185, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = load i32, i32* @DID_IMM_RETRY, align 4
  %188 = shl i32 %187, 16
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %190 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %200

193:                                              ; preds = %179
  %194 = load i32, i32* @DID_ERROR, align 4
  %195 = shl i32 %194, 16
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %197 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %193, %184
  br label %225

201:                                              ; preds = %42
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @IPR_IOASC_SENSE_KEY(i32 %202)
  %204 = load i32, i32* @RECOVERED_ERROR, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i32, i32* @DID_ERROR, align 4
  %208 = shl i32 %207, 16
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %206, %201
  %214 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %215 = call i32 @ipr_is_vset_device(%struct.ipr_resource_entry* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %213
  %218 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %219 = call i32 @ipr_is_naca_model(%struct.ipr_resource_entry* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %217
  %222 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %223 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %222, i32 0, i32 0
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %217, %213
  br label %225

225:                                              ; preds = %224, %200, %178, %177, %145, %116, %96, %87, %67, %66
  %226 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %227 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %226, i32 0, i32 3
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %227, align 8
  %229 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %228)
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 1
  %232 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %231, align 8
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %234 = call i32 %232(%struct.scsi_cmnd* %233)
  %235 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %236 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %225
  %240 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %241 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @complete(i64 %242)
  br label %244

244:                                              ; preds = %239, %225
  %245 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %246 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %245, i32 0, i32 1
  %247 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %248 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %247, i32 0, i32 0
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = call i32 @list_add_tail(i32* %246, i32* %250)
  br label %252

252:                                              ; preds = %244, %165, %29
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @__ipr_scsi_eh_done(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_is_gscsi(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_gen_sense(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_dump_ioasa(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*, %struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_is_naca_model(%struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_report_bus_reset(i32, i32) #1

declare dso_local i32 @IPR_IOASC_SENSE_STATUS(i32) #1

declare dso_local i32 @ipr_get_autosense(%struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_erp_cancel_all(%struct.ipr_cmnd*) #1

declare dso_local i32 @IPR_IOASC_SENSE_KEY(i32) #1

declare dso_local i32 @ipr_is_vset_device(%struct.ipr_resource_entry*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
