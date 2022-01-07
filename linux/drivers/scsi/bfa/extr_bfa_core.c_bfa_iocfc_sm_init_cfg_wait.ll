; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_init_cfg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_init_cfg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { i32 }

@bfa_iocfc_sm_init_cfg_done = common dso_local global i32 0, align 4
@bfa_iocfc_sm_disabling = common dso_local global i32 0, align 4
@bfa_iocfc_sm_stopping = common dso_local global i32 0, align 4
@bfa_iocfc_sm_init_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*, i32)* @bfa_iocfc_sm_init_cfg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_sm_init_cfg_wait(%struct.bfa_iocfc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocfc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_iocfc_s* %0, %struct.bfa_iocfc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %27 [
    i32 131, label %11
    i32 130, label %15
    i32 128, label %19
    i32 129, label %23
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %13 = load i32, i32* @bfa_iocfc_sm_init_cfg_done, align 4
  %14 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %12, i32 %13)
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %17 = load i32, i32* @bfa_iocfc_sm_disabling, align 4
  %18 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %16, i32 %17)
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %21 = load i32, i32* @bfa_iocfc_sm_stopping, align 4
  %22 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %20, i32 %21)
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %25 = load i32, i32* @bfa_iocfc_sm_init_failed, align 4
  %26 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %24, i32 %25)
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bfa_sm_fault(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
