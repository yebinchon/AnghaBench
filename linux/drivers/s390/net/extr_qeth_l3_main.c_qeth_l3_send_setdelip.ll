; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_send_setdelip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32 }
%struct.qeth_ipaddr = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_ipa_cmd = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"setdelip\00", align 1
@setdelip6 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPA_CMD_SETIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"flags%02X\00", align 1
@QETH_PROT_IPV6 = common dso_local global i64 0, align 8
@qeth_l3_setdelip_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*, i32)* @qeth_l3_send_setdelip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_send_setdelip(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_ipaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qeth_cmd_buffer*, align 8
  %9 = alloca %struct.qeth_ipa_cmd*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i8*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %13 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %12, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %17 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @setdelip6, align 4
  %20 = call i32 @IPA_DATA_SIZEOF(i32 %19)
  %21 = call %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card* %14, i32 %15, i64 %18, i32 %20)
  store %struct.qeth_cmd_buffer* %21, %struct.qeth_cmd_buffer** %8, align 8
  %22 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %23 = icmp ne %struct.qeth_cmd_buffer* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %105

27:                                               ; preds = %3
  %28 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %29 = call %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer* %28)
  store %struct.qeth_ipa_cmd* %29, %struct.qeth_ipa_cmd** %9, align 8
  %30 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IPA_CMD_SETIP, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i8* @qeth_l3_get_setdelip_flags(%struct.qeth_ipaddr* %30, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %36, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %40 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QETH_PROT_IPV6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %27
  %45 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %46 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %51 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = call i32 @memcpy(i32 %49, i32* %53, i32 4)
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %56 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %57 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @qeth_l3_fill_netmask(i32* %55, i32 %60)
  %62 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %63 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %68 = call i32 @memcpy(i32 %66, i32* %67, i32 4)
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %71 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  br label %100

74:                                               ; preds = %27
  %75 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %76 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %81 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = call i32 @memcpy(i32 %79, i32* %83, i32 4)
  %85 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %86 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %6, align 8
  %91 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = call i32 @memcpy(i32 %89, i32* %93, i32 4)
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.qeth_ipa_cmd*, %struct.qeth_ipa_cmd** %9, align 8
  %97 = getelementptr inbounds %struct.qeth_ipa_cmd, %struct.qeth_ipa_cmd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  br label %100

100:                                              ; preds = %74, %44
  %101 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %102 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %8, align 8
  %103 = load i32, i32* @qeth_l3_setdelip_cb, align 4
  %104 = call i32 @qeth_send_ipa_cmd(%struct.qeth_card* %101, %struct.qeth_cmd_buffer* %102, i32 %103, i32* null)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_ipa_alloc_cmd(%struct.qeth_card*, i32, i64, i32) #1

declare dso_local i32 @IPA_DATA_SIZEOF(i32) #1

declare dso_local %struct.qeth_ipa_cmd* @__ipa_cmd(%struct.qeth_cmd_buffer*) #1

declare dso_local i8* @qeth_l3_get_setdelip_flags(%struct.qeth_ipaddr*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qeth_l3_fill_netmask(i32*, i32) #1

declare dso_local i32 @qeth_send_ipa_cmd(%struct.qeth_card*, %struct.qeth_cmd_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
