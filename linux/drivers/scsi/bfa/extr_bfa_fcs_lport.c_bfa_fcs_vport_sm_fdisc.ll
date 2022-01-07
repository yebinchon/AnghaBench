; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_fdisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_fdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32, i32, i32 }

@bfa_fcs_vport_sm_fdisc_rsp_wait = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_offline = common dso_local global i32 0, align 4
@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_fdisc_retry = common dso_local global i32 0, align 4
@bfa_fcs_vport_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_error = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*, i32)* @bfa_fcs_vport_sm_fdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_sm_fdisc(%struct.bfa_fcs_vport_s* %0, i32 %1) #0 {
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
  switch i32 %14, label %55 [
    i32 134, label %15
    i32 132, label %19
    i32 128, label %28
    i32 130, label %35
    i32 129, label %47
    i32 133, label %47
    i32 131, label %51
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %17 = load i32, i32* @bfa_fcs_vport_sm_fdisc_rsp_wait, align 4
  %18 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %16, i32 %17)
  br label %60

19:                                               ; preds = %2
  %20 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %21 = load i32, i32* @bfa_fcs_vport_sm_offline, align 4
  %22 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %20, i32 %21)
  %23 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %27 = call i32 @bfa_sm_send_event(i32 %25, i32 %26)
  br label %60

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %30 = load i32, i32* @bfa_fcs_vport_sm_online, align 4
  %31 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %29, i32 %30)
  %32 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %32, i32 0, i32 1
  %34 = call i32 @bfa_fcs_lport_online(i32* %33)
  br label %60

35:                                               ; preds = %2
  %36 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %37 = load i32, i32* @bfa_fcs_vport_sm_fdisc_retry, align 4
  %38 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %36, i32 %37)
  %39 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %40 = call i32 @__vport_bfa(%struct.bfa_fcs_vport_s* %39)
  %41 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %41, i32 0, i32 0
  %43 = load i32, i32* @bfa_fcs_vport_timeout, align 4
  %44 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %45 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %46 = call i32 @bfa_timer_start(i32 %40, i32* %42, i32 %43, %struct.bfa_fcs_vport_s* %44, i32 %45)
  br label %60

47:                                               ; preds = %2, %2
  %48 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %49 = load i32, i32* @bfa_fcs_vport_sm_offline, align 4
  %50 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %48, i32 %49)
  br label %60

51:                                               ; preds = %2
  %52 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %53 = load i32, i32* @bfa_fcs_vport_sm_error, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %52, i32 %53)
  br label %60

55:                                               ; preds = %2
  %56 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %57 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @bfa_sm_fault(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %51, %47, %35, %28, %19, %15
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @__vport_pwwn(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_online(i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @__vport_bfa(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
