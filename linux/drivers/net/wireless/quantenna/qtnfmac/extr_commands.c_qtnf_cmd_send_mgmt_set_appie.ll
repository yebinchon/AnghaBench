; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_mgmt_set_appie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_mgmt_set_appie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@QTNF_MAX_CMD_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"VIF%u.%u: %u frame is too big: %zu\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@QLINK_CMD_MGMT_SET_APPIE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qtnf_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @QTNF_MAX_CMD_BUF_SIZE, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %17 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %22 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %24, i64 %25)
  %27 = load i32, i32* @E2BIG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %76

29:                                               ; preds = %4
  %30 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %31 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %36 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @QLINK_CMD_MGMT_SET_APPIE, align 4
  %39 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %34, i32 %37, i32 %38, i32 4)
  store %struct.sk_buff* %39, %struct.sk_buff** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %76

45:                                               ; preds = %29
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff* %46, i32 %47, i32* %48, i64 %49)
  %51 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %52 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @qtnf_bus_lock(i32 %55)
  %57 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %58 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = call i32 @qtnf_cmd_send(i32 %61, %struct.sk_buff* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %68

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %66
  %69 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %70 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qtnf_bus_unlock(i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %42, %15
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i64) #1

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff*, i32, i32*, i64) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
