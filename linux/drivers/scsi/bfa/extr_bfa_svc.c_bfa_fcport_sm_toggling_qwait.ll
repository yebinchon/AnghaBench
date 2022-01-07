; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_toggling_qwait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_toggling_qwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, i32 }

@bfa_fcport_sm_disabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling_qwait = common dso_local global i32 0, align 4
@bfa_fcport_sm_stopped = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabling_qwait = common dso_local global i32 0, align 4
@bfa_fcport_sm_iocfail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_toggling_qwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_toggling_qwait(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %49 [
    i32 129, label %11
    i32 128, label %29
    i32 133, label %36
    i32 134, label %37
    i32 130, label %41
    i32 131, label %41
    i32 132, label %42
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %13 = load i32, i32* @bfa_fcport_sm_disabling, align 4
  %14 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %12, i32 %13)
  %15 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %16 = call i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s* %15)
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %18 = call i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %22 = load i32, i32* @bfa_fcport_sm_enabling, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %21, i32 %22)
  br label %28

24:                                               ; preds = %11
  %25 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %26 = load i32, i32* @bfa_fcport_sm_enabling_qwait, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %31 = load i32, i32* @bfa_fcport_sm_stopped, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %30, i32 %31)
  %33 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %33, i32 0, i32 1
  %35 = call i32 @bfa_reqq_wcancel(i32* %34)
  br label %55

36:                                               ; preds = %2
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %39 = load i32, i32* @bfa_fcport_sm_disabling_qwait, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %38, i32 %39)
  br label %55

41:                                               ; preds = %2, %2
  br label %55

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %44 = load i32, i32* @bfa_fcport_sm_iocfail, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %43, i32 %44)
  %46 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %46, i32 0, i32 1
  %48 = call i32 @bfa_reqq_wcancel(i32* %47)
  br label %55

49:                                               ; preds = %2
  %50 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @bfa_sm_fault(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %42, %41, %37, %36, %29, %28
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
