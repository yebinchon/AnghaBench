; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_phy_cck_pd_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_phy_cck_pd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i64**, i32 }

@__const.rtw8822c_phy_cck_pd_set.pd_lvl = private unnamed_addr constant [4 x i32] [i32 2, i32 4, i32 6, i32 8], align 16
@__const.rtw8822c_phy_cck_pd_set.cs_lvl = private unnamed_addr constant [4 x i32] [i32 2, i32 2, i32 2, i32 4], align 16
@CCK_FA_AVG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64)* @rtw8822c_phy_cck_pd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_phy_cck_pd_set(%struct.rtw_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_dm_info*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  store %struct.rtw_dm_info* %12, %struct.rtw_dm_info** %5, align 8
  %13 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.rtw8822c_phy_cck_pd_set.pd_lvl to i8*), i64 16, i1 false)
  %14 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.rtw8822c_phy_cck_pd_set.cs_lvl to i8*), i64 16, i1 false)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = call i64 @rtw_read32_mask(%struct.rtw_dev* %15, i32 6700, i32 393216)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = call i64 @rtw_read32_mask(%struct.rtw_dev* %17, i32 2480, i32 12)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i64*, i64** %21, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %32, i32 0, i32 0
  %34 = load i64**, i64*** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64*, i64** %34, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* @CCK_FA_AVG_RESET, align 4
  %42 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %43 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @rtw8822c_phy_cck_pd_set_reg(%struct.rtw_dev* %44, i32 %51, i32 %58, i64 %59, i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %5, align 8
  %64 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %63, i32 0, i32 0
  %65 = load i64**, i64*** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i64*, i64** %65, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %62, i64* %70, align 8
  br label %71

71:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw8822c_phy_cck_pd_set_reg(%struct.rtw_dev*, i32, i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
