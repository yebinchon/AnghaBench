; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"setdelmc\00", align 1
@setdelipm = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@qeth_l3_setdelip_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*, i32)* @qeth_l3_send_setdelmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setdelmc(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_ipaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %11 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %10, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %15 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @setdelipm, align 4
  %18 = call i32 @IPA_DATA_SIZEOF(i32 %17)
  %19 = call %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card* %12, i32 %13, i64 %16, i32 %18)
  store %struct.qeth_cmd_buffer* %19, %struct.qeth_cmd_buffer** %8, align 8
  %20 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %21 = icmp ne %struct.qeth_cmd_buffer* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %3
  %26 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %27 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %26)
  store %struct.qeth_ipa_cmd* %27, %struct.qeth_ipa_cmd** %9, align 8
  %28 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %29 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %34 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ether_addr_copy(i32 %32, i32 %35)
  %37 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %38 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @QETH_PROT_IPV6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %25
  %43 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %44 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %49 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @memcpy(i32* %47, i32* %51, i32 4)
  br label %63

53:                                               ; preds = %25
  %54 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %55 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %59 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = call i32 @memcpy(i32* %57, i32* %61, i32 4)
  br label %63

63:                                               ; preds = %53, %42
  %64 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %65 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %66 = load i32, i32* @qeth_l3_setdelip_cb, align 4
  %67 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %64, %struct.qeth_cmd_buffer* %65, i32 %66, i32* null)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card*, i32, i64, i32) #1

declare dso_local i32 @IPA_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
