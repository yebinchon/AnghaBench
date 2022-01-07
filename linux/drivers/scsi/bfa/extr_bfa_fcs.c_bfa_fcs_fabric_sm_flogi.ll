; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_flogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BFA_FCS_FABRIC_SWITCHED = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_auth = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_flogi_retry = common dso_local global i32 0, align 4
@bfa_fcs_fabric_delay = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_RETRY_DELAY = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_loopback = common dso_local global i32 0, align 4
@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_N2N = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_nofabric = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_linkdown = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_deleting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_flogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_flogi(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bfa_trc(%struct.TYPE_7__* %7, i32 %12)
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_7__* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %122 [
    i32 133, label %20
    i32 128, label %58
    i32 130, label %73
    i32 129, label %84
    i32 131, label %102
    i32 132, label %111
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_fcport_set_tx_bbcredit(i32 %25, i32 %28)
  %30 = load i32, i32* @BFA_FCS_FABRIC_SWITCHED, align 4
  %31 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %20
  %38 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %44 = load i32, i32* @bfa_fcs_fabric_sm_auth, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %43, i32 %44)
  %46 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bfa_trc(%struct.TYPE_7__* %48, i32 %49)
  br label %57

51:                                               ; preds = %37, %20
  %52 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %53 = load i32, i32* @bfa_fcs_fabric_sm_online, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %52, i32 %53)
  %55 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %56 = call i32 @bfa_fcs_fabric_notify_online(%struct.bfa_fcs_fabric_s* %55)
  br label %57

57:                                               ; preds = %51, %42
  br label %128

58:                                               ; preds = %2
  %59 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %60 = load i32, i32* @bfa_fcs_fabric_sm_flogi_retry, align 4
  %61 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %59, i32 %60)
  %62 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %67, i32 0, i32 4
  %69 = load i32, i32* @bfa_fcs_fabric_delay, align 4
  %70 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %71 = load i32, i32* @BFA_FCS_FABRIC_RETRY_DELAY, align 4
  %72 = call i32 @bfa_timer_start(i32 %66, i32* %68, i32 %69, %struct.bfa_fcs_fabric_s* %70, i32 %71)
  br label %128

73:                                               ; preds = %2
  %74 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %75 = load i32, i32* @bfa_fcs_fabric_sm_loopback, align 4
  %76 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %74, i32 %75)
  %77 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %81 = call i32 @bfa_sm_send_event(i32 %79, i32 %80)
  %82 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %83 = call i32 @bfa_fcs_fabric_set_opertype(%struct.bfa_fcs_fabric_s* %82)
  br label %128

84:                                               ; preds = %2
  %85 = load i32, i32* @BFA_FCS_FABRIC_N2N, align 4
  %86 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %94 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @bfa_fcport_set_tx_bbcredit(i32 %92, i32 %95)
  %97 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %98 = call i32 @bfa_fcs_fabric_notify_online(%struct.bfa_fcs_fabric_s* %97)
  %99 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %100 = load i32, i32* @bfa_fcs_fabric_sm_nofabric, align 4
  %101 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %99, i32 %100)
  br label %128

102:                                              ; preds = %2
  %103 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %104 = load i32, i32* @bfa_fcs_fabric_sm_linkdown, align 4
  %105 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %103, i32 %104)
  %106 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %107 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %110 = call i32 @bfa_sm_send_event(i32 %108, i32 %109)
  br label %128

111:                                              ; preds = %2
  %112 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %113 = load i32, i32* @bfa_fcs_fabric_sm_deleting, align 4
  %114 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %112, i32 %113)
  %115 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %116 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %119 = call i32 @bfa_sm_send_event(i32 %117, i32 %118)
  %120 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %121 = call i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s* %120)
  br label %128

122:                                              ; preds = %2
  %123 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %124 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @bfa_sm_fault(%struct.TYPE_7__* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %111, %102, %84, %73, %58, %57
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bfa_fcport_set_tx_bbcredit(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_fcs_fabric_notify_online(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_fcs_fabric_set_opertype(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
