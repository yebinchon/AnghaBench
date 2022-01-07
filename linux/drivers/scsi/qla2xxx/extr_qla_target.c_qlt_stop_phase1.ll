; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_stop_phase1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_stop_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_tgt = type { i32, i32, %struct.scsi_qla_host*, i32, i32, i64, %struct.qla_hw_data*, %struct.scsi_qla_host* }
%struct.qla_hw_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_qla_host = type { %struct.TYPE_3__, %struct.qla_tgt* }
%struct.TYPE_3__ = type { i32 }

@qla_tgt_mutex = common dso_local global i32 0, align 4
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Already in tgt->tgt_stop or tgt_stopped state\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Stopping target for host %ld(%p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Waiting for sess works (tgt %p)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Waiting for tgt %p: sess_count=%d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlt_stop_phase1(%struct.qla_tgt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_tgt*, align 8
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i64, align 8
  store %struct.qla_tgt* %0, %struct.qla_tgt** %3, align 8
  %7 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %8 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %7, i32 0, i32 7
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  store %struct.scsi_qla_host* %9, %struct.scsi_qla_host** %4, align 8
  %10 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %11 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %10, i32 0, i32 6
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %5, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = call i32 @mutex_lock(i32* @qla_tgt_mutex)
  %17 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %18 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %23 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21, %1
  %27 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %29 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %27, %struct.scsi_qla_host* %28, i32 61518, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @mutex_unlock(i32* @qla_tgt_mutex)
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %129

36:                                               ; preds = %21
  %37 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 1
  %41 = load %struct.qla_tgt*, %struct.qla_tgt** %40, align 8
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %43 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %37, %struct.scsi_qla_host* %38, i32 57347, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.qla_tgt* %41, %struct.scsi_qla_host* %42)
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %49 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %51 = call i32 @qlt_clear_tgt_db(%struct.qla_tgt* %50)
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = call i32 @mutex_unlock(i32* @qla_tgt_mutex)
  %57 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %59 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %60 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %57, %struct.scsi_qla_host* %58, i32 61449, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.qla_tgt* %59)
  %61 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %62 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %61, i32 0, i32 3
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %71, %36
  %66 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %67 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %66, i32 0, i32 4
  %68 = call i32 @list_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %73 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %72, i32 0, i32 3
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = call i32 (...) @flush_scheduled_work()
  %77 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %78 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %77, i32 0, i32 3
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %83 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %82, i32 0, i32 3
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %88 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %89 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %90 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %89, i32 0, i32 2
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %90, align 8
  %92 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %86, %struct.scsi_qla_host* %87, i32 61450, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.qla_tgt* %88, %struct.scsi_qla_host* %91)
  %93 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %94 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %97 = call i32 @test_tgt_sess_count(%struct.qla_tgt* %96)
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 10, %98
  %100 = call i32 @wait_event_timeout(i32 %95, i32 %97, i32 %99)
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %81
  %107 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %108 = call i64 @qla_tgt_mode_enabled(%struct.scsi_qla_host* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %112 = call i64 @qla_dual_mode_enabled(%struct.scsi_qla_host* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %106
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %116 = call i32 @qlt_disable_vha(%struct.scsi_qla_host* %115)
  br label %117

117:                                              ; preds = %114, %110, %81
  %118 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %119 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.qla_tgt*, %struct.qla_tgt** %3, align 8
  %122 = call i32 @test_tgt_sess_count(%struct.qla_tgt* %121)
  %123 = load i32, i32* @HZ, align 4
  %124 = mul nsw i32 10, %123
  %125 = call i32 @wait_event_timeout(i32 %120, i32 %122, i32 %124)
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %117, %26
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qlt_clear_tgt_db(%struct.qla_tgt*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_tgt_sess_count(%struct.qla_tgt*) #1

declare dso_local i64 @qla_tgt_mode_enabled(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla_dual_mode_enabled(%struct.scsi_qla_host*) #1

declare dso_local i32 @qlt_disable_vha(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
