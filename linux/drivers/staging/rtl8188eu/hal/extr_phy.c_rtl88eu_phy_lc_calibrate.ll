; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtl88eu_phy_lc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_rtl88eu_phy_lc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.odm_dm_struct }
%struct.odm_dm_struct = type { i32, %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32 }

@ODM_RF_CALIBRATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_phy_lc_calibrate(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.odm_dm_struct*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 2000, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.odm_dm_struct* %11, %struct.odm_dm_struct** %7, align 8
  %12 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %7, align 8
  %13 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ODM_RF_CALIBRATION, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %52

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  br label %52

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %39, %26
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %7, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %34, %35
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ false, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = call i32 @mdelay(i32 50)
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 50
  store i64 %42, i64* %6, align 8
  br label %27

43:                                               ; preds = %37
  %44 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %7, align 8
  %45 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = call i32 @phy_lc_calibrate(%struct.adapter* %47, i32 0)
  %49 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %7, align 8
  %50 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %25, %18
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @phy_lc_calibrate(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
