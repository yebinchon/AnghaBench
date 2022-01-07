; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_set_default_mgmt_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_set_default_mgmt_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_set_def_mgmt_key = type { i32 }

@QLINK_CMD_SET_DEFAULT_MGMT_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_set_default_mgmt_key(%struct.qtnf_vif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qlink_cmd_set_def_mgmt_key*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %10 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %15 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QLINK_CMD_SET_DEFAULT_MGMT_KEY, align 4
  %18 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %13, i32 %16, i32 %17, i32 4)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %26 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qtnf_bus_lock(i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.qlink_cmd_set_def_mgmt_key*
  store %struct.qlink_cmd_set_def_mgmt_key* %34, %struct.qlink_cmd_set_def_mgmt_key** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.qlink_cmd_set_def_mgmt_key*, %struct.qlink_cmd_set_def_mgmt_key** %7, align 8
  %37 = getelementptr inbounds %struct.qlink_cmd_set_def_mgmt_key, %struct.qlink_cmd_set_def_mgmt_key* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %39 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @qtnf_cmd_send(i32 %42, %struct.sk_buff* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  br label %49

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %51 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qtnf_bus_unlock(i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %49, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
