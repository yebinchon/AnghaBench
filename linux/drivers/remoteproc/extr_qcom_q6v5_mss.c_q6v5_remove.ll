; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.q6v5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @q6v5_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.q6v5*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.q6v5* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.q6v5* %5, %struct.q6v5** %3, align 8
  %6 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %7 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rproc_del(i32 %8)
  %10 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %11 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @qcom_remove_sysmon_subdev(i32 %12)
  %14 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %15 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %18 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %17, i32 0, i32 7
  %19 = call i32 @qcom_remove_glink_subdev(i32 %16, i32* %18)
  %20 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %21 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %24 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %23, i32 0, i32 6
  %25 = call i32 @qcom_remove_smd_subdev(i32 %22, i32* %24)
  %26 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %27 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %30 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %29, i32 0, i32 5
  %31 = call i32 @qcom_remove_ssr_subdev(i32 %28, i32* %30)
  %32 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %33 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %34 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %37 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @q6v5_pds_detach(%struct.q6v5* %32, i32 %35, i32 %38)
  %40 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %41 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %42 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %45 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @q6v5_pds_detach(%struct.q6v5* %40, i32 %43, i32 %46)
  %48 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %49 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rproc_free(i32 %50)
  ret i32 0
}

declare dso_local %struct.q6v5* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rproc_del(i32) #1

declare dso_local i32 @qcom_remove_sysmon_subdev(i32) #1

declare dso_local i32 @qcom_remove_glink_subdev(i32, i32*) #1

declare dso_local i32 @qcom_remove_smd_subdev(i32, i32*) #1

declare dso_local i32 @qcom_remove_ssr_subdev(i32, i32*) #1

declare dso_local i32 @q6v5_pds_detach(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @rproc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
