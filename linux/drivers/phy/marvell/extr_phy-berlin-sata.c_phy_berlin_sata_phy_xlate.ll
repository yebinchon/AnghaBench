; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-sata.c_phy_berlin_sata_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-sata.c_phy_berlin_sata_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.phy_berlin_priv = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, %struct.phy* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @phy_berlin_sata_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @phy_berlin_sata_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.phy_berlin_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.phy_berlin_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.phy_berlin_priv* %9, %struct.phy_berlin_priv** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %6, align 8
  %16 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.phy* @ERR_PTR(i32 %24)
  store %struct.phy* %25, %struct.phy** %3, align 8
  br label %76

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %6, align 8
  %31 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %6, align 8
  %36 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %45 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %55

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %27

55:                                               ; preds = %50, %27
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %6, align 8
  %59 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.phy* @ERR_PTR(i32 %64)
  store %struct.phy* %65, %struct.phy** %3, align 8
  br label %76

66:                                               ; preds = %55
  %67 = load %struct.phy_berlin_priv*, %struct.phy_berlin_priv** %6, align 8
  %68 = getelementptr inbounds %struct.phy_berlin_priv, %struct.phy_berlin_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.phy*, %struct.phy** %74, align 8
  store %struct.phy* %75, %struct.phy** %3, align 8
  br label %76

76:                                               ; preds = %66, %62, %22
  %77 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %77
}

declare dso_local %struct.phy_berlin_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
