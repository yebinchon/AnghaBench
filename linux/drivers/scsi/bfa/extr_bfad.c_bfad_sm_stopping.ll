; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_sm_stopping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_sm_stopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }

@bfad_sm_uninit = common dso_local global i32 0, align 4
@BFAD_FC4_PROBE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfad_s*, i32)* @bfad_sm_stopping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_sm_stopping(%struct.bfad_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfad_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %28 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %11 = load i32, i32* @bfad_sm_uninit, align 4
  %12 = call i32 @bfa_sm_set_state(%struct.bfad_s* %10, i32 %11)
  %13 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %14 = call i32 @bfad_remove_intr(%struct.bfad_s* %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 1
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %19 = call i32 @bfad_im_probe_undo(%struct.bfad_s* %18)
  %20 = load i32, i32* @BFAD_FC4_PROBE_DONE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %27 = call i32 @bfad_uncfg_pport(%struct.bfad_s* %26)
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bfa_sm_fault(%struct.bfad_s* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfad_remove_intr(%struct.bfad_s*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @bfad_im_probe_undo(%struct.bfad_s*) #1

declare dso_local i32 @bfad_uncfg_pport(%struct.bfad_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
