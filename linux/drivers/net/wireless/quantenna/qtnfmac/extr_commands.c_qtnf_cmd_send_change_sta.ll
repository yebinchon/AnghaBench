; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_change_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_change_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.station_parameters = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_change_sta = type { i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }

@QLINK_CMD_CHANGE_STA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLINK_IFTYPE_AP = common dso_local global i32 0, align 4
@QLINK_IFTYPE_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unsupported iftype %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_change_sta(%struct.qtnf_vif* %0, i32* %1, %struct.station_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.station_parameters*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.qlink_cmd_change_sta*, align 8
  %10 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.station_parameters* %2, %struct.station_parameters** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %12 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %17 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QLINK_CMD_CHANGE_STA, align 4
  %20 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %15, i32 %18, i32 %19, i32 32)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %3
  %27 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %28 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qtnf_bus_lock(i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.qlink_cmd_change_sta*
  store %struct.qlink_cmd_change_sta* %36, %struct.qlink_cmd_change_sta** %9, align 8
  %37 = load %struct.qlink_cmd_change_sta*, %struct.qlink_cmd_change_sta** %9, align 8
  %38 = getelementptr inbounds %struct.qlink_cmd_change_sta, %struct.qlink_cmd_change_sta* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ether_addr_copy(i32 %39, i32* %40)
  %42 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %43 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qtnf_encode_sta_flags(i32 %44)
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.qlink_cmd_change_sta*, %struct.qlink_cmd_change_sta** %9, align 8
  %48 = getelementptr inbounds %struct.qlink_cmd_change_sta, %struct.qlink_cmd_change_sta* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %51 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @qtnf_encode_sta_flags(i32 %52)
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.qlink_cmd_change_sta*, %struct.qlink_cmd_change_sta** %9, align 8
  %56 = getelementptr inbounds %struct.qlink_cmd_change_sta, %struct.qlink_cmd_change_sta* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %59 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %72 [
    i32 129, label %62
    i32 128, label %67
  ]

62:                                               ; preds = %26
  %63 = load i32, i32* @QLINK_IFTYPE_AP, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.qlink_cmd_change_sta*, %struct.qlink_cmd_change_sta** %9, align 8
  %66 = getelementptr inbounds %struct.qlink_cmd_change_sta, %struct.qlink_cmd_change_sta* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %80

67:                                               ; preds = %26
  %68 = load i32, i32* @QLINK_IFTYPE_STATION, align 4
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.qlink_cmd_change_sta*, %struct.qlink_cmd_change_sta** %9, align 8
  %71 = getelementptr inbounds %struct.qlink_cmd_change_sta, %struct.qlink_cmd_change_sta* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %80

72:                                               ; preds = %26
  %73 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %74 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  br label %92

80:                                               ; preds = %67, %62
  %81 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %82 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call i32 @qtnf_cmd_send(i32 %85, %struct.sk_buff* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %90, %72
  %93 = load %struct.qtnf_vif*, %struct.qtnf_vif** %5, align 8
  %94 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @qtnf_bus_unlock(i32 %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %92, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qtnf_encode_sta_flags(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
