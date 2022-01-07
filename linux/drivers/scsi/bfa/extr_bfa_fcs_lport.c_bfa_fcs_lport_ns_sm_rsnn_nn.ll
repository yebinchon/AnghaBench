; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_sm_rsnn_nn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_sm_rsnn_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_ns_s = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@bfa_fcs_lport_ns_sm_sending_rspn_id = common dso_local global i32 0, align 4
@BFA_FCS_MAX_NS_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_rsnn_nn_retry = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_ns_s*, i32)* @bfa_fcs_lport_ns_sm_rsnn_nn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_sm_rsnn_nn(%struct.bfa_fcs_lport_ns_s* %0, i32 %1) #0 {
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
  switch i32 %24, label %79 [
    i32 128, label %25
    i32 129, label %33
    i32 130, label %71
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %27 = load i32, i32* @bfa_fcs_lport_ns_sm_sending_rspn_id, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %26, i32 %27)
  %29 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %29, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %32 = call i32 @bfa_fcs_lport_ns_send_rspn_id(%struct.bfa_fcs_lport_ns_s* %31, i32* null)
  br label %87

33:                                               ; preds = %2
  %34 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BFA_FCS_MAX_NS_RETRIES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %41 = load i32, i32* @bfa_fcs_lport_ns_sm_rsnn_nn_retry, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %40, i32 %41)
  %43 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__* %56)
  %58 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %58, i32 0, i32 2
  %60 = load i32, i32* @bfa_fcs_lport_ns_timeout, align 4
  %61 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %62 = load i32, i32* @BFA_FCS_RETRY_TIMEOUT, align 4
  %63 = call i32 @bfa_timer_start(i32 %57, i32* %59, i32 %60, %struct.bfa_fcs_lport_ns_s* %61, i32 %62)
  br label %70

64:                                               ; preds = %33
  %65 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %66 = load i32, i32* @bfa_fcs_lport_ns_sm_sending_rspn_id, align 4
  %67 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %65, i32 %66)
  %68 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %69 = call i32 @bfa_fcs_lport_ns_send_rspn_id(%struct.bfa_fcs_lport_ns_s* %68, i32* null)
  br label %70

70:                                               ; preds = %64, %39
  br label %87

71:                                               ; preds = %2
  %72 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %73 = load i32, i32* @bfa_fcs_lport_ns_sm_offline, align 4
  %74 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s* %72, i32 %73)
  %75 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %76 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bfa_fcxp_discard(i32 %77)
  br label %87

79:                                               ; preds = %2
  %80 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @bfa_sm_fault(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %71, %70, %25
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_ns_send_rspn_id(%struct.bfa_fcs_lport_ns_s*, i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @BFA_FCS_GET_HAL_FROM_PORT(%struct.TYPE_6__*) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
