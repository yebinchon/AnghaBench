; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_update_tx_ant_88eu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_rtl8188e.c_update_tx_ant_88eu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { %struct.fast_ant_train }
%struct.fast_ant_train = type { i64*, i64*, i64* }

@MAIN_ANT = common dso_local global i64 0, align 8
@MAIN_ANT_CG_TRX = common dso_local global i64 0, align 8
@AUX_ANT_CG_TRX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*, i64, i64)* @update_tx_ant_88eu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tx_ant_88eu(%struct.odm_dm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.odm_dm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fast_ant_train*, align 8
  %8 = alloca i64, align 8
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %4, align 8
  %10 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %9, i32 0, i32 0
  store %struct.fast_ant_train* %10, %struct.fast_ant_train** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MAIN_ANT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @MAIN_ANT_CG_TRX, align 8
  store i64 %15, i64* %8, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @AUX_ANT_CG_TRX, align 8
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @BIT(i32 0)
  %21 = and i64 %19, %20
  %22 = load %struct.fast_ant_train*, %struct.fast_ant_train** %7, align 8
  %23 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %21, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @BIT(i32 1)
  %29 = and i64 %27, %28
  %30 = ashr i64 %29, 1
  %31 = load %struct.fast_ant_train*, %struct.fast_ant_train** %7, align 8
  %32 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @BIT(i32 2)
  %38 = and i64 %36, %37
  %39 = ashr i64 %38, 2
  %40 = load %struct.fast_ant_train*, %struct.fast_ant_train** %7, align 8
  %41 = getelementptr inbounds %struct.fast_ant_train, %struct.fast_ant_train* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %39, i64* %44, align 8
  ret void
}

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
