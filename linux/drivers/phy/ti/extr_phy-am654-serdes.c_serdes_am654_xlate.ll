; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-am654-serdes.c_serdes_am654_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.serdes_am654 = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to select SERDES Lane Function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @serdes_am654_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @serdes_am654_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.serdes_am654*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = call %struct.phy* @of_phy_simple_xlate(%struct.device* %9, %struct.of_phandle_args* %10)
  store %struct.phy* %11, %struct.phy** %7, align 8
  %12 = load %struct.phy*, %struct.phy** %7, align 8
  %13 = call i64 @IS_ERR(%struct.phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %16, %struct.phy** %3, align 8
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.phy*, %struct.phy** %7, align 8
  %19 = call %struct.serdes_am654* @phy_get_drvdata(%struct.phy* %18)
  store %struct.serdes_am654* %19, %struct.serdes_am654** %6, align 8
  %20 = load %struct.serdes_am654*, %struct.serdes_am654** %6, align 8
  %21 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.phy* @ERR_PTR(i32 %26)
  store %struct.phy* %27, %struct.phy** %3, align 8
  br label %56

28:                                               ; preds = %17
  %29 = load %struct.serdes_am654*, %struct.serdes_am654** %6, align 8
  %30 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mux_control_select(i32 %31, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.phy* @ERR_PTR(i32 %43)
  store %struct.phy* %44, %struct.phy** %3, align 8
  br label %56

45:                                               ; preds = %28
  %46 = load %struct.serdes_am654*, %struct.serdes_am654** %6, align 8
  %47 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %49 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.serdes_am654*, %struct.serdes_am654** %6, align 8
  %54 = getelementptr inbounds %struct.serdes_am654, %struct.serdes_am654* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %55, %struct.phy** %3, align 8
  br label %56

56:                                               ; preds = %45, %40, %24, %15
  %57 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %57
}

declare dso_local %struct.phy* @of_phy_simple_xlate(%struct.device*, %struct.of_phandle_args*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local %struct.serdes_am654* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @mux_control_select(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
