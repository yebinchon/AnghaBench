; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_del_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_del_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_manage_intf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }

@QLINK_CMD_DEL_INTF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLINK_IFTYPE_AP = common dso_local global i32 0, align 4
@QLINK_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VIF%u.%u: unsupported iftype %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_del_intf(%struct.qtnf_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qtnf_vif*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.qlink_cmd_manage_intf*, align 8
  %6 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %8 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QLINK_CMD_DEL_INTF, align 4
  %16 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %11, i32 %14, i32 %15, i32 16)
  store %struct.sk_buff* %16, %struct.sk_buff** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %90

22:                                               ; preds = %1
  %23 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %24 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @qtnf_bus_lock(i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.qlink_cmd_manage_intf*
  store %struct.qlink_cmd_manage_intf* %32, %struct.qlink_cmd_manage_intf** %5, align 8
  %33 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %34 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %49 [
    i32 129, label %37
    i32 128, label %43
  ]

37:                                               ; preds = %22
  %38 = load i32, i32* @QLINK_IFTYPE_AP, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %5, align 8
  %41 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  br label %65

43:                                               ; preds = %22
  %44 = load i32, i32* @QLINK_IFTYPE_STATION, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %5, align 8
  %47 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  br label %65

49:                                               ; preds = %22
  %50 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %51 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %56 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %59 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %82

65:                                               ; preds = %43, %37
  %66 = load %struct.qlink_cmd_manage_intf*, %struct.qlink_cmd_manage_intf** %5, align 8
  %67 = getelementptr inbounds %struct.qlink_cmd_manage_intf, %struct.qlink_cmd_manage_intf* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @eth_zero_addr(i32 %69)
  %71 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %72 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @qtnf_cmd_send(i32 %75, %struct.sk_buff* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %82

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %80, %49
  %83 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %84 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @qtnf_bus_unlock(i32 %87)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %82, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
