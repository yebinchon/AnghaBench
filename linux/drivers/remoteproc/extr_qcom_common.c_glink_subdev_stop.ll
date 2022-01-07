; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_glink_subdev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_glink_subdev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_subdev = type { i32 }
%struct.qcom_rproc_glink = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc_subdev*, i32)* @glink_subdev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glink_subdev_stop(%struct.rproc_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.rproc_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_rproc_glink*, align 8
  store %struct.rproc_subdev* %0, %struct.rproc_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rproc_subdev*, %struct.rproc_subdev** %3, align 8
  %7 = call %struct.qcom_rproc_glink* @to_glink_subdev(%struct.rproc_subdev* %6)
  store %struct.qcom_rproc_glink* %7, %struct.qcom_rproc_glink** %5, align 8
  %8 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %5, align 8
  %9 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @qcom_glink_smem_unregister(i32* %10)
  %12 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %5, align 8
  %13 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local %struct.qcom_rproc_glink* @to_glink_subdev(%struct.rproc_subdev*) #1

declare dso_local i32 @qcom_glink_smem_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
