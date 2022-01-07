; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.mvebu_comphy_lane = type { i64 }

@MVEBU_COMPHY_PORTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @mvebu_comphy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @mvebu_comphy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mvebu_comphy_lane*, align 8
  %7 = alloca %struct.phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MVEBU_COMPHY_PORTS, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.phy* @ERR_PTR(i32 %20)
  store %struct.phy* %21, %struct.phy** %3, align 8
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %25 = call %struct.phy* @of_phy_simple_xlate(%struct.device* %23, %struct.of_phandle_args* %24)
  store %struct.phy* %25, %struct.phy** %7, align 8
  %26 = load %struct.phy*, %struct.phy** %7, align 8
  %27 = call i64 @IS_ERR(%struct.phy* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %30, %struct.phy** %3, align 8
  br label %42

31:                                               ; preds = %22
  %32 = load %struct.phy*, %struct.phy** %7, align 8
  %33 = call %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy* %32)
  store %struct.mvebu_comphy_lane* %33, %struct.mvebu_comphy_lane** %6, align 8
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mvebu_comphy_lane*, %struct.mvebu_comphy_lane** %6, align 8
  %40 = getelementptr inbounds %struct.mvebu_comphy_lane, %struct.mvebu_comphy_lane* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %41, %struct.phy** %3, align 8
  br label %42

42:                                               ; preds = %31, %29, %18
  %43 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %43
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy* @of_phy_simple_xlate(%struct.device*, %struct.of_phandle_args*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local %struct.mvebu_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
