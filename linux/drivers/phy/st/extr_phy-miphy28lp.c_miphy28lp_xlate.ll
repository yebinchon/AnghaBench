; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i32*, %struct.device_node* }
%struct.miphy28lp_dev = type { i32, %struct.miphy28lp_phy** }
%struct.miphy28lp_phy = type { %struct.phy*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Invalid number of cells in 'phy' property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to find appropriate phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @miphy28lp_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @miphy28lp_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.miphy28lp_dev*, align 8
  %7 = alloca %struct.miphy28lp_phy*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.miphy28lp_dev* @dev_get_drvdata(%struct.device* %11)
  store %struct.miphy28lp_dev* %12, %struct.miphy28lp_dev** %6, align 8
  store %struct.miphy28lp_phy* null, %struct.miphy28lp_phy** %7, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 2
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.phy* @ERR_PTR(i32 %24)
  store %struct.phy* %25, %struct.phy** %3, align 8
  br label %88

26:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %6, align 8
  %30 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %6, align 8
  %36 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %35, i32 0, i32 1
  %37 = load %struct.miphy28lp_phy**, %struct.miphy28lp_phy*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %37, i64 %39
  %41 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %40, align 8
  %42 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %41, i32 0, i32 0
  %43 = load %struct.phy*, %struct.phy** %42, align 8
  %44 = getelementptr inbounds %struct.phy, %struct.phy* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.device_node*, %struct.device_node** %45, align 8
  %47 = icmp eq %struct.device_node* %34, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %6, align 8
  %50 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %49, i32 0, i32 1
  %51 = load %struct.miphy28lp_phy**, %struct.miphy28lp_phy*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %51, i64 %53
  %55 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %54, align 8
  store %struct.miphy28lp_phy* %55, %struct.miphy28lp_phy** %7, align 8
  br label %60

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %27

60:                                               ; preds = %48, %27
  %61 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %7, align 8
  %62 = icmp ne %struct.miphy28lp_phy* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.phy* @ERR_PTR(i32 %67)
  store %struct.phy* %68, %struct.phy** %3, align 8
  br label %88

69:                                               ; preds = %60
  %70 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %71 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %7, align 8
  %76 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %7, align 8
  %78 = call i32 @miphy28lp_get_addr(%struct.miphy28lp_phy* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.phy* @ERR_PTR(i32 %82)
  store %struct.phy* %83, %struct.phy** %3, align 8
  br label %88

84:                                               ; preds = %69
  %85 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %7, align 8
  %86 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %85, i32 0, i32 0
  %87 = load %struct.phy*, %struct.phy** %86, align 8
  store %struct.phy* %87, %struct.phy** %3, align 8
  br label %88

88:                                               ; preds = %84, %81, %63, %20
  %89 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %89
}

declare dso_local %struct.miphy28lp_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @miphy28lp_get_addr(%struct.miphy28lp_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
