; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_connect_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_connect_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i64, i32, i32, %struct.fwtty_port*, i32 }
%struct.fwtty_port = type { i32 }
%struct.fwserial_mgmt_pkt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"avail ports in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FWPS_NOT_ATTACHED = common dso_local global i64 0, align 8
@FWPS_PLUG_PENDING = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@VIRT_CABLE_PLUG_TIMEOUT = common dso_local global i64 0, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_peer*)* @fwserial_connect_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwserial_connect_peer(%struct.fwtty_peer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.fwtty_port*, align 8
  %5 = alloca %struct.fwserial_mgmt_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.fwserial_mgmt_pkt* @kmalloc(i32 4, i32 %8)
  store %struct.fwserial_mgmt_pkt* %9, %struct.fwserial_mgmt_pkt** %5, align 8
  %10 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %11 = icmp ne %struct.fwserial_mgmt_pkt* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %107

15:                                               ; preds = %1
  %16 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %17 = call %struct.fwtty_port* @fwserial_find_port(%struct.fwtty_peer* %16)
  store %struct.fwtty_port* %17, %struct.fwtty_port** %4, align 8
  %18 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %19 = icmp ne %struct.fwtty_port* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %22 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %21, i32 0, i32 4
  %23 = call i32 @fwtty_err(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %103

26:                                               ; preds = %15
  %27 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %28 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %31 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FWPS_NOT_ATTACHED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %97

38:                                               ; preds = %26
  %39 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %40 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %41 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %40, i32 0, i32 3
  store %struct.fwtty_port* %39, %struct.fwtty_port** %41, align 8
  %42 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %43 = load i64, i64* @FWPS_PLUG_PENDING, align 8
  %44 = call i32 @peer_set_state(%struct.fwtty_peer* %42, i64 %43)
  %45 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %46 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %47 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %46, i32 0, i32 3
  %48 = load %struct.fwtty_port*, %struct.fwtty_port** %47, align 8
  %49 = call i32 @fill_plug_req(%struct.fwserial_mgmt_pkt* %45, %struct.fwtty_port* %48)
  %50 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %51 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %50, i32 0, i32 2
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* @VIRT_CABLE_PLUG_TIMEOUT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @mod_timer(i32* %51, i64 %54)
  %56 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %57 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %60 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %61 = call i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer* %59, %struct.fwserial_mgmt_pkt* %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %63 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %66 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FWPS_PLUG_PENDING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %38
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RCODE_COMPLETE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %91

85:                                               ; preds = %70, %38
  %86 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %87 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %86, i32 0, i32 1
  %88 = call i32 @spin_unlock_bh(i32* %87)
  %89 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %90 = call i32 @kfree(%struct.fwserial_mgmt_pkt* %89)
  store i32 0, i32* %2, align 4
  br label %107

91:                                               ; preds = %84
  %92 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %93 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %92, i32 0, i32 2
  %94 = call i32 @del_timer(i32* %93)
  %95 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %96 = call i32 @peer_revert_state(%struct.fwtty_peer* %95)
  br label %97

97:                                               ; preds = %91, %35
  %98 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %99 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %102 = call i32 @fwserial_release_port(%struct.fwtty_port* %101, i32 0)
  br label %103

103:                                              ; preds = %97, %20
  %104 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %5, align 8
  %105 = call i32 @kfree(%struct.fwserial_mgmt_pkt* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %85, %12
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.fwserial_mgmt_pkt* @kmalloc(i32, i32) #1

declare dso_local %struct.fwtty_port* @fwserial_find_port(%struct.fwtty_peer*) #1

declare dso_local i32 @fwtty_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i64) #1

declare dso_local i32 @fill_plug_req(%struct.fwserial_mgmt_pkt*, %struct.fwtty_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer*, %struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @kfree(%struct.fwserial_mgmt_pkt*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @peer_revert_state(%struct.fwtty_peer*) #1

declare dso_local i32 @fwserial_release_port(%struct.fwtty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
