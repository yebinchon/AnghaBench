; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_enable_lane_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_enable_lane_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_host = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"rx_lane0_sync_clk\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tx_lane0_sync_clk\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"rx_lane1_sync_clk\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"tx_lane1_sync_clk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_qcom_host*)* @ufs_qcom_enable_lane_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_enable_lane_clks(%struct.ufs_qcom_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_qcom_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.ufs_qcom_host* %0, %struct.ufs_qcom_host** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %6, i32 0, i32 5
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %19 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ufs_qcom_host_clk_enable(%struct.device* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %70

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %28 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ufs_qcom_host_clk_enable(%struct.device* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %65

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %37 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ufs_qcom_host_clk_enable(%struct.device* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %60

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %46 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ufs_qcom_host_clk_enable(%struct.device* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %55

52:                                               ; preds = %43
  %53 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %54 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %70

55:                                               ; preds = %51
  %56 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %57 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable_unprepare(i32 %58)
  br label %60

60:                                               ; preds = %55, %42
  %61 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %62 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @clk_disable_unprepare(i32 %63)
  br label %65

65:                                               ; preds = %60, %33
  %66 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %67 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clk_disable_unprepare(i32 %68)
  br label %70

70:                                               ; preds = %65, %52, %24
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @ufs_qcom_host_clk_enable(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
