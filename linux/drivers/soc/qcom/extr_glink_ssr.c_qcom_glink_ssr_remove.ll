; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_glink_ssr.c_qcom_glink_ssr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_glink_ssr.c_qcom_glink_ssr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.glink_ssr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpmsg_device*)* @qcom_glink_ssr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_ssr_remove(%struct.rpmsg_device* %0) #0 {
  %2 = alloca %struct.rpmsg_device*, align 8
  %3 = alloca %struct.glink_ssr*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %2, align 8
  %4 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %5 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %4, i32 0, i32 0
  %6 = call %struct.glink_ssr* @dev_get_drvdata(i32* %5)
  store %struct.glink_ssr* %6, %struct.glink_ssr** %3, align 8
  %7 = load %struct.glink_ssr*, %struct.glink_ssr** %3, align 8
  %8 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %7, i32 0, i32 0
  %9 = call i32 @qcom_unregister_ssr_notifier(i32* %8)
  ret void
}

declare dso_local %struct.glink_ssr* @dev_get_drvdata(i32*) #1

declare dso_local i32 @qcom_unregister_ssr_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
