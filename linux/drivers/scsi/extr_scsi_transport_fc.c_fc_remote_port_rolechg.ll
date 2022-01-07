; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_remote_port_rolechg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_remote_port_rolechg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_host_attrs = type { i32 }

@FC_PORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@FC_RPORT_FAST_FAIL_TIMEDOUT = common dso_local global i32 0, align 4
@FC_RPORT_DEVLOSS_PENDING = common dso_local global i32 0, align 4
@FC_RPORT_DEVLOSS_CALLBK_DONE = common dso_local global i32 0, align 4
@SDEV_RUNNING = common dso_local global i32 0, align 4
@FC_RPORT_SCAN_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_remote_port_rolechg(%struct.fc_rport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.fc_host_attrs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fc_rport* %0, %struct.fc_rport** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %10 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %12 = call %struct.fc_host_attrs* @shost_to_fc_host(%struct.Scsi_Host* %11)
  store %struct.fc_host_attrs* %12, %struct.fc_host_attrs** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FC_PORT_ROLE_FCP_TARGET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %24 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.fc_host_attrs*, %struct.fc_host_attrs** %6, align 8
  %29 = getelementptr inbounds %struct.fc_host_attrs, %struct.fc_host_attrs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %33 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 1, i32* %8, align 4
  br label %43

34:                                               ; preds = %22
  %35 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %36 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FC_PORT_ROLE_FCP_TARGET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %47 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %117

55:                                               ; preds = %44
  %56 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %57 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %56, i32 0, i32 6
  %58 = call i32 @cancel_delayed_work(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %62 = call i32 @fc_flush_devloss(%struct.Scsi_Host* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %65 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %64, i32 0, i32 5
  %66 = call i32 @cancel_delayed_work(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %70 = call i32 @fc_flush_devloss(%struct.Scsi_Host* %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_lock_irqsave(i32 %74, i64 %75)
  %77 = load i32, i32* @FC_RPORT_FAST_FAIL_TIMEDOUT, align 4
  %78 = load i32, i32* @FC_RPORT_DEVLOSS_PENDING, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @FC_RPORT_DEVLOSS_CALLBK_DONE, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %84 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32 %89, i64 %90)
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %93 = call i32 @fc_flush_work(%struct.Scsi_Host* %92)
  %94 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %95 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %94, i32 0, i32 4
  %96 = load i32, i32* @SDEV_RUNNING, align 4
  %97 = call i32 @scsi_target_unblock(i32* %95, i32 %96)
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %99 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_lock_irqsave(i32 %100, i64 %101)
  %103 = load i32, i32* @FC_RPORT_SCAN_PENDING, align 4
  %104 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %105 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %109 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %110 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %109, i32 0, i32 3
  %111 = call i32 @scsi_queue_work(%struct.Scsi_Host* %108, i32* %110)
  %112 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %113 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32 %114, i64 %115)
  br label %117

117:                                              ; preds = %71, %44
  ret void
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.fc_host_attrs* @shost_to_fc_host(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @fc_flush_devloss(%struct.Scsi_Host*) #1

declare dso_local i32 @fc_flush_work(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_target_unblock(i32*, i32) #1

declare dso_local i32 @scsi_queue_work(%struct.Scsi_Host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
