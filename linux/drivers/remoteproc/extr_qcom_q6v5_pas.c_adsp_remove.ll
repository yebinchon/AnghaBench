; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.qcom_adsp = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adsp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.qcom_adsp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.qcom_adsp* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.qcom_adsp* %5, %struct.qcom_adsp** %3, align 8
  %6 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %7 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rproc_del(i32 %8)
  %10 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %14 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %13, i32 0, i32 4
  %15 = call i32 @qcom_remove_glink_subdev(i32 %12, i32* %14)
  %16 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qcom_remove_sysmon_subdev(i32 %18)
  %20 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %21 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %23, i32 0, i32 2
  %25 = call i32 @qcom_remove_smd_subdev(i32 %22, i32* %24)
  %26 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %27 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %30 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %29, i32 0, i32 1
  %31 = call i32 @qcom_remove_ssr_subdev(i32 %28, i32* %30)
  %32 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %33 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rproc_free(i32 %34)
  ret i32 0
}

declare dso_local %struct.qcom_adsp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rproc_del(i32) #1

declare dso_local i32 @qcom_remove_glink_subdev(i32, i32*) #1

declare dso_local i32 @qcom_remove_sysmon_subdev(i32) #1

declare dso_local i32 @qcom_remove_smd_subdev(i32, i32*) #1

declare dso_local i32 @qcom_remove_ssr_subdev(i32, i32*) #1

declare dso_local i32 @rproc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
