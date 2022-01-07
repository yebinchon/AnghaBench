; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_simple_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_simple_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.serdes_ctrl = type { %struct.phy** }
%struct.serdes_macro = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SERDES_MAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @serdes_simple_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @serdes_simple_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.serdes_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.serdes_macro*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.serdes_ctrl* @dev_get_drvdata(%struct.device* %11)
  store %struct.serdes_ctrl* %12, %struct.serdes_ctrl** %6, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.phy* @ERR_PTR(i32 %19)
  store %struct.phy* %20, %struct.phy** %3, align 8
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %23 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %28 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %75, %21
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SERDES_MAX, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %37, i32 0, i32 0
  %39 = load %struct.phy**, %struct.phy*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.phy*, %struct.phy** %39, i64 %41
  %43 = load %struct.phy*, %struct.phy** %42, align 8
  %44 = call %struct.serdes_macro* @phy_get_drvdata(%struct.phy* %43)
  store %struct.serdes_macro* %44, %struct.serdes_macro** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.serdes_macro*, %struct.serdes_macro** %10, align 8
  %47 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %75

51:                                               ; preds = %36
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @SERDES6G(i32 0)
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.serdes_macro*, %struct.serdes_macro** %10, align 8
  %57 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.phy* @ERR_PTR(i32 %62)
  store %struct.phy* %63, %struct.phy** %3, align 8
  br label %82

64:                                               ; preds = %55, %51
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.serdes_macro*, %struct.serdes_macro** %10, align 8
  %67 = getelementptr inbounds %struct.serdes_macro, %struct.serdes_macro* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.serdes_ctrl*, %struct.serdes_ctrl** %6, align 8
  %69 = getelementptr inbounds %struct.serdes_ctrl, %struct.serdes_ctrl* %68, i32 0, i32 0
  %70 = load %struct.phy**, %struct.phy*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.phy*, %struct.phy** %70, i64 %72
  %74 = load %struct.phy*, %struct.phy** %73, align 8
  store %struct.phy* %74, %struct.phy** %3, align 8
  br label %82

75:                                               ; preds = %50
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %32

78:                                               ; preds = %32
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.phy* @ERR_PTR(i32 %80)
  store %struct.phy* %81, %struct.phy** %3, align 8
  br label %82

82:                                               ; preds = %78, %64, %60, %17
  %83 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %83
}

declare dso_local %struct.serdes_ctrl* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.serdes_macro* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @SERDES6G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
