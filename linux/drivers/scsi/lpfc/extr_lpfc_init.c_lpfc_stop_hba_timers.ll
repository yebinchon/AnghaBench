; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_stop_hba_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_stop_hba_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@HBA_RRQ_ACTIVE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"0297 Invalid device group (x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_stop_hba_timers(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %3, i32 0, i32 11
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @lpfc_stop_vport_timers(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 10
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 8
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 7
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 6
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LPFC_SLI_REV4, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %12
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 5
  %37 = call i32 @del_timer_sync(i32* %36)
  %38 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %34, %12
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %57 [
    i32 129, label %50
    i32 128, label %54
  ]

50:                                               ; preds = %44
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = call i32 @del_timer_sync(i32* %52)
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %56 = call i32 @lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba* %55)
  br label %65

57:                                               ; preds = %44
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* @LOG_INIT, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %54, %50
  ret void
}

declare dso_local i32 @lpfc_stop_vport_timers(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
