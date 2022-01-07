; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_add_remove_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_add_remove_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32*, %struct.TYPE_8__*, %struct.MR_HOST_DEVICE_LIST*, i64, %struct.Scsi_Host* }
%struct.TYPE_8__ = type { i64 }
%struct.MR_HOST_DEVICE_LIST = type { i32, %struct.MR_HOST_DEVICE_LIST_ENTRY* }
%struct.MR_HOST_DEVICE_LIST_ENTRY = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.scsi_device = type { i32 }

@MEGASAS_MAX_DEV_PER_CHANNEL = common dso_local global i32 0, align 4
@MEGASAS_MAX_PD_CHANNELS = common dso_local global i32 0, align 4
@SCAN_PD_CHANNEL = common dso_local global i32 0, align 4
@MR_PD_STATE_SYSTEM = common dso_local global i64 0, align 8
@SCAN_VD_CHANNEL = common dso_local global i32 0, align 4
@MEGASAS_MAX_LD_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*, i32)* @megasas_add_remove_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_add_remove_devices(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca %struct.MR_HOST_DEVICE_LIST*, align 8
  %14 = alloca %struct.MR_HOST_DEVICE_LIST_ENTRY*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.MR_HOST_DEVICE_LIST* null, %struct.MR_HOST_DEVICE_LIST** %13, align 8
  store %struct.MR_HOST_DEVICE_LIST_ENTRY* null, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 4
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %11, align 8
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %2
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 2
  %25 = load %struct.MR_HOST_DEVICE_LIST*, %struct.MR_HOST_DEVICE_LIST** %24, align 8
  store %struct.MR_HOST_DEVICE_LIST* %25, %struct.MR_HOST_DEVICE_LIST** %13, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %98, %22
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.MR_HOST_DEVICE_LIST*, %struct.MR_HOST_DEVICE_LIST** %13, align 8
  %29 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST, %struct.MR_HOST_DEVICE_LIST* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %26
  %33 = load %struct.MR_HOST_DEVICE_LIST*, %struct.MR_HOST_DEVICE_LIST** %13, align 8
  %34 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST, %struct.MR_HOST_DEVICE_LIST* %33, i32 0, i32 1
  %35 = load %struct.MR_HOST_DEVICE_LIST_ENTRY*, %struct.MR_HOST_DEVICE_LIST_ENTRY** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST_ENTRY, %struct.MR_HOST_DEVICE_LIST_ENTRY* %35, i64 %37
  store %struct.MR_HOST_DEVICE_LIST_ENTRY* %38, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %39 = load %struct.MR_HOST_DEVICE_LIST_ENTRY*, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %40 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST_ENTRY, %struct.MR_HOST_DEVICE_LIST_ENTRY* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %32
  %47 = load %struct.MR_HOST_DEVICE_LIST_ENTRY*, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %48 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST_ENTRY, %struct.MR_HOST_DEVICE_LIST_ENTRY* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %52 = sdiv i32 %50, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  %54 = load %struct.MR_HOST_DEVICE_LIST_ENTRY*, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %55 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST_ENTRY, %struct.MR_HOST_DEVICE_LIST_ENTRY* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %59 = srem i32 %57, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %10, align 8
  br label %78

61:                                               ; preds = %32
  %62 = load i32, i32* @MEGASAS_MAX_PD_CHANNELS, align 4
  %63 = load %struct.MR_HOST_DEVICE_LIST_ENTRY*, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %64 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST_ENTRY, %struct.MR_HOST_DEVICE_LIST_ENTRY* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %68 = sdiv i32 %66, %67
  %69 = add nsw i32 %62, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %9, align 8
  %71 = load %struct.MR_HOST_DEVICE_LIST_ENTRY*, %struct.MR_HOST_DEVICE_LIST_ENTRY** %14, align 8
  %72 = getelementptr inbounds %struct.MR_HOST_DEVICE_LIST_ENTRY, %struct.MR_HOST_DEVICE_LIST_ENTRY* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %76 = srem i32 %74, %75
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %61, %46
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  %84 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %79, i32 %81, i32 %83, i32 0)
  store %struct.scsi_device* %84, %struct.scsi_device** %12, align 8
  %85 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %86 = icmp ne %struct.scsi_device* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %78
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %89 = load i64, i64* %9, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %10, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @scsi_add_device(%struct.Scsi_Host* %88, i32 %90, i32 %92, i32 0)
  br label %97

94:                                               ; preds = %78
  %95 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %96 = call i32 @scsi_device_put(%struct.scsi_device* %95)
  br label %97

97:                                               ; preds = %94, %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %26

101:                                              ; preds = %26
  br label %102

102:                                              ; preds = %101, %2
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @SCAN_PD_CHANNEL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %165

107:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %161, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @MEGASAS_MAX_PD_CHANNELS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %164

112:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %157, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %160

117:                                              ; preds = %113
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %7, align 8
  %124 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %124, i32 %125, i32 %126, i32 0)
  store %struct.scsi_device* %127, %struct.scsi_device** %12, align 8
  %128 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %129 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @MR_PD_STATE_SYSTEM, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %117
  %138 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %139 = icmp ne %struct.scsi_device* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @scsi_add_device(%struct.Scsi_Host* %141, i32 %142, i32 %143, i32 0)
  br label %148

145:                                              ; preds = %137
  %146 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %147 = call i32 @scsi_device_put(%struct.scsi_device* %146)
  br label %148

148:                                              ; preds = %145, %140
  br label %156

149:                                              ; preds = %117
  %150 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %151 = icmp ne %struct.scsi_device* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %154 = call i32 @megasas_remove_scsi_device(%struct.scsi_device* %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %156

156:                                              ; preds = %155, %148
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %113

160:                                              ; preds = %113
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %108

164:                                              ; preds = %108
  br label %165

165:                                              ; preds = %164, %102
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @SCAN_VD_CHANNEL, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %230

170:                                              ; preds = %165
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %226, %170
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @MEGASAS_MAX_LD_CHANNELS, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %229

175:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %222, %175
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %225

180:                                              ; preds = %176
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  store i64 %186, i64* %8, align 8
  %187 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %188 = load i32, i32* @MEGASAS_MAX_PD_CHANNELS, align 4
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %6, align 4
  %192 = call %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host* %187, i32 %190, i32 %191, i32 0)
  store %struct.scsi_device* %192, %struct.scsi_device** %12, align 8
  %193 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %194 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 255
  br i1 %199, label %200, label %214

200:                                              ; preds = %180
  %201 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %202 = icmp ne %struct.scsi_device* %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %205 = load i32, i32* @MEGASAS_MAX_PD_CHANNELS, align 4
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @scsi_add_device(%struct.Scsi_Host* %204, i32 %207, i32 %208, i32 0)
  br label %213

210:                                              ; preds = %200
  %211 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %212 = call i32 @scsi_device_put(%struct.scsi_device* %211)
  br label %213

213:                                              ; preds = %210, %203
  br label %221

214:                                              ; preds = %180
  %215 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %216 = icmp ne %struct.scsi_device* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %219 = call i32 @megasas_remove_scsi_device(%struct.scsi_device* %218)
  br label %220

220:                                              ; preds = %217, %214
  br label %221

221:                                              ; preds = %220, %213
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %176

225:                                              ; preds = %176
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %171

229:                                              ; preds = %171
  br label %230

230:                                              ; preds = %229, %165
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @scsi_add_device(%struct.Scsi_Host*, i32, i32, i32) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @megasas_remove_scsi_device(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
