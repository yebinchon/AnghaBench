; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_mgmt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_mgmt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.fwserial_mgmt_pkt = type { i32 }
%struct.fwtty_peer = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"peer(%d:%x) not found\0A\00", align 1
@RCODE_CONFLICT_ERROR = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @fwserial_mgmt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_mgmt_handler(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.fwserial_mgmt_pkt*, align 8
  %22 = alloca %struct.fwtty_peer*, align 8
  %23 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = load i8*, i8** %18, align 8
  %25 = bitcast i8* %24 to %struct.fwserial_mgmt_pkt*
  store %struct.fwserial_mgmt_pkt* %25, %struct.fwserial_mgmt_pkt** %21, align 8
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.fwtty_peer* @__fwserial_peer_by_node_id(%struct.fw_card* %27, i32 %28, i32 %29)
  store %struct.fwtty_peer* %30, %struct.fwtty_peer** %22, align 8
  %31 = load %struct.fwtty_peer*, %struct.fwtty_peer** %22, align 8
  %32 = icmp ne %struct.fwtty_peer* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %10
  %34 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @fwtty_dbg(%struct.fw_card* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %39 = call i32 @__dump_peer_list(%struct.fw_card* %38)
  %40 = load i32, i32* @RCODE_CONFLICT_ERROR, align 4
  store i32 %40, i32* %23, align 4
  br label %52

41:                                               ; preds = %10
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %49 [
    i32 128, label %43
  ]

43:                                               ; preds = %41
  %44 = load %struct.fwtty_peer*, %struct.fwtty_peer** %22, align 8
  %45 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %21, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %19, align 8
  %48 = call i32 @fwserial_parse_mgmt_write(%struct.fwtty_peer* %44, %struct.fwserial_mgmt_pkt* %45, i64 %46, i64 %47)
  store i32 %48, i32* %23, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %50, i32* %23, align 4
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %33
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %55 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %56 = load i32, i32* %23, align 4
  %57 = call i32 @fw_send_response(%struct.fw_card* %54, %struct.fw_request* %55, i32 %56)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fwtty_peer* @__fwserial_peer_by_node_id(%struct.fw_card*, i32, i32) #1

declare dso_local i32 @fwtty_dbg(%struct.fw_card*, i8*, i32, i32) #1

declare dso_local i32 @__dump_peer_list(%struct.fw_card*) #1

declare dso_local i32 @fwserial_parse_mgmt_write(%struct.fwtty_peer*, %struct.fwserial_mgmt_pkt*, i64, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
