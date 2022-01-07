; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_disable_lane_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_disable_lane_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_host = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_qcom_host*)* @ufs_qcom_disable_lane_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_qcom_disable_lane_clks(%struct.ufs_qcom_host* %0) #0 {
  %2 = alloca %struct.ufs_qcom_host*, align 8
  store %struct.ufs_qcom_host* %0, %struct.ufs_qcom_host** %2, align 8
  %3 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %4 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable_unprepare(i32 %11)
  %13 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  %17 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %18 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %22 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  %25 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %2, align 8
  %26 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
