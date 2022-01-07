; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_updown_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_updown_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_updown = type { i32 }

@QLINK_CMD_UPDOWN_INTF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_updown_intf(%struct.qtnf_vif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qlink_cmd_updown*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %10 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %15 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QLINK_CMD_UPDOWN_INTF, align 4
  %18 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %13, i32 %16, i32 %17, i32 4)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.qlink_cmd_updown*
  store %struct.qlink_cmd_updown* %28, %struct.qlink_cmd_updown** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.qlink_cmd_updown*, %struct.qlink_cmd_updown** %7, align 8
  %35 = getelementptr inbounds %struct.qlink_cmd_updown, %struct.qlink_cmd_updown* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %37 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qtnf_bus_lock(i32 %40)
  %42 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %43 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @qtnf_cmd_send(i32 %46, %struct.sk_buff* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %24
  br label %53

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52, %51
  %54 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %55 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @qtnf_bus_unlock(i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
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
