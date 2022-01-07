; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs.c_ufs_qcom_phy_init_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-ufs.c_ufs_qcom_phy_init_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_qcom_phy = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"qcom,msm8996-ufs-phy-qmp-14nm\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tx_iface_clk\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rx_iface_clk\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ref_clk_src\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ref_clk_parent\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_qcom_phy_init_clks(%struct.ufs_qcom_phy* %0) #0 {
  %2 = alloca %struct.ufs_qcom_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_qcom_phy* %0, %struct.ufs_qcom_phy** %2, align 8
  %4 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %5 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @of_device_is_compatible(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %14 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %17 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %16, i32 0, i32 5
  %18 = call i32 @ufs_qcom_phy_clk_get(%struct.TYPE_3__* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %56

22:                                               ; preds = %12
  %23 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %24 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %27 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %26, i32 0, i32 4
  %28 = call i32 @ufs_qcom_phy_clk_get(%struct.TYPE_3__* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %56

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %38 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %37, i32 0, i32 3
  %39 = call i32 @ufs_qcom_phy_clk_get(%struct.TYPE_3__* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %45 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %48 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %47, i32 0, i32 2
  %49 = call i32 @__ufs_qcom_phy_clk_get(%struct.TYPE_3__* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %48, i32 0)
  %50 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %51 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.ufs_qcom_phy*, %struct.ufs_qcom_phy** %2, align 8
  %54 = getelementptr inbounds %struct.ufs_qcom_phy, %struct.ufs_qcom_phy* %53, i32 0, i32 0
  %55 = call i32 @ufs_qcom_phy_clk_get(%struct.TYPE_3__* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %42, %31, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @ufs_qcom_phy_clk_get(%struct.TYPE_3__*, i8*, i32*) #1

declare dso_local i32 @__ufs_qcom_phy_clk_get(%struct.TYPE_3__*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
