; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_Write_CCK_CCA_Thres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm.c_ODM_Write_CCK_CCA_Thres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.adapter*, %struct.rtw_dig }
%struct.adapter = type { i32 }
%struct.rtw_dig = type { i64, i64 }

@ODM_REG_CCK_CCA_11N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ODM_Write_CCK_CCA_Thres(%struct.odm_dm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.odm_dm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtw_dig*, align 8
  %6 = alloca %struct.adapter*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %7, i32 0, i32 1
  store %struct.rtw_dig* %8, %struct.rtw_dig** %5, align 8
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %6, align 8
  %12 = load %struct.rtw_dig*, %struct.rtw_dig** %5, align 8
  %13 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = load i32, i32* @ODM_REG_CCK_CCA_11N, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @usb_write8(%struct.adapter* %18, i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.rtw_dig*, %struct.rtw_dig** %5, align 8
  %24 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rtw_dig*, %struct.rtw_dig** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.rtw_dig*, %struct.rtw_dig** %5, align 8
  %30 = getelementptr inbounds %struct.rtw_dig, %struct.rtw_dig* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  ret void
}

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
