; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_remove_smd_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_remove_smd_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32 }
%struct.qcom_rproc_subdev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_remove_smd_subdev(%struct.rproc* %0, %struct.qcom_rproc_subdev* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.qcom_rproc_subdev*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.qcom_rproc_subdev* %1, %struct.qcom_rproc_subdev** %4, align 8
  %5 = load %struct.qcom_rproc_subdev*, %struct.qcom_rproc_subdev** %4, align 8
  %6 = getelementptr inbounds %struct.qcom_rproc_subdev, %struct.qcom_rproc_subdev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.rproc*, %struct.rproc** %3, align 8
  %12 = load %struct.qcom_rproc_subdev*, %struct.qcom_rproc_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.qcom_rproc_subdev, %struct.qcom_rproc_subdev* %12, i32 0, i32 1
  %14 = call i32 @rproc_remove_subdev(%struct.rproc* %11, i32* %13)
  %15 = load %struct.qcom_rproc_subdev*, %struct.qcom_rproc_subdev** %4, align 8
  %16 = getelementptr inbounds %struct.qcom_rproc_subdev, %struct.qcom_rproc_subdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @of_node_put(i32 %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @rproc_remove_subdev(%struct.rproc*, i32*) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
