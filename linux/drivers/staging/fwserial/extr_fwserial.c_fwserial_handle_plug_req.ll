; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_handle_plug_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_handle_plug_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.fwtty_peer = type { i32, i32, i32, %struct.fwtty_port*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.fwtty_port = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.virt_plug_params }
%struct.virt_plug_params = type { i32 }
%struct.fwserial_mgmt_pkt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no more ports avail\0A\00", align 1
@FWPS_PLUG_RESPONDING = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PLUG_RSP error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @fwserial_handle_plug_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_handle_plug_req(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.virt_plug_params*, align 8
  %5 = alloca %struct.fwtty_port*, align 8
  %6 = alloca %struct.fwserial_mgmt_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fwtty_port*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %10 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %11 = call %struct.fwtty_peer* @to_peer(%struct.work_struct* %9, %struct.work_struct* %10)
  store %struct.fwtty_peer* %11, %struct.fwtty_peer** %3, align 8
  %12 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %13 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.virt_plug_params* %14, %struct.virt_plug_params** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.fwserial_mgmt_pkt* @kmalloc(i32 4, i32 %15)
  store %struct.fwserial_mgmt_pkt* %16, %struct.fwserial_mgmt_pkt** %6, align 8
  %17 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %18 = icmp ne %struct.fwserial_mgmt_pkt* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %140

20:                                               ; preds = %1
  %21 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %22 = call %struct.fwtty_port* @fwserial_find_port(%struct.fwtty_peer* %21)
  store %struct.fwtty_port* %22, %struct.fwtty_port** %5, align 8
  %23 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %24 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %27 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %76 [
    i32 129, label %29
    i32 128, label %51
  ]

29:                                               ; preds = %20
  %30 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %31 = icmp ne %struct.fwtty_port* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %34 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %33, i32 0, i32 2
  %35 = call i32 (i32*, i8*, ...) @fwtty_err(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %37 = call i32 @fill_plug_rsp_nack(%struct.fwserial_mgmt_pkt* %36)
  br label %50

38:                                               ; preds = %29
  %39 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %40 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %41 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %40, i32 0, i32 3
  store %struct.fwtty_port* %39, %struct.fwtty_port** %41, align 8
  %42 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %43 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %44 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %43, i32 0, i32 3
  %45 = load %struct.fwtty_port*, %struct.fwtty_port** %44, align 8
  %46 = call i32 @fill_plug_rsp_ok(%struct.fwserial_mgmt_pkt* %42, %struct.fwtty_port* %45)
  %47 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %48 = load i32, i32* @FWPS_PLUG_RESPONDING, align 4
  %49 = call i32 @peer_set_state(%struct.fwtty_peer* %47, i32 %48)
  store %struct.fwtty_port* null, %struct.fwtty_port** %5, align 8
  br label %50

50:                                               ; preds = %38, %32
  br label %79

51:                                               ; preds = %20
  %52 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %53 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %60 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %128

64:                                               ; preds = %51
  %65 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %66 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %65, i32 0, i32 4
  %67 = call i32 @del_timer(i32* %66)
  %68 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %69 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %70 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %69, i32 0, i32 3
  %71 = load %struct.fwtty_port*, %struct.fwtty_port** %70, align 8
  %72 = call i32 @fill_plug_rsp_ok(%struct.fwserial_mgmt_pkt* %68, %struct.fwtty_port* %71)
  %73 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %74 = load i32, i32* @FWPS_PLUG_RESPONDING, align 4
  %75 = call i32 @peer_set_state(%struct.fwtty_peer* %73, i32 %74)
  br label %79

76:                                               ; preds = %20
  %77 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %78 = call i32 @fill_plug_rsp_nack(%struct.fwserial_mgmt_pkt* %77)
  br label %79

79:                                               ; preds = %76, %64, %50
  %80 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %81 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock_bh(i32* %81)
  %83 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %84 = icmp ne %struct.fwtty_port* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %87 = call i32 @fwserial_release_port(%struct.fwtty_port* %86, i32 0)
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %90 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %91 = call i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer* %89, %struct.fwserial_mgmt_pkt* %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %93 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %92, i32 0, i32 1
  %94 = call i32 @spin_lock_bh(i32* %93)
  %95 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %96 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @FWPS_PLUG_RESPONDING, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @RCODE_COMPLETE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %106 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %105, i32 0, i32 3
  %107 = load %struct.fwtty_port*, %struct.fwtty_port** %106, align 8
  store %struct.fwtty_port* %107, %struct.fwtty_port** %8, align 8
  %108 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %109 = load %struct.virt_plug_params*, %struct.virt_plug_params** %4, align 8
  %110 = call i32 @fwserial_virt_plug_complete(%struct.fwtty_peer* %108, %struct.virt_plug_params* %109)
  %111 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %112 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %111, i32 0, i32 1
  %113 = call i32 @spin_unlock_bh(i32* %112)
  %114 = load %struct.fwtty_port*, %struct.fwtty_port** %8, align 8
  %115 = call i32 @fwtty_write_port_status(%struct.fwtty_port* %114)
  %116 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %117 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %116, i32 0, i32 1
  %118 = call i32 @spin_lock_bh(i32* %117)
  br label %126

119:                                              ; preds = %100
  %120 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %121 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %120, i32 0, i32 2
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i32*, i8*, ...) @fwtty_err(i32* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %125 = call %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer* %124)
  store %struct.fwtty_port* %125, %struct.fwtty_port** %5, align 8
  br label %126

126:                                              ; preds = %119, %104
  br label %127

127:                                              ; preds = %126, %88
  br label %128

128:                                              ; preds = %127, %63
  %129 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %130 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %129, i32 0, i32 1
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %133 = icmp ne %struct.fwtty_port* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  %136 = call i32 @fwserial_release_port(%struct.fwtty_port* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %6, align 8
  %139 = call i32 @kfree(%struct.fwserial_mgmt_pkt* %138)
  br label %140

140:                                              ; preds = %137, %19
  ret void
}

declare dso_local %struct.fwtty_peer* @to_peer(%struct.work_struct*, %struct.work_struct*) #1

declare dso_local %struct.fwserial_mgmt_pkt* @kmalloc(i32, i32) #1

declare dso_local %struct.fwtty_port* @fwserial_find_port(%struct.fwtty_peer*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fwtty_err(i32*, i8*, ...) #1

declare dso_local i32 @fill_plug_rsp_nack(%struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @fill_plug_rsp_ok(%struct.fwserial_mgmt_pkt*, %struct.fwtty_port*) #1

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwserial_release_port(%struct.fwtty_port*, i32) #1

declare dso_local i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer*, %struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @fwserial_virt_plug_complete(%struct.fwtty_peer*, %struct.virt_plug_params*) #1

declare dso_local i32 @fwtty_write_port_status(%struct.fwtty_port*) #1

declare dso_local %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer*) #1

declare dso_local i32 @kfree(%struct.fwserial_mgmt_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
