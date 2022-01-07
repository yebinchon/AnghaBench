; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_send_mgmt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_send_mgmt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fwserial_mgmt_pkt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@RCODE_BUSY = common dso_local global i32 0, align 4
@RCODE_SEND_ERROR = common dso_local global i32 0, align 4
@RCODE_GENERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mgmt write error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_peer*, %struct.fwserial_mgmt_pkt*)* @fwserial_send_mgmt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwserial_send_mgmt_sync(%struct.fwtty_peer* %0, %struct.fwserial_mgmt_pkt* %1) #0 {
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.fwserial_mgmt_pkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %3, align 8
  store %struct.fwserial_mgmt_pkt* %1, %struct.fwserial_mgmt_pkt** %4, align 8
  store i32 5, i32* %7, align 4
  br label %8

8:                                                ; preds = %53, %2
  %9 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %10 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = call i32 (...) @smp_rmb()
  %13 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %14 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %19 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %20 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %24 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %27 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %4, align 8
  %30 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %4, align 8
  %31 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  %35 = call i32 @fw_run_transaction(i32 %17, i32 %18, i32 %21, i32 %22, i32 %25, i32 %28, %struct.fwserial_mgmt_pkt* %29, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RCODE_BUSY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RCODE_SEND_ERROR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @RCODE_GENERATION, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43, %39, %8
  %48 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %49 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %48, i32 0, i32 1
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @fwtty_dbg(i32* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %8, label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_run_transaction(i32, i32, i32, i32, i32, i32, %struct.fwserial_mgmt_pkt*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @fwtty_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
