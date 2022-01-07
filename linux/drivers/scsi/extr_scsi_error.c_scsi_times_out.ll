; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_times_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_error.c_scsi_times_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.scsi_cmnd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.scsi_cmnd*)* }

@BLK_EH_DONE = common dso_local global i32 0, align 4
@TIMEOUT_ERROR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SCMD_STATE_COMPLETE = common dso_local global i32 0, align 4
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@DID_TIME_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_times_out(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %7)
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %4, align 8
  %9 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i32 @trace_scsi_dispatch_cmd_timeout(%struct.scsi_cmnd* %15)
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = load i32, i32* @TIMEOUT_ERROR, align 4
  %19 = call i32 @scsi_log_completion(%struct.scsi_cmnd* %17, i32 %18)
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %24, %1
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %37, align 8
  %39 = icmp ne i32 (%struct.scsi_cmnd*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %44, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %47 = call i32 %45(%struct.scsi_cmnd* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @BLK_EH_DONE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i32, i32* @SCMD_STATE_COMPLETE, align 4
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = call i64 @test_and_set_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %59, i32* %2, align 4
  br label %74

60:                                               ; preds = %52
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = call i64 @scsi_abort_command(%struct.scsi_cmnd* %61)
  %63 = load i64, i64* @SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %67 = load i32, i32* @DID_TIME_OUT, align 4
  %68 = call i32 @set_host_byte(%struct.scsi_cmnd* %66, i32 %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %70 = call i32 @scsi_eh_scmd_add(%struct.scsi_cmnd* %69)
  br label %71

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %58
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @trace_scsi_dispatch_cmd_timeout(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_log_completion(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @scsi_abort_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_eh_scmd_add(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
