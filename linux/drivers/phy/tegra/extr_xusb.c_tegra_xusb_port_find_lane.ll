; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_port_find_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_port_find_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_lane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_xusb_port = type { i64, i32, i32 }
%struct.tegra_xusb_lane_map = type { i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"conflicting match: %s-%u / %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tegra_xusb_lane* @tegra_xusb_port_find_lane(%struct.tegra_xusb_port* %0, %struct.tegra_xusb_lane_map* %1, i8* %2) #0 {
  %4 = alloca %struct.tegra_xusb_port*, align 8
  %5 = alloca %struct.tegra_xusb_lane_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tegra_xusb_lane*, align 8
  %8 = alloca %struct.tegra_xusb_lane*, align 8
  store %struct.tegra_xusb_port* %0, %struct.tegra_xusb_port** %4, align 8
  store %struct.tegra_xusb_lane_map* %1, %struct.tegra_xusb_lane_map** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.tegra_xusb_lane* @ERR_PTR(i32 %10)
  store %struct.tegra_xusb_lane* %11, %struct.tegra_xusb_lane** %8, align 8
  br label %12

12:                                               ; preds = %69, %3
  %13 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %69

26:                                               ; preds = %17
  %27 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %34 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.tegra_xusb_lane* @tegra_xusb_find_lane(i32 %29, i64 %32, i32 %35)
  store %struct.tegra_xusb_lane* %36, %struct.tegra_xusb_lane** %7, align 8
  %37 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %7, align 8
  %38 = call i64 @IS_ERR(%struct.tegra_xusb_lane* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %69

41:                                               ; preds = %26
  %42 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @tegra_xusb_lane_check(%struct.tegra_xusb_lane* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %69

47:                                               ; preds = %41
  %48 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %8, align 8
  %49 = call i64 @IS_ERR(%struct.tegra_xusb_lane* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = load %struct.tegra_xusb_port*, %struct.tegra_xusb_port** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_xusb_port, %struct.tegra_xusb_port* %52, i32 0, i32 1
  %54 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %8, align 8
  %61 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %59, i32 %64)
  br label %68

66:                                               ; preds = %47
  %67 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %7, align 8
  store %struct.tegra_xusb_lane* %67, %struct.tegra_xusb_lane** %8, align 8
  br label %68

68:                                               ; preds = %66, %51
  br label %69

69:                                               ; preds = %68, %46, %40, %25
  %70 = load %struct.tegra_xusb_lane_map*, %struct.tegra_xusb_lane_map** %5, align 8
  %71 = getelementptr inbounds %struct.tegra_xusb_lane_map, %struct.tegra_xusb_lane_map* %70, i32 1
  store %struct.tegra_xusb_lane_map* %71, %struct.tegra_xusb_lane_map** %5, align 8
  br label %12

72:                                               ; preds = %12
  %73 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %8, align 8
  ret %struct.tegra_xusb_lane* %73
}

declare dso_local %struct.tegra_xusb_lane* @ERR_PTR(i32) #1

declare dso_local %struct.tegra_xusb_lane* @tegra_xusb_find_lane(i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.tegra_xusb_lane*) #1

declare dso_local i32 @tegra_xusb_lane_check(%struct.tegra_xusb_lane*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
