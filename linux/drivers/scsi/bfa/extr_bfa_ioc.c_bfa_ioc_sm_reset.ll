; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_sm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }

@bfa_ioc_sm_enabling = common dso_local global i32 0, align 4
@bfa_ioc_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i32)* @bfa_ioc_sm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_reset(%struct.bfa_ioc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfa_ioc_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %20 [
    i32 128, label %9
    i32 129, label %13
    i32 130, label %16
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %11 = load i32, i32* @bfa_ioc_sm_enabling, align 4
  %12 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %10, i32 %11)
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %15 = call i32 @bfa_ioc_disable_comp(%struct.bfa_ioc_s* %14)
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %18 = load i32, i32* @bfa_ioc_sm_uninit, align 4
  %19 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %17, i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_sm_fault(%struct.bfa_ioc_s* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16, %13, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_disable_comp(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
