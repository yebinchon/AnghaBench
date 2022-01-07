; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_fail_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_fail_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { i32, %struct.bfa_ioc_s* }
%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_hwinit = common dso_local global i32 0, align 4
@bfa_iocpf_sm_semwait = common dso_local global i32 0, align 4
@IOC_E_HWFAILED = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*, i32)* @bfa_iocpf_sm_fail_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_fail_sync(%struct.bfa_iocpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_iocpf_s* %0, %struct.bfa_iocpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %6, i32 0, i32 1
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %7, align 8
  store %struct.bfa_ioc_s* %8, %struct.bfa_ioc_s** %5, align 8
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bfa_trc(%struct.bfa_ioc_s* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %69 [
    i32 129, label %13
    i32 128, label %55
    i32 131, label %62
    i32 130, label %68
  ]

13:                                               ; preds = %2
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %15 = call i32 @bfa_ioc_sync_ack(%struct.bfa_ioc_s* %14)
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %17 = call i32 @bfa_ioc_notify_fail(%struct.bfa_ioc_s* %16)
  %18 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %13
  %23 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %24 = call i32 @bfa_ioc_sync_leave(%struct.bfa_ioc_s* %23)
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %26 = load i32, i32* @BFI_IOC_FAIL, align 4
  %27 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s* %25, i32 %26)
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel(i32 1, i32 %31)
  %33 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %34 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %35 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %33, i32 %34)
  br label %54

36:                                               ; preds = %13
  %37 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %38 = call i32 @bfa_ioc_sync_complete(%struct.bfa_ioc_s* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %42 = load i32, i32* @bfa_iocpf_sm_hwinit, align 4
  %43 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %41, i32 %42)
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel(i32 1, i32 %48)
  %50 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %51 = load i32, i32* @bfa_iocpf_sm_semwait, align 4
  %52 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %40
  br label %54

54:                                               ; preds = %53, %22
  br label %73

55:                                               ; preds = %2
  %56 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %57 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %58 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %56, i32 %57)
  %59 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %60 = load i32, i32* @IOC_E_HWFAILED, align 4
  %61 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc_s* %59, i32 %60)
  br label %73

62:                                               ; preds = %2
  %63 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %64 = call i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s* %63)
  %65 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %66 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %67 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %65, i32 %66)
  br label %73

68:                                               ; preds = %2
  br label %73

69:                                               ; preds = %2
  %70 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %68, %62, %55, %54
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_sync_ack(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_notify_fail(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_sync_leave(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s*, i32) #1

declare dso_local i32 @bfa_ioc_sync_complete(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
