; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_set_tx_ant_by_tx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_rtl88eu_dm_set_tx_ant_by_tx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i64, %struct.fast_ant_train }
%struct.fast_ant_train = type { i32*, i32*, i32* }

@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@CG_TRX_SMART_ANTDIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_dm_set_tx_ant_by_tx_info(%struct.odm_dm_struct* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.odm_dm_struct*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fast_ant_train*, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %9 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %8, i32 0, i32 1
  store %struct.fast_ant_train* %9, %struct.fast_ant_train** %7, align 8
  %10 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %11 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %17 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CG_TRX_SMART_ANTDIV, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15, %3
  %22 = load i64*, i64** %5, align 8
  %23 = load %struct.fast_ant_train*, %struct.fast_ant_train** %7, align 8
  %24 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SET_TX_DESC_ANTSEL_A_88E(i64* %22, i32 %28)
  %30 = load i64*, i64** %5, align 8
  %31 = load %struct.fast_ant_train*, %struct.fast_ant_train** %7, align 8
  %32 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SET_TX_DESC_ANTSEL_B_88E(i64* %30, i32 %36)
  %38 = load i64*, i64** %5, align 8
  %39 = load %struct.fast_ant_train*, %struct.fast_ant_train** %7, align 8
  %40 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SET_TX_DESC_ANTSEL_C_88E(i64* %38, i32 %44)
  br label %46

46:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @SET_TX_DESC_ANTSEL_A_88E(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_ANTSEL_B_88E(i64*, i32) #1

declare dso_local i32 @SET_TX_DESC_ANTSEL_C_88E(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
