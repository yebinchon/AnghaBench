; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_get_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_cmd = type { i32, i32, i32, i32, i64, i32, i32, %struct.fc_port*, %struct.TYPE_13__, %struct.TYPE_19__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.fc_port = type { i32, i32, %struct.se_session* }
%struct.se_session = type { i64, i32 }
%struct.atio_from_isp = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.scsi_lun = type { i32 }

@TYPE_TGT_CMD = common dso_local global i32 0, align 4
@QLA_TGT_STATE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qla_tgt_cmd* (%struct.TYPE_19__*, %struct.fc_port*, %struct.atio_from_isp*)* @qlt_get_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qla_tgt_cmd* @qlt_get_tag(%struct.TYPE_19__* %0, %struct.fc_port* %1, %struct.atio_from_isp* %2) #0 {
  %4 = alloca %struct.qla_tgt_cmd*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.fc_port*, align 8
  %7 = alloca %struct.atio_from_isp*, align 8
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.qla_tgt_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.fc_port* %1, %struct.fc_port** %6, align 8
  store %struct.atio_from_isp* %2, %struct.atio_from_isp** %7, align 8
  %12 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %13 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %12, i32 0, i32 2
  %14 = load %struct.se_session*, %struct.se_session** %13, align 8
  store %struct.se_session* %14, %struct.se_session** %8, align 8
  %15 = load %struct.se_session*, %struct.se_session** %8, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 1
  %17 = call i32 @sbitmap_queue_get(i32* %16, i32* %11)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.qla_tgt_cmd* null, %struct.qla_tgt_cmd** %4, align 8
  br label %105

21:                                               ; preds = %3
  %22 = load %struct.se_session*, %struct.se_session** %8, align 8
  %23 = getelementptr inbounds %struct.se_session, %struct.se_session* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.qla_tgt_cmd*
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %25, i64 %27
  store %struct.qla_tgt_cmd* %28, %struct.qla_tgt_cmd** %9, align 8
  %29 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %30 = call i32 @memset(%struct.qla_tgt_cmd* %29, i32 0, i32 72)
  %31 = load i32, i32* @TYPE_TGT_CMD, align 4
  %32 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %35 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %34, i32 0, i32 12
  %36 = load %struct.atio_from_isp*, %struct.atio_from_isp** %7, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.atio_from_isp* %36, i32 4)
  %38 = load i32, i32* @QLA_TGT_STATE_NEW, align 4
  %39 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %40 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %46 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = call i32 @qlt_incr_num_pend_cmds(%struct.TYPE_19__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %51 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %50, i32 0, i32 9
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %54 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %58 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %61 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %62 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %61, i32 0, i32 7
  store %struct.fc_port* %60, %struct.fc_port** %62, align 8
  %63 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %64 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %67 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fc_port*, %struct.fc_port** %6, align 8
  %69 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %72 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %74 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = call i32 (...) @get_jiffies_64()
  %76 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %77 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.atio_from_isp*, %struct.atio_from_isp** %7, align 8
  %79 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = bitcast i32* %82 to %struct.scsi_lun*
  %84 = call i32 @scsilun_to_int(%struct.scsi_lun* %83)
  %85 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %86 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %89 = call i32 @qlt_assign_qpair(%struct.TYPE_19__* %87, %struct.qla_tgt_cmd* %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %98 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  %103 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %9, align 8
  store %struct.qla_tgt_cmd* %104, %struct.qla_tgt_cmd** %4, align 8
  br label %105

105:                                              ; preds = %21, %20
  %106 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %4, align 8
  ret %struct.qla_tgt_cmd* %106
}

declare dso_local i32 @sbitmap_queue_get(i32*, i32*) #1

declare dso_local i32 @memset(%struct.qla_tgt_cmd*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.atio_from_isp*, i32) #1

declare dso_local i32 @qlt_incr_num_pend_cmds(%struct.TYPE_19__*) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @scsilun_to_int(%struct.scsi_lun*) #1

declare dso_local i32 @qlt_assign_qpair(%struct.TYPE_19__*, %struct.qla_tgt_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
