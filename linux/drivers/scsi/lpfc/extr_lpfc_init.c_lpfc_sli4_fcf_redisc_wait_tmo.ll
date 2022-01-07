; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_fcf_redisc_wait_tmo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_fcf_redisc_wait_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lpfc_hba = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@fcf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FCF_REDISC_PEND = common dso_local global i32 0, align 4
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"2776 FCF rediscover quiescent timer expired\0A\00", align 1
@phba = common dso_local global %struct.lpfc_hba* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lpfc_sli4_fcf_redisc_wait_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_fcf_redisc_wait_tmo(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %5 = ptrtoint %struct.lpfc_hba* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fcf, i32 0, i32 0), align 4
  %8 = call %struct.lpfc_hba* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FCF_REDISC_PEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_irq(i32* %21)
  br label %46

23:                                               ; preds = %1
  %24 = load i32, i32* @FCF_REDISC_PEND, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @FCF_REDISC_EVT, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load i32, i32* @LOG_FIP, align 4
  %43 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %44)
  br label %46

46:                                               ; preds = %23, %19
  ret void
}

declare dso_local %struct.lpfc_hba* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
