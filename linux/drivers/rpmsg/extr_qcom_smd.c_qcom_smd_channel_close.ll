; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i32* }

@SMD_CHANNEL_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_smd_channel*)* @qcom_smd_channel_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_smd_channel_close(%struct.qcom_smd_channel* %0) #0 {
  %2 = alloca %struct.qcom_smd_channel*, align 8
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %2, align 8
  %3 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %4 = call i32 @qcom_smd_channel_set_callback(%struct.qcom_smd_channel* %3, i32* null)
  %5 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %6 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %10 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %12 = load i32, i32* @SMD_CHANNEL_CLOSED, align 4
  %13 = call i32 @qcom_smd_channel_set_state(%struct.qcom_smd_channel* %11, i32 %12)
  %14 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %15 = call i32 @qcom_smd_channel_reset(%struct.qcom_smd_channel* %14)
  ret void
}

declare dso_local i32 @qcom_smd_channel_set_callback(%struct.qcom_smd_channel*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @qcom_smd_channel_set_state(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @qcom_smd_channel_reset(%struct.qcom_smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
