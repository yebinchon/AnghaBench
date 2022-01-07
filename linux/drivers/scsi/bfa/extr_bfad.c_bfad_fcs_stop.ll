; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_fcs_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_fcs_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BFAD_PORT_DELETE = common dso_local global i32 0, align 4
@BFAD_E_FCS_EXIT_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_fcs_stop(%struct.bfad_s* %0) #0 {
  %2 = alloca %struct.bfad_s*, align 8
  %3 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %2, align 8
  %4 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %8, i32 0, i32 0
  %10 = call i32 @init_completion(i32* %9)
  %11 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %12 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 4
  %17 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %17, i32 0, i32 2
  %19 = call i32 @bfa_fcs_exit(i32* %18)
  %20 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 0
  %26 = call i32 @wait_for_completion(i32* %25)
  %27 = load %struct.bfad_s*, %struct.bfad_s** %2, align 8
  %28 = load i32, i32* @BFAD_E_FCS_EXIT_COMP, align 4
  %29 = call i32 @bfa_sm_send_event(%struct.bfad_s* %27, i32 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_fcs_exit(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
