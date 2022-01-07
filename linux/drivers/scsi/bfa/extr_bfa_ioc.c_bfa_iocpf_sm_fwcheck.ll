; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_fwcheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_fwcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { %struct.bfa_ioc_s* }
%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bfa_iocpf_sm_hwinit = common dso_local global i32 0, align 4
@bfa_iocpf_sm_mismatch = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@IOC_E_HWFAILED = common dso_local global i32 0, align 4
@bfa_iocpf_sm_reset = common dso_local global i32 0, align 4
@IOC_E_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*, i32)* @bfa_iocpf_sm_fwcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_fwcheck(%struct.bfa_iocpf_s* %0, i32 %1) #0 {
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
  switch i32 %12, label %70 [
    i32 130, label %13
    i32 129, label %48
    i32 131, label %55
    i32 128, label %64
  ]

13:                                               ; preds = %2
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %15 = call i32 @bfa_ioc_firmware_lock(%struct.bfa_ioc_s* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %19 = call i32 @bfa_ioc_sync_start(%struct.bfa_ioc_s* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %23 = call i32 @bfa_ioc_sync_join(%struct.bfa_ioc_s* %22)
  %24 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %25 = load i32, i32* @bfa_iocpf_sm_hwinit, align 4
  %26 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %24, i32 %25)
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %29 = call i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc_s* %28)
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 1, i32 %33)
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %36 = call i32 @bfa_sem_timer_start(%struct.bfa_ioc_s* %35)
  br label %37

37:                                               ; preds = %27, %21
  br label %47

38:                                               ; preds = %13
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @writel(i32 1, i32 %42)
  %44 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %45 = load i32, i32* @bfa_iocpf_sm_mismatch, align 4
  %46 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %37
  br label %74

48:                                               ; preds = %2
  %49 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %50 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %51 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %49, i32 %50)
  %52 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %53 = load i32, i32* @IOC_E_HWFAILED, align 4
  %54 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc_s* %52, i32 %53)
  br label %74

55:                                               ; preds = %2
  %56 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %57 = call i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s* %56)
  %58 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %59 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %60 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %58, i32 %59)
  %61 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %62 = load i32, i32* @IOC_E_DISABLED, align 4
  %63 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc_s* %61, i32 %62)
  br label %74

64:                                               ; preds = %2
  %65 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %66 = call i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s* %65)
  %67 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %68 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %69 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %67, i32 %68)
  br label %74

70:                                               ; preds = %2
  %71 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %64, %55, %48, %47
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_firmware_lock(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_sync_start(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_sync_join(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s*, i32) #1

declare dso_local i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc_s*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_sem_timer_start(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_sem_timer_stop(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
