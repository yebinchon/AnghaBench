; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_iocdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_iocdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32 }

@bfa_fcport_sm_enabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_enabling_qwait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_iocdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_iocdown(%struct.bfa_fcport_s* %0, i32 %1) #0 {
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
  switch i32 %10, label %24 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %13 = call i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %17 = load i32, i32* @bfa_fcport_sm_enabling, align 4
  %18 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %16, i32 %17)
  br label %23

19:                                               ; preds = %11
  %20 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %21 = load i32, i32* @bfa_fcport_sm_enabling_qwait, align 4
  %22 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
