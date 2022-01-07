; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32*, i32*, i32 }

@QTNF_MAX_MAC = common dso_local global i32 0, align 4
@QTNF_FW_STATE_DETACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_core_detach(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %2, align 8
  %4 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %5 = call i32 @qtnf_bus_data_rx_stop(%struct.qtnf_bus* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %14, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @QTNF_MAX_MAC, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @qtnf_core_mac_detach(%struct.qtnf_bus* %11, i32 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %6

17:                                               ; preds = %6
  %18 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %19 = call i64 @qtnf_fw_is_up(%struct.qtnf_bus* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %23 = call i32 @qtnf_cmd_send_deinit_fw(%struct.qtnf_bus* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* @QTNF_FW_STATE_DETACHED, align 4
  %26 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %27 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %29 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %34 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @flush_workqueue(i32* %35)
  %37 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %38 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @destroy_workqueue(i32* %39)
  %41 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %42 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %32, %24
  %44 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %45 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %50 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @flush_workqueue(i32* %51)
  %53 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %54 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @destroy_workqueue(i32* %55)
  %57 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %58 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %48, %43
  %60 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %61 = call i32 @qtnf_trans_free(%struct.qtnf_bus* %60)
  ret void
}

declare dso_local i32 @qtnf_bus_data_rx_stop(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_core_mac_detach(%struct.qtnf_bus*, i32) #1

declare dso_local i64 @qtnf_fw_is_up(%struct.qtnf_bus*) #1

declare dso_local i32 @qtnf_cmd_send_deinit_fw(%struct.qtnf_bus*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @qtnf_trans_free(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
