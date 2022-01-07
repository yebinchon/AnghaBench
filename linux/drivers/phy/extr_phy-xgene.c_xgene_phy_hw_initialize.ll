; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_hw_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_hw_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_phy_ctx = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"PHY init clk type %d\0A\00", align 1
@MODE_SATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Un-supported customer pin mode %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_phy_ctx*, i32, i32)* @xgene_phy_hw_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_phy_hw_initialize(%struct.xgene_phy_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_phy_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgene_phy_ctx* %0, %struct.xgene_phy_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MODE_SATA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @xgene_phy_hw_init_sata(%struct.xgene_phy_ctx* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %19
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %29, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @xgene_phy_hw_init_sata(%struct.xgene_phy_ctx*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
