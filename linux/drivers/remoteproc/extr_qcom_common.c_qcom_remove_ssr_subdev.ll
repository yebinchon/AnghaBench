; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_remove_ssr_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_qcom_remove_ssr_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32 }
%struct.qcom_rproc_ssr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_remove_ssr_subdev(%struct.rproc* %0, %struct.qcom_rproc_ssr* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.qcom_rproc_ssr*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.qcom_rproc_ssr* %1, %struct.qcom_rproc_ssr** %4, align 8
  %5 = load %struct.rproc*, %struct.rproc** %3, align 8
  %6 = load %struct.qcom_rproc_ssr*, %struct.qcom_rproc_ssr** %4, align 8
  %7 = getelementptr inbounds %struct.qcom_rproc_ssr, %struct.qcom_rproc_ssr* %6, i32 0, i32 0
  %8 = call i32 @rproc_remove_subdev(%struct.rproc* %5, i32* %7)
  ret void
}

declare dso_local i32 @rproc_remove_subdev(%struct.rproc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
