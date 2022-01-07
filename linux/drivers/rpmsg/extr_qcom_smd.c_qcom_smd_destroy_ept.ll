; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_destroy_ept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_destroy_ept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { i32 }
%struct.qcom_smd_endpoint = type { %struct.qcom_smd_channel* }
%struct.qcom_smd_channel = type { i32* }

@__ept_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpmsg_endpoint*)* @qcom_smd_destroy_ept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_smd_destroy_ept(%struct.rpmsg_endpoint* %0) #0 {
  %2 = alloca %struct.rpmsg_endpoint*, align 8
  %3 = alloca %struct.qcom_smd_endpoint*, align 8
  %4 = alloca %struct.qcom_smd_channel*, align 8
  store %struct.rpmsg_endpoint* %0, %struct.rpmsg_endpoint** %2, align 8
  %5 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %2, align 8
  %6 = call %struct.qcom_smd_endpoint* @to_smd_endpoint(%struct.rpmsg_endpoint* %5)
  store %struct.qcom_smd_endpoint* %6, %struct.qcom_smd_endpoint** %3, align 8
  %7 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_smd_endpoint, %struct.qcom_smd_endpoint* %7, i32 0, i32 0
  %9 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %8, align 8
  store %struct.qcom_smd_channel* %9, %struct.qcom_smd_channel** %4, align 8
  %10 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %11 = call i32 @qcom_smd_channel_close(%struct.qcom_smd_channel* %10)
  %12 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %13 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %2, align 8
  %15 = getelementptr inbounds %struct.rpmsg_endpoint, %struct.rpmsg_endpoint* %14, i32 0, i32 0
  %16 = load i32, i32* @__ept_release, align 4
  %17 = call i32 @kref_put(i32* %15, i32 %16)
  ret void
}

declare dso_local %struct.qcom_smd_endpoint* @to_smd_endpoint(%struct.rpmsg_endpoint*) #1

declare dso_local i32 @qcom_smd_channel_close(%struct.qcom_smd_channel*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
