; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_del_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_del_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.station_del_parameters = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_del_sta = type { i32, i32, i32 }

@QLINK_CMD_DEL_STA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_del_sta(%struct.qtnf_vif* %0, %struct.station_del_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca %struct.station_del_parameters*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qlink_cmd_del_sta*, align 8
  %8 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %4, align 8
  store %struct.station_del_parameters* %1, %struct.station_del_parameters** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %10 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %15 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QLINK_CMD_DEL_STA, align 4
  %18 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %13, i32 %16, i32 %17, i32 12)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %83

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
  %34 = inttoptr i64 %33 to %struct.qlink_cmd_del_sta*
  store %struct.qlink_cmd_del_sta* %34, %struct.qlink_cmd_del_sta** %7, align 8
  %35 = load %struct.station_del_parameters*, %struct.station_del_parameters** %5, align 8
  %36 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %24
  %40 = load %struct.qlink_cmd_del_sta*, %struct.qlink_cmd_del_sta** %7, align 8
  %41 = getelementptr inbounds %struct.qlink_cmd_del_sta, %struct.qlink_cmd_del_sta* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.station_del_parameters*, %struct.station_del_parameters** %5, align 8
  %44 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ether_addr_copy(i32 %42, i32 %45)
  br label %52

47:                                               ; preds = %24
  %48 = load %struct.qlink_cmd_del_sta*, %struct.qlink_cmd_del_sta** %7, align 8
  %49 = getelementptr inbounds %struct.qlink_cmd_del_sta, %struct.qlink_cmd_del_sta* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @eth_broadcast_addr(i32 %50)
  br label %52

52:                                               ; preds = %47, %39
  %53 = load %struct.station_del_parameters*, %struct.station_del_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qlink_cmd_del_sta*, %struct.qlink_cmd_del_sta** %7, align 8
  %57 = getelementptr inbounds %struct.qlink_cmd_del_sta, %struct.qlink_cmd_del_sta* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.station_del_parameters*, %struct.station_del_parameters** %5, align 8
  %59 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cpu_to_le16(i32 %60)
  %62 = load %struct.qlink_cmd_del_sta*, %struct.qlink_cmd_del_sta** %7, align 8
  %63 = getelementptr inbounds %struct.qlink_cmd_del_sta, %struct.qlink_cmd_del_sta* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %65 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @qtnf_cmd_send(i32 %68, %struct.sk_buff* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %52
  br label %75

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74, %73
  %76 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %77 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @qtnf_bus_unlock(i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
