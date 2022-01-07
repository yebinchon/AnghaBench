; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_handle_unplug_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_handle_unplug_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.fwtty_peer = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fwtty_port = type { i32 }
%struct.fwserial_mgmt_pkt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FWPS_UNPLUG_RESPONDING = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"UNPLUG_RSP error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @fwserial_handle_unplug_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_handle_unplug_req(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca %struct.fwserial_mgmt_pkt*, align 8
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = call %struct.fwtty_peer* @to_peer(%struct.work_struct* %7, %struct.work_struct* %8)
  store %struct.fwtty_peer* %9, %struct.fwtty_peer** %3, align 8
  store %struct.fwtty_port* null, %struct.fwtty_port** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fwserial_mgmt_pkt* @kmalloc(i32 4, i32 %10)
  store %struct.fwserial_mgmt_pkt* %11, %struct.fwserial_mgmt_pkt** %5, align 8
  %12 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %13 = icmp ne %struct.fwserial_mgmt_pkt* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %93

15:                                               ; preds = %1
  %16 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %17 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %20 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %50 [
    i32 129, label %22
    i32 128, label %28
  ]

22:                                               ; preds = %15
  %23 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %24 = call i32 @fill_unplug_rsp_ok(%struct.fwserial_mgmt_pkt* %23)
  %25 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %26 = load i32, i32* @FWPS_UNPLUG_RESPONDING, align 4
  %27 = call i32 @peer_set_state(%struct.fwtty_peer* %25, i32 %26)
  br label %53

28:                                               ; preds = %15
  %29 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %30 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %37 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %81

41:                                               ; preds = %28
  %42 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %43 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %42, i32 0, i32 3
  %44 = call i32 @del_timer(i32* %43)
  %45 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %46 = call i32 @fill_unplug_rsp_ok(%struct.fwserial_mgmt_pkt* %45)
  %47 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %48 = load i32, i32* @FWPS_UNPLUG_RESPONDING, align 4
  %49 = call i32 @peer_set_state(%struct.fwtty_peer* %47, i32 %48)
  br label %53

50:                                               ; preds = %15
  %51 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %52 = call i32 @fill_unplug_rsp_nack(%struct.fwserial_mgmt_pkt* %51)
  br label %53

53:                                               ; preds = %50, %41, %22
  %54 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %55 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %58 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %59 = call i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer* %57, %struct.fwserial_mgmt_pkt* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %61 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %64 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FWPS_UNPLUG_RESPONDING, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %53
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @RCODE_COMPLETE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %74 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %73, i32 0, i32 2
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @fwtty_err(i32* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %79 = call %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer* %78)
  store %struct.fwtty_port* %79, %struct.fwtty_port** %4, align 8
  br label %80

80:                                               ; preds = %77, %53
  br label %81

81:                                               ; preds = %80, %40
  %82 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %83 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock_bh(i32* %83)
  %85 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %86 = icmp ne %struct.fwtty_port* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %89 = call i32 @fwserial_release_port(%struct.fwtty_port* %88, i32 1)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %92 = call i32 @kfree(%struct.fwserial_mgmt_pkt* %91)
  br label %93

93:                                               ; preds = %90, %14
  ret void
}

declare dso_local %struct.fwtty_peer* @to_peer(%struct.work_struct*, %struct.work_struct*) #1

declare dso_local %struct.fwserial_mgmt_pkt* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fill_unplug_rsp_ok(%struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @fill_unplug_rsp_nack(%struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer*, %struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @fwtty_err(i32*, i8*, i32) #1

declare dso_local %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer*) #1

declare dso_local i32 @fwserial_release_port(%struct.fwtty_port*, i32) #1

declare dso_local i32 @kfree(%struct.fwserial_mgmt_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
