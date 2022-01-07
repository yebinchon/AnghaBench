; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setassparms_get_caps_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_setassparms_get_caps_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_reply = type { %struct.qeth_ipa_caps* }
%struct.qeth_ipa_caps = type { i32, i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_setassparms_get_caps_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setassparms_get_caps_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qeth_ipa_cmd*, align 8
  %9 = alloca %struct.qeth_ipa_caps*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to %struct.qeth_ipa_cmd*
  store %struct.qeth_ipa_cmd* %11, %struct.qeth_ipa_cmd** %8, align 8
  %12 = load %struct.qeth_reply*, %struct.qeth_reply** %6, align 8
  %13 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %12, i32 0, i32 0
  %14 = load %struct.qeth_ipa_caps*, %struct.qeth_ipa_caps** %13, align 8
  store %struct.qeth_ipa_caps* %14, %struct.qeth_ipa_caps** %9, align 8
  %15 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %16 = call i64 @qeth_setassparms_inspect_rc(%struct.qeth_ipa_cmd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %23 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qeth_ipa_caps*, %struct.qeth_ipa_caps** %9, align 8
  %30 = getelementptr inbounds %struct.qeth_ipa_caps, %struct.qeth_ipa_caps* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qeth_ipa_caps*, %struct.qeth_ipa_caps** %9, align 8
  %39 = getelementptr inbounds %struct.qeth_ipa_caps, %struct.qeth_ipa_caps* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %21, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @qeth_setassparms_inspect_rc(%struct.qeth_ipa_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
