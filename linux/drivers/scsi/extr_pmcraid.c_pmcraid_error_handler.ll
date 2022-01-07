; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_3__*, %struct.pmcraid_instance*, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { %struct.pmcraid_ioasa }
%struct.pmcraid_ioasa = type { i32, i32, i32 }
%struct.pmcraid_instance = type { i32 }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, %struct.pmcraid_resource_entry* }
%struct.pmcraid_resource_entry = type { i32, i32, i32, i32, i32 }

@PMCRAID_IOASC_SENSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"resource pointer is NULL\0A\00", align 1
@SCSI_READ_CMD = common dso_local global i64 0, align 8
@SCSI_WRITE_CMD = common dso_local global i64 0, align 8
@DID_ABORT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@DID_PASSTHROUGH = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SAM_STAT_ACA_ACTIVE = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_cmd*)* @pmcraid_error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_error_handler(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmcraid_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.pmcraid_resource_entry*, align 8
  %6 = alloca %struct.pmcraid_instance*, align 8
  %7 = alloca %struct.pmcraid_ioasa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %3, align 8
  %13 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %13, i32 0, i32 2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %4, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %19, align 8
  store %struct.pmcraid_resource_entry* %20, %struct.pmcraid_resource_entry** %5, align 8
  %21 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %22 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %21, i32 0, i32 1
  %23 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %22, align 8
  store %struct.pmcraid_instance* %23, %struct.pmcraid_instance** %6, align 8
  %24 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.pmcraid_ioasa* %27, %struct.pmcraid_ioasa** %7, align 8
  %28 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %7, align 8
  %29 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PMCRAID_IOASC_SENSE_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %35 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %36 = icmp ne %struct.pmcraid_resource_entry* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %1
  %38 = call i32 @pmcraid_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %212

39:                                               ; preds = %1
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @SCSI_CMD_TYPE(i32 %44)
  %46 = load i64, i64* @SCSI_READ_CMD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %50 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %49, i32 0, i32 4
  %51 = call i32 @atomic_inc(i32* %50)
  br label %66

52:                                               ; preds = %39
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @SCSI_CMD_TYPE(i32 %57)
  %59 = load i64, i64* @SCSI_WRITE_CMD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %63 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %62, i32 0, i32 3
  %64 = call i32 @atomic_inc(i32* %63)
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %68 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @RES_IS_GSCSI(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 134
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %77 = call i32 @pmcraid_frame_auto_sense(%struct.pmcraid_cmd* %76)
  br label %78

78:                                               ; preds = %75, %72, %66
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %81 = call i32 @pmcraid_ioasc_logger(i32 %79, %struct.pmcraid_cmd* %80)
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %198 [
    i32 136, label %83
    i32 133, label %90
    i32 135, label %90
    i32 130, label %97
    i32 132, label %106
    i32 129, label %113
    i32 128, label %113
    i32 134, label %135
    i32 131, label %197
  ]

83:                                               ; preds = %78
  %84 = load i32, i32* @DID_ABORT, align 4
  %85 = shl i32 %84, 16
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %211

90:                                               ; preds = %78, %78
  %91 = load i32, i32* @DID_NO_CONNECT, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %211

97:                                               ; preds = %78
  %98 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %99 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* @DID_IMM_RETRY, align 4
  %101 = shl i32 %100, 16
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %211

106:                                              ; preds = %78
  %107 = load i32, i32* @DID_PASSTHROUGH, align 4
  %108 = shl i32 %107, 16
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %211

113:                                              ; preds = %78, %78
  %114 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %115 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %120 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @scsi_report_bus_reset(i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %118, %113
  %129 = load i32, i32* @DID_ERROR, align 4
  %130 = shl i32 %129, 16
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %211

135:                                              ; preds = %78
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @PMCRAID_IOASC_SENSE_STATUS(i32 %136)
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %143 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %142, i32 0, i32 0
  store i32 1, i32* %143, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @PMCRAID_IOASC_SENSE_STATUS(i32 %144)
  %146 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %135
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @PMCRAID_IOASC_SENSE_STATUS(i32 %149)
  %151 = load i32, i32* @SAM_STAT_ACA_ACTIVE, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %212

154:                                              ; preds = %148, %135
  %155 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %7, align 8
  %156 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %7, align 8
  %161 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call signext i16 @le16_to_cpu(i32 %162)
  store i16 %163, i16* %11, align 2
  %164 = load i32, i32* @u16, align 4
  %165 = load i16, i16* %11, align 2
  %166 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %167 = call i32 @min_t(i32 %164, i16 signext %165, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %169 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.pmcraid_ioasa*, %struct.pmcraid_ioasa** %7, align 8
  %172 = getelementptr inbounds %struct.pmcraid_ioasa, %struct.pmcraid_ioasa* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @memcpy(i32 %170, i32 %173, i32 %174)
  store i32 1, i32* %10, align 4
  br label %176

176:                                              ; preds = %159, %154
  %177 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %5, align 8
  %178 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @RES_IS_GSCSI(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @pmcraid_cancel_all(%struct.pmcraid_cmd* %183, i32 %184)
  br label %196

186:                                              ; preds = %176
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %191 = call i32 @pmcraid_erp_done(%struct.pmcraid_cmd* %190)
  br label %195

192:                                              ; preds = %186
  %193 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %194 = call i32 @pmcraid_request_sense(%struct.pmcraid_cmd* %193)
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %182
  store i32 1, i32* %2, align 4
  br label %212

197:                                              ; preds = %78
  br label %211

198:                                              ; preds = %78
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @PMCRAID_IOASC_SENSE_KEY(i32 %199)
  %201 = load i32, i32* @RECOVERED_ERROR, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32, i32* @DID_ERROR, align 4
  %205 = shl i32 %204, 16
  %206 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %207 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %203, %198
  br label %211

211:                                              ; preds = %210, %197, %128, %106, %97, %90, %83
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %196, %153, %37
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i64 @SCSI_CMD_TYPE(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @RES_IS_GSCSI(i32) #1

declare dso_local i32 @pmcraid_frame_auto_sense(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_ioasc_logger(i32, %struct.pmcraid_cmd*) #1

declare dso_local i32 @scsi_report_bus_reset(i32, i32) #1

declare dso_local i32 @PMCRAID_IOASC_SENSE_STATUS(i32) #1

declare dso_local signext i16 @le16_to_cpu(i32) #1

declare dso_local i32 @min_t(i32, i16 signext, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pmcraid_cancel_all(%struct.pmcraid_cmd*, i32) #1

declare dso_local i32 @pmcraid_erp_done(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_request_sense(%struct.pmcraid_cmd*) #1

declare dso_local i32 @PMCRAID_IOASC_SENSE_KEY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
