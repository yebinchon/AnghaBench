; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_remote_port_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_remote_port_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_PORTSTATE_ONLINE = common dso_local global i64 0, align 8
@FC_PORTSTATE_BLOCKED = common dso_local global i64 0, align 8
@FC_RPORT_DEVLOSS_PENDING = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_remote_port_delete(%struct.fc_rport* %0) #0 {
  %2 = alloca %struct.fc_rport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %2, align 8
  %6 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %7 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %9 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %17 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FC_PORTSTATE_ONLINE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32 %24, i64 %25)
  br label %74

27:                                               ; preds = %1
  %28 = load i64, i64* @FC_PORTSTATE_BLOCKED, align 8
  %29 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %30 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* @FC_RPORT_DEVLOSS_PENDING, align 4
  %32 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %33 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32 %38, i64 %39)
  %41 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %42 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %41, i32 0, i32 5
  %43 = call i32 @scsi_target_block(i32* %42)
  %44 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %45 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %66

48:                                               ; preds = %27
  %49 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %50 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %4, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %57 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %58 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %57, i32 0, i32 4
  %59 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %60 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @HZ, align 8
  %64 = mul i64 %62, %63
  %65 = call i32 @fc_queue_devloss_work(%struct.Scsi_Host* %56, i32* %58, i64 %64)
  br label %66

66:                                               ; preds = %55, %48, %27
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %68 = load %struct.fc_rport*, %struct.fc_rport** %2, align 8
  %69 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %68, i32 0, i32 3
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @HZ, align 8
  %72 = mul i64 %70, %71
  %73 = call i32 @fc_queue_devloss_work(%struct.Scsi_Host* %67, i32* %69, i64 %72)
  br label %74

74:                                               ; preds = %66, %21
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scsi_target_block(i32*) #1

declare dso_local i32 @fc_queue_devloss_work(%struct.Scsi_Host*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
