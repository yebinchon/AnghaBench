; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_async_gpnft_gnnft_sp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_async_gpnft_gnnft_sp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i8*, i32, %struct.TYPE_16__, %struct.scsi_qla_host* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.ct_sns_req = type { i32 }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Async done-%s res %x FC4Type %x\0A\00", align 1
@QLA_EVT_GNNFT_DONE = common dso_local global i32 0, align 4
@SF_SCANNING = common dso_local global i32 0, align 4
@MAX_SCAN_RETRIES = common dso_local global i64 0, align 8
@LOCAL_LOOP_UPDATE = common dso_local global i32 0, align 4
@LOOP_RESYNC_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Async done-%s rescan failed on all retries.\0A\00", align 1
@FC4_TYPE_FCP_SCSI = common dso_local global i64 0, align 8
@GNN_FT_CMD = common dso_local global i64 0, align 8
@QLA_EVT_GPNFT = common dso_local global i32 0, align 4
@GPN_FT_CMD = common dso_local global i64 0, align 8
@QLA_EVT_GPNFT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32)* @qla2x00_async_gpnft_gnnft_sp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_async_gpnft_gnnft_sp_done(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.ct_sns_req*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  store %struct.scsi_qla_host* %15, %struct.scsi_qla_host** %5, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ct_sns_req*
  store %struct.ct_sns_req* %23, %struct.ct_sns_req** %6, align 8
  %24 = load %struct.ct_sns_req*, %struct.ct_sns_req** %6, align 8
  %25 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be16_to_cpu(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @ql_dbg_disc, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i8*, ...) @ql_dbg(i32 %31, %struct.scsi_qla_host* %32, i32 65535, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i64 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = call i32 @del_timer(i32* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %12, align 8
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = load i32, i32* @QLA_EVT_GNNFT_DONE, align 4
  %58 = call i32 @qla2x00_post_gnnft_gpnft_done_work(%struct.scsi_qla_host* %55, %struct.TYPE_19__* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %108

61:                                               ; preds = %51
  %62 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = call i32 @qla24xx_sp_unmap(%struct.scsi_qla_host* %62, %struct.TYPE_19__* %63)
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %66 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %65, i32 0, i32 1
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load i32, i32* @SF_SCANNING, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 1
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MAX_SCAN_RETRIES, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %61
  %92 = load i32, i32* @LOCAL_LOOP_UPDATE, align 4
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %94 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %98 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %97, i32 0, i32 0
  %99 = call i32 @set_bit(i32 %96, i32* %98)
  %100 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %101 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %100)
  br label %107

102:                                              ; preds = %61
  %103 = load i32, i32* @ql_dbg_disc, align 4
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i8*, ...) @ql_dbg(i32 %103, %struct.scsi_qla_host* %104, i32 65535, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %102, %91
  br label %108

108:                                              ; preds = %107, %51
  br label %193

109:                                              ; preds = %2
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = call i32 @qla2x00_find_free_fcp_nvme_slot(%struct.scsi_qla_host* %110, %struct.TYPE_19__* %111)
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @FC4_TYPE_FCP_SCSI, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %109
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %118 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %164

122:                                              ; preds = %116
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @GNN_FT_CMD, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %122
  %127 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %128 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %127, i32 0, i32 1
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @spin_lock_irqsave(i32* %128, i64 %129)
  %131 = load i32, i32* @SF_SCANNING, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %134 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %132
  store i32 %137, i32* %135, align 8
  %138 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %139 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %138, i32 0, i32 1
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %147 = load i32, i32* @QLA_EVT_GPNFT, align 4
  %148 = call i32 @qla2x00_post_nvme_gpnft_work(%struct.scsi_qla_host* %145, %struct.TYPE_19__* %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %126
  %152 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %154 = call i32 @qla24xx_sp_unmap(%struct.scsi_qla_host* %152, %struct.TYPE_19__* %153)
  %155 = load i32, i32* @LOCAL_LOOP_UPDATE, align 4
  %156 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %156, i32 0, i32 0
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %160 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %161 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %160, i32 0, i32 0
  %162 = call i32 @set_bit(i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %151, %126
  br label %193

164:                                              ; preds = %122, %116, %109
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @GPN_FT_CMD, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %171 = load i32, i32* @QLA_EVT_GPNFT_DONE, align 4
  %172 = call i32 @qla2x00_post_gnnft_gpnft_done_work(%struct.scsi_qla_host* %169, %struct.TYPE_19__* %170, i32 %171)
  store i32 %172, i32* %10, align 4
  br label %178

173:                                              ; preds = %164
  %174 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %176 = load i32, i32* @QLA_EVT_GNNFT_DONE, align 4
  %177 = call i32 @qla2x00_post_gnnft_gpnft_done_work(%struct.scsi_qla_host* %174, %struct.TYPE_19__* %175, i32 %176)
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %173, %168
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %184 = call i32 @qla24xx_sp_unmap(%struct.scsi_qla_host* %182, %struct.TYPE_19__* %183)
  %185 = load i32, i32* @LOCAL_LOOP_UPDATE, align 4
  %186 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %187 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %186, i32 0, i32 0
  %188 = call i32 @set_bit(i32 %185, i32* %187)
  %189 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %190 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %191 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %190, i32 0, i32 0
  %192 = call i32 @set_bit(i32 %189, i32* %191)
  br label %193

193:                                              ; preds = %108, %163, %181, %178
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i8*, ...) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @qla2x00_post_gnnft_gpnft_done_work(%struct.scsi_qla_host*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @qla24xx_sp_unmap(%struct.scsi_qla_host*, %struct.TYPE_19__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla2x00_find_free_fcp_nvme_slot(%struct.scsi_qla_host*, %struct.TYPE_19__*) #1

declare dso_local i32 @qla2x00_post_nvme_gpnft_work(%struct.scsi_qla_host*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
