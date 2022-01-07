; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_logo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32 }

@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*, i32)* @bfa_fcs_vport_sm_logo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_sm_logo(%struct.bfa_fcs_vport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_vport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_vport_s* %0, %struct.bfa_fcs_vport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %6 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %5)
  %7 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %8 = call i32 @__vport_pwwn(%struct.bfa_fcs_vport_s* %7)
  %9 = call i32 @bfa_trc(i32 %6, i32 %8)
  %10 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %11 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bfa_trc(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %28 [
    i32 130, label %15
    i32 128, label %21
    i32 129, label %21
    i32 131, label %27
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %20 = call i32 @bfa_sm_send_event(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %2, %2, %15
  %22 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %23 = load i32, i32* @bfa_fcs_vport_sm_uninit, align 4
  %24 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %22, i32 %23)
  %25 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %26 = call i32 @bfa_fcs_vport_free(%struct.bfa_fcs_vport_s* %25)
  br label %33

27:                                               ; preds = %2
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %30 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bfa_sm_fault(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %27, %21
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @__vport_pwwn(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_fcs_vport_free(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
