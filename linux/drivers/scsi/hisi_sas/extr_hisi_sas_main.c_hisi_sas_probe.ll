; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hisi_sas_hw = type { i32 }
%struct.Scsi_Host = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.hisi_hba = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.hisi_hba*)*, i64 }
%struct.TYPE_7__ = type { %struct.asd_sas_port }
%struct.asd_sas_port = type { i32 }
%struct.TYPE_6__ = type { %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32 }
%struct.sas_ha_struct = type { i32, %struct.asd_sas_port**, %struct.asd_sas_phy**, %struct.TYPE_5__, i32*, i32, i32, i32, %struct.hisi_hba* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hisi_sas_stt = common dso_local global i32 0, align 4
@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@HISI_SAS_MAX_COMMANDS = common dso_local global i8* null, align 8
@HISI_SAS_UNRESERVED_IPTT = common dso_local global i8* null, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_probe(%struct.platform_device* %0, %struct.hisi_sas_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hisi_sas_hw*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.hisi_hba*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.asd_sas_phy**, align 8
  %10 = alloca %struct.asd_sas_port**, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hisi_sas_hw* %1, %struct.hisi_sas_hw** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = load %struct.hisi_sas_hw*, %struct.hisi_sas_hw** %5, align 8
  %20 = call %struct.Scsi_Host* @hisi_sas_shost_alloc(%struct.platform_device* %18, %struct.hisi_sas_hw* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %6, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %22 = icmp ne %struct.Scsi_Host* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %199

26:                                               ; preds = %2
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %27)
  store %struct.sas_ha_struct* %28, %struct.sas_ha_struct** %11, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %30 = call %struct.hisi_hba* @shost_priv(%struct.Scsi_Host* %29)
  store %struct.hisi_hba* %30, %struct.hisi_hba** %7, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %32 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.sas_ha_struct* %32)
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %35 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kcalloc(%struct.device* %37, i32 %38, i32 8, i32 %39)
  %41 = bitcast i8* %40 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %41, %struct.asd_sas_phy*** %9, align 8
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kcalloc(%struct.device* %42, i32 %43, i32 8, i32 %44)
  %46 = bitcast i8* %45 to %struct.asd_sas_port**
  store %struct.asd_sas_port** %46, %struct.asd_sas_port*** %10, align 8
  %47 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %48 = icmp ne %struct.asd_sas_phy** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %26
  %50 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %51 = icmp ne %struct.asd_sas_port** %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %26
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %193

55:                                               ; preds = %49
  %56 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %57 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %58 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %57, i32 0, i32 2
  store %struct.asd_sas_phy** %56, %struct.asd_sas_phy*** %58, align 8
  %59 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %60 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %61 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %60, i32 0, i32 1
  store %struct.asd_sas_port** %59, %struct.asd_sas_port*** %61, align 8
  %62 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %63 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %64 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %63, i32 0, i32 8
  store %struct.hisi_hba* %62, %struct.hisi_hba** %64, align 8
  %65 = load i32, i32* @hisi_sas_stt, align 4
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %67 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 4
  store i32 -1, i32* %72, align 8
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 1
  store i32 16, i32* %76, align 4
  %77 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %78 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %55
  %84 = load i8*, i8** @HISI_SAS_MAX_COMMANDS, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %86 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @HISI_SAS_MAX_COMMANDS, align 8
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  br label %97

90:                                               ; preds = %55
  %91 = load i8*, i8** @HISI_SAS_UNRESERVED_IPTT, align 8
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @HISI_SAS_UNRESERVED_IPTT, align 8
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %96 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %83
  %98 = load i32, i32* @DRV_NAME, align 4
  %99 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %100 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %102 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %105 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @THIS_MODULE, align 4
  %107 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %108 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %110 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %114 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %113, i32 0, i32 4
  store i32* %112, i32** %114, align 8
  %115 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %116 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %119 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %121 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %124 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %159, %97
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %129 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %126
  %133 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %134 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %141 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %140, i32 0, i32 2
  %142 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %142, i64 %144
  store %struct.asd_sas_phy* %139, %struct.asd_sas_phy** %145, align 8
  %146 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %147 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %146, i32 0, i32 2
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %154 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %153, i32 0, i32 1
  %155 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %155, i64 %157
  store %struct.asd_sas_port* %152, %struct.asd_sas_port** %158, align 8
  br label %159

159:                                              ; preds = %132
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %126

162:                                              ; preds = %126
  %163 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @scsi_add_host(%struct.Scsi_Host* %163, %struct.device* %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %193

170:                                              ; preds = %162
  %171 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %172 = call i32 @sas_register_ha(%struct.sas_ha_struct* %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %190

176:                                              ; preds = %170
  %177 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %178 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %180, align 8
  %182 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %183 = call i32 %181(%struct.hisi_hba* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %190

187:                                              ; preds = %176
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %189 = call i32 @scsi_scan_host(%struct.Scsi_Host* %188)
  store i32 0, i32* %3, align 4
  br label %199

190:                                              ; preds = %186, %175
  %191 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %192 = call i32 @scsi_remove_host(%struct.Scsi_Host* %191)
  br label %193

193:                                              ; preds = %190, %169, %52
  %194 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %195 = call i32 @hisi_sas_free(%struct.hisi_hba* %194)
  %196 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %197 = call i32 @scsi_host_put(%struct.Scsi_Host* %196)
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %193, %187, %23
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.Scsi_Host* @hisi_sas_shost_alloc(%struct.platform_device*, %struct.hisi_sas_hw*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.hisi_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sas_ha_struct*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, %struct.device*) #1

declare dso_local i32 @sas_register_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @hisi_sas_free(%struct.hisi_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
