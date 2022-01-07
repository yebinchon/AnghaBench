; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_unregister_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_unregister_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_edge = type { i32, i32, i32, i32, i32 }

@qcom_smd_remove_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't remove smd device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_smd_unregister_edge(%struct.qcom_smd_edge* %0) #0 {
  %2 = alloca %struct.qcom_smd_edge*, align 8
  %3 = alloca i32, align 4
  store %struct.qcom_smd_edge* %0, %struct.qcom_smd_edge** %2, align 8
  %4 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %5 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @disable_irq(i32 %6)
  %8 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %9 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %8, i32 0, i32 3
  %10 = call i32 @cancel_work_sync(i32* %9)
  %11 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %12 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %11, i32 0, i32 2
  %13 = call i32 @cancel_work_sync(i32* %12)
  %14 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %15 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %14, i32 0, i32 0
  %16 = load i32, i32* @qcom_smd_remove_device, align 4
  %17 = call i32 @device_for_each_child(i32* %15, i32* null, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %22 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %21, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %27 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mbox_free_channel(i32 %28)
  %30 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %2, align 8
  %31 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %30, i32 0, i32 0
  %32 = call i32 @device_unregister(i32* %31)
  ret i32 0
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mbox_free_channel(i32) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
