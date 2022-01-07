; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_add_change_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_add_change_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_manage_intf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.qlink_resp_manage_intf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@QLINK_IFTYPE_AP = common dso_local global i32 0, align 4
@QLINK_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"VIF%u.%u: unsupported type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_vif*, i32, i32, i32*, i32)* @qtnf_cmd_send_add_change_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_cmd_send_add_change_intf(%struct.qtnf_vif* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.qlink_cmd_manage_intf*, align 8
  %15 = alloca %struct.qlink_resp_manage_intf*, align 8
  %16 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %21, i32 %24, i32 %25, i32 16)
  store %struct.sk_buff* %26, %struct.sk_buff** %12, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %123

32:                                               ; preds = %5
  %33 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %34 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qtnf_bus_lock(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.qlink_cmd_manage_intf*
  store %struct.qlink_cmd_manage_intf* %42, %struct.qlink_cmd_manage_intf** %14, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %14, align 8
  %45 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %60 [
    i32 129, label %48
    i32 128, label %54
  ]

48:                                               ; preds = %32
  %49 = load i32, i32* @QLINK_IFTYPE_AP, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %14, align 8
  %52 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  br label %73

54:                                               ; preds = %32
  %55 = load i32, i32* @QLINK_IFTYPE_STATION, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %14, align 8
  %58 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  br label %73

60:                                               ; preds = %32
  %61 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %62 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %67 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %113

73:                                               ; preds = %54, %48
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %14, align 8
  %78 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @ether_addr_copy(i32 %80, i32* %81)
  br label %89

83:                                               ; preds = %73
  %84 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %14, align 8
  %85 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @eth_zero_addr(i32 %87)
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %91 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = call i32 @qtnf_cmd_send_with_reply(i32 %94, %struct.sk_buff* %95, %struct.sk_buff** %13, i32 8, i32* null)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %113

100:                                              ; preds = %89
  %101 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.qlink_resp_manage_intf*
  store %struct.qlink_resp_manage_intf* %104, %struct.qlink_resp_manage_intf** %15, align 8
  %105 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %106 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.qlink_resp_manage_intf*, %struct.qlink_resp_manage_intf** %15, align 8
  %109 = getelementptr inbounds %struct.qlink_resp_manage_intf, %struct.qlink_resp_manage_intf* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @ether_addr_copy(i32 %107, i32* %111)
  br label %113

113:                                              ; preds = %100, %99, %60
  %114 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %115 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @qtnf_bus_unlock(i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %121 = call i32 @consume_skb(%struct.sk_buff* %120)
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %113, %29
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @qtnf_cmd_send_with_reply(i32, %struct.sk_buff*, %struct.sk_buff**, i32, i32*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
