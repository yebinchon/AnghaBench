; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_set_default_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_set_default_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_set_def_key = type { i32, i32, i32 }

@QLINK_CMD_SET_DEFAULT_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_set_default_key(%struct.qtnf_vif* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.qlink_cmd_set_def_key*, align 8
  %12 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %14 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %19 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QLINK_CMD_SET_DEFAULT_KEY, align 4
  %22 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %17, i32 %20, i32 %21, i32 12)
  store %struct.sk_buff* %22, %struct.sk_buff** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %67

28:                                               ; preds = %4
  %29 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %30 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qtnf_bus_lock(i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.qlink_cmd_set_def_key*
  store %struct.qlink_cmd_set_def_key* %38, %struct.qlink_cmd_set_def_key** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.qlink_cmd_set_def_key*, %struct.qlink_cmd_set_def_key** %11, align 8
  %41 = getelementptr inbounds %struct.qlink_cmd_set_def_key, %struct.qlink_cmd_set_def_key* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.qlink_cmd_set_def_key*, %struct.qlink_cmd_set_def_key** %11, align 8
  %44 = getelementptr inbounds %struct.qlink_cmd_set_def_key, %struct.qlink_cmd_set_def_key* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.qlink_cmd_set_def_key*, %struct.qlink_cmd_set_def_key** %11, align 8
  %47 = getelementptr inbounds %struct.qlink_cmd_set_def_key, %struct.qlink_cmd_set_def_key* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %49 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call i32 @qtnf_cmd_send(i32 %52, %struct.sk_buff* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %28
  br label %59

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58, %57
  %60 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %61 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @qtnf_bus_unlock(i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %25
  %68 = load i32, i32* %5, align 4
  ret i32 %68
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
