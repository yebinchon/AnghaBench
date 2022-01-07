; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_getset_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_vnicc_getset_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_vnicc_getset_timeout = type { i64, i64 }
%struct._qeth_l2_vnicc_request_cbctl = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.qeth_cmd_buffer = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.qeth_vnicc_getset_timeout }

@.str = private unnamed_addr constant [9 x i8] c"vniccgst\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPA_VNICC_SET_TIMEOUT = common dso_local global i64 0, align 8
@IPA_VNICC_GET_TIMEOUT = common dso_local global i64 0, align 8
@qeth_l2_vnicc_request_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i64, i64, i64*)* @qeth_l2_vnicc_getset_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_vnicc_getset_timeout(%struct.qeth_card* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.qeth_vnicc_getset_timeout*, align 8
  %11 = alloca %struct._qeth_l2_vnicc_request_cbctl, align 8
  %12 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %14 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %13, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.qeth_vnicc_getset_timeout*, %struct.qeth_vnicc_getset_timeout** %10, align 8
  %18 = call i32 @VNICC_DATA_SIZEOF(%struct.qeth_vnicc_getset_timeout* %17)
  %19 = call %struct.qeth_cmd_buffer* @qeth_l2_vnicc_build_cmd(%struct.qeth_card* %15, i64 %16, i32 %18)
  store %struct.qeth_cmd_buffer* %19, %struct.qeth_cmd_buffer** %12, align 8
  %20 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %21 = icmp ne %struct.qeth_cmd_buffer* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %4
  %26 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %27 = call %struct.TYPE_10__* @__ipa_cmd(%struct.qeth_cmd_buffer* %26)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store %struct.qeth_vnicc_getset_timeout* %31, %struct.qeth_vnicc_getset_timeout** %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.qeth_vnicc_getset_timeout*, %struct.qeth_vnicc_getset_timeout** %10, align 8
  %34 = getelementptr inbounds %struct.qeth_vnicc_getset_timeout, %struct.qeth_vnicc_getset_timeout* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @IPA_VNICC_SET_TIMEOUT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qeth_vnicc_getset_timeout*, %struct.qeth_vnicc_getset_timeout** %10, align 8
  %42 = getelementptr inbounds %struct.qeth_vnicc_getset_timeout, %struct.qeth_vnicc_getset_timeout* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @IPA_VNICC_GET_TIMEOUT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds %struct._qeth_l2_vnicc_request_cbctl, %struct._qeth_l2_vnicc_request_cbctl* %11, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64* %48, i64** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %53 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %54 = load i32, i32* @qeth_l2_vnicc_request_cb, align 4
  %55 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %52, %struct.qeth_cmd_buffer* %53, i32 %54, %struct._qeth_l2_vnicc_request_cbctl* %11)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %22
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_l2_vnicc_build_cmd(%struct.qeth_card*, i64, i32) #1

declare dso_local i32 @VNICC_DATA_SIZEOF(%struct.qeth_vnicc_getset_timeout*) #1

declare dso_local %struct.TYPE_10__* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, %struct._qeth_l2_vnicc_request_cbctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
