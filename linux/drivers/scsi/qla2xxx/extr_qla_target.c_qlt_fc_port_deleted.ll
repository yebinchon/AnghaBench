; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_fc_port_deleted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_fc_port_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.qla_tgt* }
%struct.qla_tgt = type { i64 }
%struct.fc_port = type { i32, i32, i32, i32 }

@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Ignoring stale deletion request for se_sess %p / sess %p for port %8phC, req_gen %d, sess_gen %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"qla_tgt_fc_port_deleted %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_fc_port_deleted(%struct.scsi_qla_host* %0, %struct.fc_port* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.fc_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_tgt*, align 8
  %8 = alloca %struct.fc_port*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.fc_port* %1, %struct.fc_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.qla_tgt*, %struct.qla_tgt** %12, align 8
  store %struct.qla_tgt* %13, %struct.qla_tgt** %7, align 8
  %14 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  store %struct.fc_port* %14, %struct.fc_port** %8, align 8
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %107

23:                                               ; preds = %3
  %24 = load %struct.qla_tgt*, %struct.qla_tgt** %7, align 8
  %25 = icmp ne %struct.qla_tgt* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %107

27:                                               ; preds = %23
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.qla_tgt*, %struct.qla_tgt** %7, align 8
  %36 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %107

47:                                               ; preds = %27
  %48 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %49 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  br label %107

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %63 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %77 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %78 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.fc_port*
  %82 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %83 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %84 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %88 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, ...) @ql_dbg(i32 %75, %struct.scsi_qla_host* %76, i32 61586, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), %struct.fc_port* %81, %struct.fc_port* %82, i32 %85, i32 %86, i32 %89)
  br label %107

91:                                               ; preds = %60
  %92 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %94 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %95 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, ...) @ql_dbg(i32 %92, %struct.scsi_qla_host* %93, i32 61448, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.fc_port* %94)
  %96 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %97 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %99 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.fc_port*, %struct.fc_port** %8, align 8
  %106 = call i32 @qlt_schedule_sess_for_deletion(%struct.fc_port* %105)
  br label %107

107:                                              ; preds = %91, %67, %52, %39, %26, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.fc_port*, ...) #1

declare dso_local i32 @qlt_schedule_sess_for_deletion(%struct.fc_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
