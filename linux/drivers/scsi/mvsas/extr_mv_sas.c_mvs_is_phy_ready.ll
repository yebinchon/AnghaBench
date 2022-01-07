; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_is_phy_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_is_phy_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_info*, i32)* }
%struct.mvs_info = type { %struct.mvs_phy* }
%struct.mvs_phy = type { i32, i32, i32, %struct.mvs_port* }
%struct.mvs_port = type { i32, i64 }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@PHY_READY_MASK = common dso_local global i32 0, align 4
@PHYEV_POOF = common dso_local global i32 0, align 4
@PORT_TYPE_SAS = common dso_local global i32 0, align 4
@PORT_TYPE_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, i32)* @mvs_is_phy_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_is_phy_ready(%struct.mvs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvs_phy*, align 8
  %8 = alloca %struct.mvs_port*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %10 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %9, i32 0, i32 0
  %11 = load %struct.mvs_phy*, %struct.mvs_phy** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %11, i64 %13
  store %struct.mvs_phy* %14, %struct.mvs_phy** %7, align 8
  %15 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %16 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %15, i32 0, i32 3
  %17 = load %struct.mvs_port*, %struct.mvs_port** %16, align 8
  store %struct.mvs_port* %17, %struct.mvs_port** %8, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mvs_info*, i32)*, i32 (%struct.mvs_info*, i32)** %19, align 8
  %21 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %20(%struct.mvs_info* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PHY_READY_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %2
  %29 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %30 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PHYEV_POOF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.mvs_port*, %struct.mvs_port** %8, align 8
  %37 = icmp ne %struct.mvs_port* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %40 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %97

43:                                               ; preds = %28, %2
  %44 = load %struct.mvs_port*, %struct.mvs_port** %8, align 8
  %45 = icmp ne %struct.mvs_port* %44, null
  br i1 %45, label %46, label %96

46:                                               ; preds = %43
  %47 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %48 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PORT_TYPE_SAS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.mvs_port*, %struct.mvs_port** %8, align 8
  %58 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.mvs_port*, %struct.mvs_port** %8, align 8
  %62 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load %struct.mvs_port*, %struct.mvs_port** %8, align 8
  %67 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %53
  %69 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mvs_update_wideport(%struct.mvs_info* %69, i32 %70)
  br label %83

72:                                               ; preds = %46
  %73 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %74 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PORT_TYPE_SATA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.mvs_port*, %struct.mvs_port** %8, align 8
  %81 = getelementptr inbounds %struct.mvs_port, %struct.mvs_port* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %85 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %84, i32 0, i32 3
  store %struct.mvs_port* null, %struct.mvs_port** %85, align 8
  %86 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %87 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* @PORT_TYPE_SAS, align 4
  %89 = load i32, i32* @PORT_TYPE_SATA, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.mvs_phy*, %struct.mvs_phy** %7, align 8
  %93 = getelementptr inbounds %struct.mvs_phy, %struct.mvs_phy* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %83, %43
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %41
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @mvs_update_wideport(%struct.mvs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
