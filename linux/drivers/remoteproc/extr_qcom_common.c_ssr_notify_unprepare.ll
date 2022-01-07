; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_ssr_notify_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_common.c_ssr_notify_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_subdev = type { i32 }
%struct.qcom_rproc_ssr = type { i64 }

@ssr_notifiers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc_subdev*)* @ssr_notify_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssr_notify_unprepare(%struct.rproc_subdev* %0) #0 {
  %2 = alloca %struct.rproc_subdev*, align 8
  %3 = alloca %struct.qcom_rproc_ssr*, align 8
  store %struct.rproc_subdev* %0, %struct.rproc_subdev** %2, align 8
  %4 = load %struct.rproc_subdev*, %struct.rproc_subdev** %2, align 8
  %5 = call %struct.qcom_rproc_ssr* @to_ssr_subdev(%struct.rproc_subdev* %4)
  store %struct.qcom_rproc_ssr* %5, %struct.qcom_rproc_ssr** %3, align 8
  %6 = load %struct.qcom_rproc_ssr*, %struct.qcom_rproc_ssr** %3, align 8
  %7 = getelementptr inbounds %struct.qcom_rproc_ssr, %struct.qcom_rproc_ssr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i32 @blocking_notifier_call_chain(i32* @ssr_notifiers, i32 0, i8* %9)
  ret void
}

declare dso_local %struct.qcom_rproc_ssr* @to_ssr_subdev(%struct.rproc_subdev*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
