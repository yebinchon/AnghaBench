; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bfa_ioc_sm_disabling = common dso_local global i32 0, align 4
@bfa_ioc_sm_fail_retry = common dso_local global i32 0, align 4
@bfa_ioc_sm_fail = common dso_local global i32 0, align 4
@IOCPF_E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i32)* @bfa_ioc_sm_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_op(%struct.bfa_ioc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfa_ioc_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %44 [
    i32 131, label %9
    i32 132, label %10
    i32 128, label %16
    i32 129, label %16
    i32 130, label %19
  ]

9:                                                ; preds = %2
  br label %48

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %12 = call i32 @bfa_hb_timer_stop(%struct.bfa_ioc_s* %11)
  %13 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %14 = load i32, i32* @bfa_ioc_sm_disabling, align 4
  %15 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %13, i32 %14)
  br label %48

16:                                               ; preds = %2, %2
  %17 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %18 = call i32 @bfa_hb_timer_stop(%struct.bfa_ioc_s* %17)
  br label %19

19:                                               ; preds = %2, %16
  %20 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %27 = load i32, i32* @bfa_ioc_sm_fail_retry, align 4
  %28 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %26, i32 %27)
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %31 = load i32, i32* @bfa_ioc_sm_fail, align 4
  %32 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %35 = call i32 @bfa_ioc_fail_notify(%struct.bfa_ioc_s* %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 128
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %39, i32 0, i32 0
  %41 = load i32, i32* @IOCPF_E_FAIL, align 4
  %42 = call i32 @bfa_fsm_send_event(%struct.TYPE_2__* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %43, %10, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_hb_timer_stop(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_fail_notify(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
