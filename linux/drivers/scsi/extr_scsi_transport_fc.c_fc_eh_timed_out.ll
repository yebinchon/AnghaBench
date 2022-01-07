; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_eh_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_eh_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.fc_rport = type { i64 }

@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@BLK_EH_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_eh_timed_out(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @scsi_target(i32 %7)
  %9 = call %struct.fc_rport* @starget_to_rport(i32 %8)
  store %struct.fc_rport* %9, %struct.fc_rport** %4, align 8
  %10 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %11 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
