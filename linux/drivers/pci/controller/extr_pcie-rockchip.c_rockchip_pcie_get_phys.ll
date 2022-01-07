; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_get_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_get_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, %struct.phy**, %struct.device* }
%struct.phy = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"pcie-phy\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"legacy phy model is deprecated!\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"missing legacy phy; search for per-lane PHY\0A\00", align 1
@MAX_LANE_NUM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"pcie-phy-%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"missing phy for lane %d: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_pcie_get_phys(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %8 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.phy* @devm_phy_get(%struct.device* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.phy* %12, %struct.phy** %5, align 8
  %13 = load %struct.phy*, %struct.phy** %5, align 8
  %14 = call i64 @IS_ERR(%struct.phy* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.phy*, %struct.phy** %5, align 8
  %20 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %20, i32 0, i32 1
  %22 = load %struct.phy**, %struct.phy*** %21, align 8
  %23 = getelementptr inbounds %struct.phy*, %struct.phy** %22, i64 0
  store %struct.phy* %19, %struct.phy** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_warn(%struct.device* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

26:                                               ; preds = %1
  %27 = load %struct.phy*, %struct.phy** %5, align 8
  %28 = call i32 @PTR_ERR(%struct.phy* %27)
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.phy*, %struct.phy** %5, align 8
  %34 = call i32 @PTR_ERR(%struct.phy* %33)
  store i32 %34, i32* %2, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %85, %35
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @MAX_LANE_NUM, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %88

42:                                               ; preds = %38
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @kasprintf(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %89

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call %struct.phy* @devm_of_phy_get(%struct.device* %52, i32 %55, i8* %56)
  store %struct.phy* %57, %struct.phy** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load %struct.phy*, %struct.phy** %5, align 8
  %61 = call i64 @IS_ERR(%struct.phy* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %51
  %64 = load %struct.phy*, %struct.phy** %5, align 8
  %65 = call i32 @PTR_ERR(%struct.phy* %64)
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.phy*, %struct.phy** %5, align 8
  %73 = call i32 @PTR_ERR(%struct.phy* %72)
  %74 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %71, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.phy*, %struct.phy** %5, align 8
  %77 = call i32 @PTR_ERR(%struct.phy* %76)
  store i32 %77, i32* %2, align 4
  br label %89

78:                                               ; preds = %51
  %79 = load %struct.phy*, %struct.phy** %5, align 8
  %80 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %81 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %80, i32 0, i32 1
  %82 = load %struct.phy**, %struct.phy*** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds %struct.phy*, %struct.phy** %82, i64 %83
  store %struct.phy* %79, %struct.phy** %84, align 8
  br label %85

85:                                               ; preds = %78
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %38

88:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %75, %48, %32, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.phy* @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i64) #1

declare dso_local %struct.phy* @devm_of_phy_get(%struct.device*, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
