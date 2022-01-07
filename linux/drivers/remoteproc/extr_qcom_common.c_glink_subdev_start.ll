; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_glink_subdev_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_glink_subdev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_subdev = type { i32 }
%struct.qcom_rproc_glink = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc_subdev*)* @glink_subdev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glink_subdev_start(%struct.rproc_subdev* %0) #0 {
  %2 = alloca %struct.rproc_subdev*, align 8
  %3 = alloca %struct.qcom_rproc_glink*, align 8
  store %struct.rproc_subdev* %0, %struct.rproc_subdev** %2, align 8
  %4 = load %struct.rproc_subdev*, %struct.rproc_subdev** %2, align 8
  %5 = call %struct.qcom_rproc_glink* @to_glink_subdev(%struct.rproc_subdev* %4)
  store %struct.qcom_rproc_glink* %5, %struct.qcom_rproc_glink** %3, align 8
  %6 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %3, align 8
  %7 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @qcom_glink_smem_register(i32 %8, i32 %11)
  %13 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %3, align 8
  %14 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qcom_rproc_glink*, %struct.qcom_rproc_glink** %3, align 8
  %16 = getelementptr inbounds %struct.qcom_rproc_glink, %struct.qcom_rproc_glink* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PTR_ERR_OR_ZERO(i32 %17)
  ret i32 %18
}

declare dso_local %struct.qcom_rproc_glink* @to_glink_subdev(%struct.rproc_subdev*) #1

declare dso_local i32 @qcom_glink_smem_register(i32, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
