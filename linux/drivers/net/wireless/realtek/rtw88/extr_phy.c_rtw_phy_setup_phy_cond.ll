; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_setup_phy_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_setup_phy_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_hal }
%struct.rtw_efuse = type { i32 }
%struct.rtw_hal = type { i32, %struct.rtw_phy_cond }
%struct.rtw_phy_cond = type { i32, i32, i32, i32, i32, i32 }

@INTF_USB = common dso_local global i32 0, align 4
@INTF_SDIO = common dso_local global i32 0, align 4
@INTF_PCIE = common dso_local global i32 0, align 4
@RTW_DBG_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"phy cond=0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_phy_setup_phy_cond(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_hal*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca %struct.rtw_phy_cond, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 1
  store %struct.rtw_hal* %9, %struct.rtw_hal** %5, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  store %struct.rtw_efuse* %11, %struct.rtw_efuse** %6, align 8
  %12 = bitcast %struct.rtw_phy_cond* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %14 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 15, %21 ]
  %24 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 15, %29 ]
  %32 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 2
  store i32 4, i32* %33, align 4
  %34 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %35 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %39 = call i32 @rtw_hci_type(%struct.rtw_dev* %38)
  switch i32 %39, label %47 [
    i32 128, label %40
    i32 129, label %43
    i32 130, label %46
  ]

40:                                               ; preds = %30
  %41 = load i32, i32* @INTF_USB, align 4
  %42 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  br label %50

43:                                               ; preds = %30
  %44 = load i32, i32* @INTF_SDIO, align 4
  %45 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  br label %50

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %30, %46
  %48 = load i32, i32* @INTF_PCIE, align 4
  %49 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %7, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %43, %40
  %51 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %52 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %51, i32 0, i32 1
  %53 = bitcast %struct.rtw_phy_cond* %52 to i8*
  %54 = bitcast %struct.rtw_phy_cond* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 24, i1 false)
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %56 = load i32, i32* @RTW_DBG_PHY, align 4
  %57 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %58 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %57, i32 0, i32 1
  %59 = bitcast %struct.rtw_phy_cond* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtw_dbg(%struct.rtw_dev* %55, i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
