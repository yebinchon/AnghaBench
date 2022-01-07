; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-sierra.c_cdns_sierra_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_phy-cadence-sierra.c_cdns_sierra_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cdns_sierra_inst = type { i64, i32, i32 }
%struct.cdns_sierra_phy = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.cdns_reg_pairs*, %struct.cdns_reg_pairs* }
%struct.cdns_reg_pairs = type { i64, i32 }

@PHY_TYPE_PCIE = common dso_local global i64 0, align 8
@PHY_TYPE_USB3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @cdns_sierra_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_sierra_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.cdns_sierra_inst*, align 8
  %4 = alloca %struct.cdns_sierra_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns_reg_pairs*, align 8
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %9 = load %struct.phy*, %struct.phy** %2, align 8
  %10 = call %struct.cdns_sierra_inst* @phy_get_drvdata(%struct.phy* %9)
  store %struct.cdns_sierra_inst* %10, %struct.cdns_sierra_inst** %3, align 8
  %11 = load %struct.phy*, %struct.phy** %2, align 8
  %12 = getelementptr inbounds %struct.phy, %struct.phy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cdns_sierra_phy* @dev_get_drvdata(i32 %14)
  store %struct.cdns_sierra_phy* %15, %struct.cdns_sierra_phy** %4, align 8
  %16 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %3, align 8
  %17 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_TYPE_PCIE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %4, align 8
  %23 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %4, align 8
  %28 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.cdns_reg_pairs*, %struct.cdns_reg_pairs** %30, align 8
  store %struct.cdns_reg_pairs* %31, %struct.cdns_reg_pairs** %7, align 8
  br label %51

32:                                               ; preds = %1
  %33 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %3, align 8
  %34 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PHY_TYPE_USB3, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %4, align 8
  %40 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %4, align 8
  %45 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.cdns_reg_pairs*, %struct.cdns_reg_pairs** %47, align 8
  store %struct.cdns_reg_pairs* %48, %struct.cdns_reg_pairs** %7, align 8
  br label %50

49:                                               ; preds = %32
  br label %96

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %21
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %93, %51
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %3, align 8
  %55 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load %struct.cdns_reg_pairs*, %struct.cdns_reg_pairs** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cdns_reg_pairs, %struct.cdns_reg_pairs* %64, i64 %66
  %68 = getelementptr inbounds %struct.cdns_reg_pairs, %struct.cdns_reg_pairs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cdns_sierra_phy*, %struct.cdns_sierra_phy** %4, align 8
  %71 = getelementptr inbounds %struct.cdns_sierra_phy, %struct.cdns_sierra_phy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.cdns_reg_pairs*, %struct.cdns_reg_pairs** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.cdns_reg_pairs, %struct.cdns_reg_pairs* %73, i64 %75
  %77 = getelementptr inbounds %struct.cdns_reg_pairs, %struct.cdns_reg_pairs* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %72, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.cdns_sierra_inst*, %struct.cdns_sierra_inst** %3, align 8
  %82 = getelementptr inbounds %struct.cdns_sierra_inst, %struct.cdns_sierra_inst* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = mul nsw i32 %84, 2048
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %79, %86
  %88 = call i32 @writel(i32 %69, i64 %87)
  br label %89

89:                                               ; preds = %63
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %59

92:                                               ; preds = %59
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %52

96:                                               ; preds = %49, %52
  ret void
}

declare dso_local %struct.cdns_sierra_inst* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.cdns_sierra_phy* @dev_get_drvdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
