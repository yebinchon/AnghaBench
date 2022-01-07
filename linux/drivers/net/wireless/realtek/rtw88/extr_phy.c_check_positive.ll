; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_check_positive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_check_positive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { %struct.rtw_phy_cond }
%struct.rtw_phy_cond = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.rtw_phy_cond*)* @check_positive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_positive(%struct.rtw_dev* %0, %struct.rtw_phy_cond* byval(%struct.rtw_phy_cond) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_hal*, align 8
  %6 = alloca %struct.rtw_phy_cond, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  store %struct.rtw_hal* %8, %struct.rtw_hal** %5, align 8
  %9 = load %struct.rtw_hal*, %struct.rtw_hal** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %9, i32 0, i32 0
  %11 = bitcast %struct.rtw_phy_cond* %6 to i8*
  %12 = bitcast %struct.rtw_phy_cond* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %53

23:                                               ; preds = %16, %2
  %24 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %53

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %6, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %53

45:                                               ; preds = %38, %34
  %46 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %1, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.rtw_phy_cond, %struct.rtw_phy_cond* %6, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %44, %33, %22
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
