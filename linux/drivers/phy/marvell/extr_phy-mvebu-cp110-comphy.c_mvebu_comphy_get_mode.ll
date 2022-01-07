; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-cp110-comphy.c_mvebu_comphy_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_comphy_conf = type { i32, i32, i32, i32, i32, i32 }

@mvebu_comphy_cp110_modes = common dso_local global %struct.mvebu_comphy_conf* null, align 8
@PHY_MODE_PCIE = common dso_local global i32 0, align 4
@PHY_MODE_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @mvebu_comphy_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_comphy_get_mode(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mvebu_comphy_conf*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** @mvebu_comphy_cp110_modes, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.mvebu_comphy_conf* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @PHY_MODE_PCIE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PHY_MODE_INVALID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %85

26:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** @mvebu_comphy_cp110_modes, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %32, i64 %34
  store %struct.mvebu_comphy_conf* %35, %struct.mvebu_comphy_conf** %15, align 8
  %36 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** %15, align 8
  %37 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %31
  %42 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** %15, align 8
  %43 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** %15, align 8
  %49 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** %15, align 8
  %55 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %53
  br label %67

63:                                               ; preds = %59, %47, %41, %31
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %27

67:                                               ; preds = %62, %27
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %85

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** %15, align 8
  %79 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %6, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load %struct.mvebu_comphy_conf*, %struct.mvebu_comphy_conf** %15, align 8
  %83 = getelementptr inbounds %struct.mvebu_comphy_conf, %struct.mvebu_comphy_conf* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %77, %71, %25
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(%struct.mvebu_comphy_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
