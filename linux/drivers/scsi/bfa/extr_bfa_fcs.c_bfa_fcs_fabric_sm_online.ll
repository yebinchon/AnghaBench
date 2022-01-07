; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_6__*, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@bfa_fcs_fabric_sm_linkdown = common dso_local global i32 0, align 4
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_deleting = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_stopping = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_auth_failed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_fabric_sm_online(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.bfa_s*, %struct.bfa_s** %9, align 8
  store %struct.bfa_s* %10, %struct.bfa_s** %5, align 8
  %11 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(%struct.TYPE_6__* %13, i32 %18)
  %20 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bfa_trc(%struct.TYPE_6__* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %69 [
    i32 129, label %26
    i32 130, label %47
    i32 128, label %53
    i32 132, label %59
    i32 131, label %68
  ]

26:                                               ; preds = %2
  %27 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %28 = load i32, i32* @bfa_fcs_fabric_sm_linkdown, align 4
  %29 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %27, i32 %28)
  %30 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %31 = call i32 @bfa_fcport_get_topology(%struct.bfa_s* %30)
  %32 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %35, i32 0, i32 2
  %37 = call i32 @bfa_fcs_lport_offline(%struct.TYPE_7__* %36)
  br label %46

38:                                               ; preds = %26
  %39 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %43 = call i32 @bfa_sm_send_event(i32 %41, i32 %42)
  %44 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %45 = call i32 @bfa_fcs_fabric_notify_offline(%struct.bfa_fcs_fabric_s* %44)
  br label %46

46:                                               ; preds = %38, %34
  br label %75

47:                                               ; preds = %2
  %48 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %49 = load i32, i32* @bfa_fcs_fabric_sm_deleting, align 4
  %50 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %48, i32 %49)
  %51 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %52 = call i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s* %51)
  br label %75

53:                                               ; preds = %2
  %54 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %55 = load i32, i32* @bfa_fcs_fabric_sm_stopping, align 4
  %56 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %54, i32 %55)
  %57 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %58 = call i32 @bfa_fcs_fabric_stop(%struct.bfa_fcs_fabric_s* %57)
  br label %75

59:                                               ; preds = %2
  %60 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %61 = load i32, i32* @bfa_fcs_fabric_sm_auth_failed, align 4
  %62 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %60, i32 %61)
  %63 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %67 = call i32 @bfa_sm_send_event(i32 %65, i32 %66)
  br label %75

68:                                               ; preds = %2
  br label %75

69:                                               ; preds = %2
  %70 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @bfa_sm_fault(%struct.TYPE_6__* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %68, %59, %53, %47, %46
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_fcport_get_topology(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcs_lport_offline(%struct.TYPE_7__*) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_fcs_fabric_notify_offline(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_stop(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
