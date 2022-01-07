; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_bsg_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_bsg_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32 }
%struct.TYPE_13__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_11__*, %struct.req_que** }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i64, i32 (%struct.TYPE_12__*)*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.bsg_job* }
%struct.req_que = type { i32, %struct.TYPE_12__** }

@SRB_CT_CMD = common dso_local global i64 0, align 8
@SRB_ELS_CMD_HST = common dso_local global i64 0, align 8
@SRB_FXIOCB_BCMD = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mbx abort_command failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mbx abort_command success.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SRB not found to abort.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_bsg_timeout(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.req_que*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %12 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %13 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %12, i32 0, i32 0
  %14 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  store %struct.fc_bsg_reply* %14, %struct.fc_bsg_reply** %4, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %16 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %15)
  %17 = call %struct.TYPE_13__* @shost_priv(i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %6, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 1
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %128, %1
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %131

31:                                               ; preds = %25
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 3
  %34 = load %struct.req_que**, %struct.req_que*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.req_que*, %struct.req_que** %34, i64 %36
  %38 = load %struct.req_que*, %struct.req_que** %37, align 8
  store %struct.req_que* %38, %struct.req_que** %11, align 8
  %39 = load %struct.req_que*, %struct.req_que** %11, align 8
  %40 = icmp ne %struct.req_que* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %128

42:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %124, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.req_que*, %struct.req_que** %11, align 8
  %46 = getelementptr inbounds %struct.req_que, %struct.req_que* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %127

49:                                               ; preds = %43
  %50 = load %struct.req_que*, %struct.req_que** %11, align 8
  %51 = getelementptr inbounds %struct.req_que, %struct.req_que* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %52, i64 %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %7, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %123

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SRB_CT_CMD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SRB_ELS_CMD_HST, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SRB_FXIOCB_BCMD, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %122

77:                                               ; preds = %71, %65, %59
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.bsg_job*, %struct.bsg_job** %80, align 8
  %82 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %83 = icmp eq %struct.bsg_job* %81, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %77
  %85 = load %struct.req_que*, %struct.req_que** %11, align 8
  %86 = getelementptr inbounds %struct.req_que, %struct.req_que* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %87, i64 %89
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %90, align 8
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 1
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = call i64 %99(%struct.TYPE_12__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %84
  %104 = load i32, i32* @ql_log_warn, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = call i32 @ql_log(i32 %104, %struct.TYPE_13__* %105, i32 28809, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  %109 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %110 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %117

111:                                              ; preds = %84
  %112 = load i32, i32* @ql_dbg_user, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = call i32 @ql_dbg(i32 %112, %struct.TYPE_13__* %113, i32 28810, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %116 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %103
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %119 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %118, i32 0, i32 1
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  br label %143

122:                                              ; preds = %77, %71
  br label %123

123:                                              ; preds = %122, %49
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %43

127:                                              ; preds = %43
  br label %128

128:                                              ; preds = %127, %41
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %25

131:                                              ; preds = %25
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %133 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %132, i32 0, i32 1
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load i32, i32* @ql_log_info, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = call i32 @ql_log(i32 %136, %struct.TYPE_13__* %137, i32 28811, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* @ENXIO, align 4
  %140 = sub nsw i32 0, %139
  %141 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %142 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %2, align 4
  br label %153

143:                                              ; preds = %117
  %144 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %145 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %144, i32 0, i32 1
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %152 = call i32 %150(%struct.TYPE_12__* %151)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %143, %131
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.TYPE_13__* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
