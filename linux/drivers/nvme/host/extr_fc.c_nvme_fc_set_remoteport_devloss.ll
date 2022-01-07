; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_set_remoteport_devloss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_set_remoteport_devloss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_remote_port = type { i64 }
%struct.nvme_fc_rport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FC_OBJSTATE_ONLINE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_fc_set_remoteport_devloss(%struct.nvme_fc_remote_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_fc_remote_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_fc_rport*, align 8
  %7 = alloca i64, align 8
  store %struct.nvme_fc_remote_port* %0, %struct.nvme_fc_remote_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %4, align 8
  %9 = call %struct.nvme_fc_rport* @remoteport_to_rport(%struct.nvme_fc_remote_port* %8)
  store %struct.nvme_fc_rport* %9, %struct.nvme_fc_rport** %6, align 8
  %10 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %6, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.nvme_fc_remote_port*, %struct.nvme_fc_remote_port** %4, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_remote_port, %struct.nvme_fc_remote_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %6, align 8
  %21 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %6, align 8
  %29 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %6, align 8
  %32 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nvme_fc_rport* @remoteport_to_rport(%struct.nvme_fc_remote_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
