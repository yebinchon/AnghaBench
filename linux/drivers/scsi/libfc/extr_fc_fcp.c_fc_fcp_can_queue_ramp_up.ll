; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_can_queue_ramp_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_can_queue_ramp_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fc_fcp_internal = type { i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@FC_CAN_QUEUE_PERIOD = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"libfc: increased can_queue to %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fc_fcp_can_queue_ramp_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_can_queue_ramp_up(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fc_fcp_internal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = call %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport* %6)
  store %struct.fc_fcp_internal* %7, %struct.fc_fcp_internal** %3, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %22 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FC_CAN_QUEUE_PERIOD, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @time_before(i64 %20, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %72

29:                                               ; preds = %19, %1
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %32 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FC_CAN_QUEUE_PERIOD, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @time_before(i64 %30, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %72

39:                                               ; preds = %29
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %42 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %51 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %56 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  %58 = load %struct.fc_fcp_internal*, %struct.fc_fcp_internal** %3, align 8
  %59 = getelementptr inbounds %struct.fc_fcp_internal, %struct.fc_fcp_internal* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %39
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %63 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %68 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @shost_printk(i32 %66, %struct.TYPE_2__* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %60, %38, %28
  %73 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %74 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32 %77, i64 %78)
  ret void
}

declare dso_local %struct.fc_fcp_internal* @fc_get_scsi_internal(%struct.fc_lport*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @shost_printk(i32, %struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
