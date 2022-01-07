; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_sm_rnn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_sm_rnn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_ns_s = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@bfa_fcs_lport_ns_sm_sending_rsnn_nn = common dso_local global i32 0, align 4
@BFA_FCS_MAX_NS_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_rnn_id_retry = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_sending_rspn_id = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_ns_s*, i32)* @bfa_fcs_lport_ns_sm_rnn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_sm_rnn_id(%struct.bfa_fcs_lport_ns_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_lport_ns_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_lport_ns_s* %0, %struct.bfa_fcs_lport_ns_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bfa_trc(i32 %9, i32 %15)
  %17 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %81 [
    i32 128, label %25
    i32 129, label %35
    i32 130, label %73
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_lport_ns_sm_sending_rsnn_nn, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %29, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %31, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %34 = call i32 @bfa_fcs_lport_ns_send_rsnn_nn(%struct.bfa_fcs_lport_ns_s* %33, i32* null)
  br label %89

35:                                               ; preds = %2
  %36 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BFA_FCS_MAX_NS_RETRIES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  %42 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %43 = load i32, i32* @bfa_fcs_lport_ns_sm_rnn_id_retry, align 4
  %44 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %42, i32 %43)
  %45 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__* %58)
  %60 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %60, i32 0, i32 2
  %62 = load i32, i32* @bfa_fcs_lport_ns_timeout, align 4
  %63 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %64 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %65 = call i32 @bfa_timer_start(i32 %59, i32* %61, i32 %62, %struct.bfa_fcs_lport_ns_s* %63, i32 %64)
  br label %72

66:                                               ; preds = %35
  %67 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %68 = load i32, i32* @bfa_fcs_lport_ns_sm_sending_rspn_id, align 4
  %69 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %67, i32 %68)
  %70 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %71 = call i32 @bfa_fcs_lport_ns_send_rspn_id(%struct.bfa_fcs_lport_ns_s* %70, i32* null)
  br label %72

72:                                               ; preds = %66, %41
  br label %89

73:                                               ; preds = %2
  %74 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bfa_fcxp_discard(i32 %76)
  %78 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %79 = load i32, i32* @bfa_fcs_lport_ns_sm_offline, align 4
  %80 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %78, i32 %79)
  br label %89

81:                                               ; preds = %2
  %82 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @bfa_sm_fault(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %73, %72, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_ns_send_rsnn_nn(%struct.bfa_fcs_lport_ns_s*, i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__*) #1

declare dso_local i32 @bfa_fcs_lport_ns_send_rspn_id(%struct.bfa_fcs_lport_ns_s*, i32*) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
