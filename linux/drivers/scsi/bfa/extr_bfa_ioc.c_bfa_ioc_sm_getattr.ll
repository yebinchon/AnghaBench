; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@bfa_ioc_sm_op = common dso_local global i32 0, align 4
@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@bfa_ioc_sm_fail = common dso_local global i32 0, align 4
@IOCPF_E_GETATTRFAIL = common dso_local global i32 0, align 4
@bfa_ioc_sm_disabling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i32)* @bfa_ioc_sm_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_getattr(%struct.bfa_ioc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfa_ioc_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %47 [
    i32 131, label %9
    i32 129, label %15
    i32 130, label %15
    i32 128, label %18
    i32 133, label %40
    i32 132, label %46
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %11 = call i32 @bfa_ioc_timer_stop(%struct.bfa_ioc_s* %10)
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %13 = load i32, i32* @bfa_ioc_sm_op, align 4
  %14 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %12, i32 %13)
  br label %51

15:                                               ; preds = %2, %2
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %17 = call i32 @bfa_ioc_timer_stop(%struct.bfa_ioc_s* %16)
  br label %18

18:                                               ; preds = %2, %15
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %28 = call i32 %23(i32 %26, i32 %27)
  %29 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %30 = load i32, i32* @bfa_ioc_sm_fail, align 4
  %31 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 129
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %35, i32 0, i32 0
  %37 = load i32, i32* @IOCPF_E_GETATTRFAIL, align 4
  %38 = call i32 @bfa_fsm_send_event(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %18
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %42 = call i32 @bfa_ioc_timer_stop(%struct.bfa_ioc_s* %41)
  %43 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %44 = load i32, i32* @bfa_ioc_sm_disabling, align 4
  %45 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %43, i32 %44)
  br label %51

46:                                               ; preds = %2
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %46, %40, %39, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_timer_stop(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
