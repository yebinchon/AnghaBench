; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_SaveADDARegisters8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_SaveADDARegisters8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Save ADDA parameters.\0A\00", align 1
@bMaskDWord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64*, i64*, i64)* @_PHY_SaveADDARegisters8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PHY_SaveADDARegisters8723B(%struct.adapter* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hal_com_data*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %12)
  store %struct.hal_com_data* %13, %struct.hal_com_data** %10, align 8
  %14 = load %struct.hal_com_data*, %struct.hal_com_data** %10, align 8
  %15 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %14, i32 0, i32 0
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = call i32 @ODM_CheckPowerStatus(%struct.adapter* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %23 = load i32, i32* @ODM_DBG_LOUD, align 4
  %24 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %42, %20
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @bMaskDWord, align 4
  %38 = call i64 @PHY_QueryBBReg(i32 %32, i64 %36, i32 %37)
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %25

45:                                               ; preds = %19, %25
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ODM_CheckPowerStatus(%struct.adapter*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i64 @PHY_QueryBBReg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
