; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_SwChnl8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_phy_SwChnl8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, i64, i32* }

@RF_PSEUDO_11N = common dso_local global i64 0, align 8
@ODM_RF_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@ODM_RF_PATH_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"===>phy_SwChnl8723B: Channel = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @phy_SwChnl8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_SwChnl8723B(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %5)
  store %struct.hal_com_data* %6, %struct.hal_com_data** %3, align 8
  %7 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %8 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %11 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RF_PSEUDO_11N, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 268435200
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i32, i32* @ODM_RF_PATH_A, align 4
  %31 = load i32, i32* @RF_CHNLBW, align 4
  %32 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %33 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PHY_SetRFReg(%struct.adapter* %29, i32 %30, i32 %31, i32 1023, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load i32, i32* @ODM_RF_PATH_B, align 4
  %40 = load i32, i32* @RF_CHNLBW, align 4
  %41 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %42 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PHY_SetRFReg(%struct.adapter* %38, i32 %39, i32 %40, i32 1023, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @DBG_8192C(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @PHY_SetRFReg(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @DBG_8192C(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
