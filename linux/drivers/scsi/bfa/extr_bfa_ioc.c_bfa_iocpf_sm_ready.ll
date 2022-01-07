; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { %struct.bfa_ioc_s* }
%struct.bfa_ioc_s = type { i32 }

@bfa_iocpf_sm_disabling = common dso_local global i32 0, align 4
@bfa_iocpf_sm_initfail_sync = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*, i32)* @bfa_iocpf_sm_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_ready(%struct.bfa_iocpf_s* %0, i32 %1) #0 {
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
  switch i32 %12, label %25 [
    i32 130, label %13
    i32 128, label %17
    i32 129, label %21
  ]

13:                                               ; preds = %2
  %14 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %15 = load i32, i32* @bfa_iocpf_sm_disabling, align 4
  %16 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %14, i32 %15)
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %19 = load i32, i32* @bfa_iocpf_sm_initfail_sync, align 4
  %20 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %18, i32 %19)
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %3, align 8
  %23 = load i32, i32* @bfa_iocpf_sm_fail_sync, align 4
  %24 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s* %22, i32 %23)
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21, %17, %13
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
