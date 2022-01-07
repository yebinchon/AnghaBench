; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_qcom_remove_sysmon_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_sysmon.c_qcom_remove_sysmon_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_sysmon = type { i32, i32, i32, i32, i32 }

@sysmon_lock = common dso_local global i32 0, align 4
@sysmon_notifiers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_remove_sysmon_subdev(%struct.qcom_sysmon* %0) #0 {
  %2 = alloca %struct.qcom_sysmon*, align 8
  store %struct.qcom_sysmon* %0, %struct.qcom_sysmon** %2, align 8
  %3 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %4 = icmp ne %struct.qcom_sysmon* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = call i32 @mutex_lock(i32* @sysmon_lock)
  %8 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %9 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %8, i32 0, i32 4
  %10 = call i32 @list_del(i32* %9)
  %11 = call i32 @mutex_unlock(i32* @sysmon_lock)
  %12 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %13 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %12, i32 0, i32 3
  %14 = call i32 @blocking_notifier_chain_unregister(i32* @sysmon_notifiers, i32* %13)
  %15 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %16 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %19 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %18, i32 0, i32 1
  %20 = call i32 @rproc_remove_subdev(i32 %17, i32* %19)
  %21 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %22 = getelementptr inbounds %struct.qcom_sysmon, %struct.qcom_sysmon* %21, i32 0, i32 0
  %23 = call i32 @qmi_handle_release(i32* %22)
  %24 = load %struct.qcom_sysmon*, %struct.qcom_sysmon** %2, align 8
  %25 = call i32 @kfree(%struct.qcom_sysmon* %24)
  br label %26

26:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, i32*) #1

declare dso_local i32 @rproc_remove_subdev(i32, i32*) #1

declare dso_local i32 @qmi_handle_release(i32*) #1

declare dso_local i32 @kfree(%struct.qcom_sysmon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
