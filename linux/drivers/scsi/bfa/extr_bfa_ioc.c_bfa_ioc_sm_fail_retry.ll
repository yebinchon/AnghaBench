; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_fail_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_fail_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@bfa_ioc_sm_getattr = common dso_local global i32 0, align 4
@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@bfa_ioc_sm_fail = common dso_local global i32 0, align 4
@IOCPF_E_INITFAIL = common dso_local global i32 0, align 4
@bfa_ioc_sm_hwfail = common dso_local global i32 0, align 4
@bfa_ioc_sm_disabling = common dso_local global i32 0, align 4
@bfa_ioc_sm_uninit = common dso_local global i32 0, align 4
@IOCPF_E_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i32)* @bfa_ioc_sm_fail_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_fail_retry(%struct.bfa_ioc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfa_ioc_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %62 [
    i32 131, label %9
    i32 128, label %13
    i32 130, label %13
    i32 129, label %35
    i32 132, label %49
    i32 133, label %50
    i32 134, label %54
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %11 = load i32, i32* @bfa_ioc_sm_getattr, align 4
  %12 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %10, i32 %11)
  br label %66

13:                                               ; preds = %2, %2
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %23 = call i32 %18(i32 %21, i32 %22)
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %25 = load i32, i32* @bfa_ioc_sm_fail, align 4
  %26 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 128
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %30, i32 0, i32 0
  %32 = load i32, i32* @IOCPF_E_INITFAIL, align 4
  %33 = call i32 @bfa_fsm_send_event(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %13
  br label %66

35:                                               ; preds = %2
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32)*, i32 (i32, i32)** %39, align 8
  %41 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %45 = call i32 %40(i32 %43, i32 %44)
  %46 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %47 = load i32, i32* @bfa_ioc_sm_hwfail, align 4
  %48 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %46, i32 %47)
  br label %66

49:                                               ; preds = %2
  br label %66

50:                                               ; preds = %2
  %51 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %52 = load i32, i32* @bfa_ioc_sm_disabling, align 4
  %53 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %51, i32 %52)
  br label %66

54:                                               ; preds = %2
  %55 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %56 = load i32, i32* @bfa_ioc_sm_uninit, align 4
  %57 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %55, i32 %56)
  %58 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %58, i32 0, i32 0
  %60 = load i32, i32* @IOCPF_E_STOP, align 4
  %61 = call i32 @bfa_fsm_send_event(i32* %59, i32 %60)
  br label %66

62:                                               ; preds = %2
  %63 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %54, %50, %49, %35, %34, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
