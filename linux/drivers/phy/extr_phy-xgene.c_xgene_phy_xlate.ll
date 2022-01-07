; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64, i64* }
%struct.xgene_phy_ctx = type { i64, %struct.phy* }

@EINVAL = common dso_local global i32 0, align 4
@MODE_SATA = common dso_local global i64 0, align 8
@MODE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @xgene_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @xgene_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.xgene_phy_ctx*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.xgene_phy_ctx* @dev_get_drvdata(%struct.device* %7)
  store %struct.xgene_phy_ctx* %8, %struct.xgene_phy_ctx** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.phy* @ERR_PTR(i32 %15)
  store %struct.phy* %16, %struct.phy** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %19 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MODE_SATA, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MODE_MAX, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25, %17
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.phy* @ERR_PTR(i32 %35)
  store %struct.phy* %36, %struct.phy** %3, align 8
  br label %48

37:                                               ; preds = %25
  %38 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %45, i32 0, i32 1
  %47 = load %struct.phy*, %struct.phy** %46, align 8
  store %struct.phy* %47, %struct.phy** %3, align 8
  br label %48

48:                                               ; preds = %37, %33, %13
  %49 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %49
}

declare dso_local %struct.xgene_phy_ctx* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
