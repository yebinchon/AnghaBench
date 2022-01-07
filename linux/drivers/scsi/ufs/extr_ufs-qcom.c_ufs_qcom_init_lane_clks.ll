; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_init_lane_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_init_lane_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_host = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"rx_lane0_sync_clk\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tx_lane0_sync_clk\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"rx_lane1_sync_clk\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"tx_lane1_sync_clk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_qcom_host*)* @ufs_qcom_init_lane_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_init_lane_clks(%struct.ufs_qcom_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_qcom_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.ufs_qcom_host* %0, %struct.ufs_qcom_host** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i64 @has_acpi_companion(%struct.device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %18 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %17, i32 0, i32 4
  %19 = call i32 @ufs_qcom_host_clk_get(%struct.device* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %52

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %26 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %25, i32 0, i32 3
  %27 = call i32 @ufs_qcom_host_clk_get(%struct.device* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %52

31:                                               ; preds = %23
  %32 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %33 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %41 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %40, i32 0, i32 1
  %42 = call i32 @ufs_qcom_host_clk_get(%struct.device* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %41, i32 0)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %3, align 8
  %49 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %48, i32 0, i32 0
  %50 = call i32 @ufs_qcom_host_clk_get(%struct.device* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %49, i32 1)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %31
  br label %52

52:                                               ; preds = %51, %45, %30, %22
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @has_acpi_companion(%struct.device*) #1

declare dso_local i32 @ufs_qcom_host_clk_get(%struct.device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
