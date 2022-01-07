; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_sm_fcs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_sm_fcs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32 }

@bfad_sm_stopping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfad_s*, i32)* @bfad_sm_fcs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_sm_fcs_exit(%struct.bfad_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @bfa_trc(%struct.bfad_s* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %11 = load i32, i32* @bfad_sm_stopping, align 4
  %12 = call i32 @bfa_sm_set_state(%struct.bfad_s* %10, i32 %11)
  %13 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %14 = call i32 @bfad_stop(%struct.bfad_s* %13)
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_sm_fault(%struct.bfad_s* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfad_stop(%struct.bfad_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
