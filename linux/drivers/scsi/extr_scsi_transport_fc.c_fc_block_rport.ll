; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_block_rport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_block_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, i32 }
%struct.Scsi_Host = type { i32 }

@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@FC_RPORT_FAST_FAIL_TIMEDOUT = common dso_local global i32 0, align 4
@FAST_IO_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_block_rport(%struct.fc_rport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i64, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %3, align 8
  %6 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %7 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %4, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  br label %13

13:                                               ; preds = %29, %1
  %14 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %15 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %21 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FC_RPORT_FAST_FAIL_TIMEDOUT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi i1 [ false, %13 ], [ %26, %19 ]
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32 %32, i64 %33)
  %35 = call i32 @msleep(i32 1000)
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32 %38, i64 %39)
  br label %13

41:                                               ; preds = %27
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  %47 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %48 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FC_RPORT_FAST_FAIL_TIMEDOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @FAST_IO_FAIL, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
