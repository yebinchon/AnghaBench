; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_initfail_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_initfail_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { %struct.bfa_ioc_s* }
%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@bfa_iocpf_sm_initfail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@IOC_E_HWFAILED = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@bfa_iocpf_sm_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*, i32)* @bfa_iocpf_sm_initfail_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_initfail_sync(%struct.bfa_iocpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_iocpf_s* %0, %struct.bfa_iocpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %6, i32 0, i32 0
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %7, align 8
  store %struct.bfa_ioc_s* %8, %struct.bfa_ioc_s** %5, align 8
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bfa_trc(%struct.bfa_ioc_s* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %51 [
    i32 130, label %13
    i32 129, label %29
    i32 132, label %36
    i32 128, label %42
    i32 131, label %50
  ]

13:                                               ; preds = %2
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %15 = call i32 @bfa_ioc_notify_fail(%struct.bfa_ioc_s* %14)
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %17 = call i32 @bfa_ioc_sync_leave(%struct.bfa_ioc_s* %16)
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %19 = load i32, i32* @BFI_IOC_FAIL, align 4
  %20 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s* %18, i32 %19)
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @writel(i32 1, i32 %24)
  %26 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %27 = load i32, i32* @bfa_iocpf_sm_initfail, align 4
  %28 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %26, i32 %27)
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %31 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %32 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %30, i32 %31)
  %33 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %34 = load i32, i32* @IOC_E_HWFAILED, align 4
  %35 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc_s* %33, i32 %34)
  br label %55

36:                                               ; preds = %2
  %37 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %38 = call i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s* %37)
  %39 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %40 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %41 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %39, i32 %40)
  br label %55

42:                                               ; preds = %2
  %43 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %44 = call i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s* %43)
  %45 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %46 = call i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc_s* %45)
  %47 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %48 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %49 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %47, i32 %48)
  br label %55

50:                                               ; preds = %2
  br label %55

51:                                               ; preds = %2
  %52 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %50, %42, %36, %29, %13
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_notify_fail(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_sync_leave(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
