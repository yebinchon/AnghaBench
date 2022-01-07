; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_alloc_fast_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_alloc_fast_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_fast_path_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lpfc_hba = type { i32 }

@LPFC_MAX_EVT_COUNT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LPFC_EVT_FASTPATH_MGMT_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_fast_path_event*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_fast_path_event*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 0
  %7 = call i64 @atomic_read(i32* %6)
  %8 = load i64, i64* @LPFC_MAX_EVT_COUNT, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.lpfc_fast_path_event* null, %struct.lpfc_fast_path_event** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.lpfc_fast_path_event* @kzalloc(i32 8, i32 %12)
  store %struct.lpfc_fast_path_event* %13, %struct.lpfc_fast_path_event** %4, align 8
  %14 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %4, align 8
  %15 = icmp ne %struct.lpfc_fast_path_event* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load i32, i32* @LPFC_EVT_FASTPATH_MGMT_EVT, align 4
  %25 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %11
  %29 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %4, align 8
  store %struct.lpfc_fast_path_event* %29, %struct.lpfc_fast_path_event** %2, align 8
  br label %30

30:                                               ; preds = %28, %10
  %31 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %2, align 8
  ret %struct.lpfc_fast_path_event* %31
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.lpfc_fast_path_event* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
