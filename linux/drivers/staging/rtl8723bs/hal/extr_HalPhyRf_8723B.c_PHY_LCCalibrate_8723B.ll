; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_PHY_LCCalibrate_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_PHY_LCCalibrate_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i64* }
%struct.TYPE_6__ = type { i32 }

@ODM_RF_CALIBRATION = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"LCK:Finish!!!interface %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"LCK ProgressingTime = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_LCCalibrate_8723B(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 2000, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ODM_RF_CALIBRATION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %70

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  br label %70

23:                                               ; preds = %19
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %37, %23
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = call i32 @mdelay(i32 50)
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 50
  store i64 %40, i64* %6, align 8
  br label %25

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = call i32 @phy_LCCalibrate_8723B(%struct.TYPE_7__* %45, i32 0)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %52 = load i32, i32* @ODM_DBG_LOUD, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %50, i32 %51, i32 %52, i8* %57)
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i32 @jiffies_to_msecs(i64 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %65 = load i32, i32* @ODM_DBG_LOUD, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @ODM_RT_TRACE(%struct.TYPE_7__* %63, i32 %64, i32 %65, i8* %68)
  br label %70

70:                                               ; preds = %41, %22, %15
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @phy_LCCalibrate_8723B(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_7__*, i32, i32, i8*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
