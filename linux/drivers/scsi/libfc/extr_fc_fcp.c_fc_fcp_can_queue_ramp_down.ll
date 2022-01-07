; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_can_queue_ramp_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_can_queue_ramp_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_fcp_internal = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@FC_CAN_QUEUE_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*)* @fc_fcp_can_queue_ramp_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_can_queue_ramp_down(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_fcp_internal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %8 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport* %7)
  store %struct.fc_fcp_internal* %8, %struct.fc_fcp_internal** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %17 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %23 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FC_CAN_QUEUE_PERIOD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @time_before(i64 %21, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %50

30:                                               ; preds = %20, %1
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %33 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %35 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %29
  %51 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
