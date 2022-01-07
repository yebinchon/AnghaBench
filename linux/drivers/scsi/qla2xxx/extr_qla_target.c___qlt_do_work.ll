; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c___qlt_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c___qlt_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt_cmd = type { %struct.TYPE_18__, %struct.atio_from_isp, i32, i32, i64, i64, %struct.qla_qpair*, %struct.fc_port*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.qla_tgt_cmd* }
%struct.atio_from_isp = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.qla_tgt_cmd* }
%struct.TYPE_12__ = type { i8*, i32, i64, i64 }
%struct.qla_qpair = type { i32 }
%struct.fc_port = type { i32 }
%struct.TYPE_17__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, %struct.qla_tgt_cmd*, i8*, i32, i32, i32, i32)*, i32 (%struct.fc_port*)* }

@TRC_DO_WORK = common dso_local global i32 0, align 4
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cmd with tag %u is aborted\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@ql_dbg_io = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Terminating work cmd %p\00", align 1
@TRC_DO_WORK_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_tgt_cmd*)* @__qlt_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qlt_do_work(%struct.qla_tgt_cmd* %0) #0 {
  %2 = alloca %struct.qla_tgt_cmd*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.fc_port*, align 8
  %6 = alloca %struct.atio_from_isp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qla_qpair*, align 8
  store %struct.qla_tgt_cmd* %0, %struct.qla_tgt_cmd** %2, align 8
  %15 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %15, i32 0, i32 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %3, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %4, align 8
  %21 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %21, i32 0, i32 7
  %23 = load %struct.fc_port*, %struct.fc_port** %22, align 8
  store %struct.fc_port* %23, %struct.fc_port** %5, align 8
  %24 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %24, i32 0, i32 1
  store %struct.atio_from_isp* %25, %struct.atio_from_isp** %6, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %27 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %26, i32 0, i32 6
  %28 = load %struct.qla_qpair*, %struct.qla_qpair** %27, align 8
  store %struct.qla_qpair* %28, %struct.qla_qpair** %14, align 8
  %29 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @TRC_DO_WORK, align 4
  %32 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %37 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %47, align 8
  %49 = call i32 @ql_dbg(i32 %41, %struct.TYPE_17__* %42, i32 61570, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.qla_tgt_cmd* %48)
  br label %147

50:                                               ; preds = %1
  %51 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %52 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %51, i32 0, i32 3
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %55 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8* %60, i8** %7, align 8
  %61 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %62 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %64, align 8
  %66 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %67 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store %struct.qla_tgt_cmd* %65, %struct.qla_tgt_cmd** %68, align 8
  %69 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %70 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %50
  %77 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %78 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  store i32 1, i32* %13, align 4
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %85, i32* %12, align 4
  br label %110

86:                                               ; preds = %76, %50
  %87 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %88 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %95, i32* %12, align 4
  br label %109

96:                                               ; preds = %86
  %97 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %98 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %105, i32* %12, align 4
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @DMA_NONE, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %104
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %84
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %113 = getelementptr inbounds %struct.atio_from_isp, %struct.atio_from_isp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @qlt_get_fcp_task_attr(%struct.TYPE_17__* %111, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load %struct.atio_from_isp*, %struct.atio_from_isp** %6, align 8
  %120 = call i32 @get_datalen_for_atio(%struct.atio_from_isp* %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_17__*, %struct.qla_tgt_cmd*, i8*, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__*, %struct.qla_tgt_cmd*, i8*, i32, i32, i32, i32)** %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 %126(%struct.TYPE_17__* %127, %struct.qla_tgt_cmd* %128, i8* %129, i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %110
  br label %147

138:                                              ; preds = %110
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %140 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32 (%struct.fc_port*)*, i32 (%struct.fc_port*)** %143, align 8
  %145 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %146 = call i32 %144(%struct.fc_port* %145)
  br label %187

147:                                              ; preds = %137, %40
  %148 = load i32, i32* @ql_dbg_io, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %150 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %151 = call i32 @ql_dbg(i32 %148, %struct.TYPE_17__* %149, i32 12384, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.qla_tgt_cmd* %150)
  %152 = load i32, i32* @TRC_DO_WORK_ERR, align 4
  %153 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %154 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.qla_qpair*, %struct.qla_qpair** %14, align 8
  %158 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @spin_lock_irqsave(i32 %159, i64 %160)
  %162 = load %struct.qla_qpair*, %struct.qla_qpair** %14, align 8
  %163 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %164 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %163, i32 0, i32 1
  %165 = call i32 @qlt_send_term_exchange(%struct.qla_qpair* %162, i32* null, %struct.atio_from_isp* %164, i32 1, i32 0)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %167 = call i32 @qlt_decr_num_pend_cmds(%struct.TYPE_17__* %166)
  %168 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %169 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.qla_tgt_cmd*, %struct.qla_tgt_cmd** %2, align 8
  %172 = getelementptr inbounds %struct.qla_tgt_cmd, %struct.qla_tgt_cmd* %171, i32 0, i32 0
  %173 = call i32 @target_free_tag(i32 %170, %struct.TYPE_18__* %172)
  %174 = load %struct.qla_qpair*, %struct.qla_qpair** %14, align 8
  %175 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32 %176, i64 %177)
  %179 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %180 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32 (%struct.fc_port*)*, i32 (%struct.fc_port*)** %183, align 8
  %185 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %186 = call i32 %184(%struct.fc_port* %185)
  br label %187

187:                                              ; preds = %147, %138
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*, %struct.qla_tgt_cmd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @qlt_get_fcp_task_attr(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @get_datalen_for_atio(%struct.atio_from_isp*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @qlt_send_term_exchange(%struct.qla_qpair*, i32*, %struct.atio_from_isp*, i32, i32) #1

declare dso_local i32 @qlt_decr_num_pend_cmds(%struct.TYPE_17__*) #1

declare dso_local i32 @target_free_tag(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
