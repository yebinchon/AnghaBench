; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_rtw_hal_check_rxfifo_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c_rtw_hal_check_rxfifo_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.dvobj_priv* }
%struct.dvobj_priv = type { %struct.debug_priv }
%struct.debug_priv = type { i64, i64, i64 }

@REG_RXERR_RPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_check_rxfifo_full(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  %4 = alloca %struct.debug_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load %struct.dvobj_priv*, %struct.dvobj_priv** %7, align 8
  store %struct.dvobj_priv* %8, %struct.dvobj_priv** %3, align 8
  %9 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %10 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %9, i32 0, i32 0
  store %struct.debug_priv* %10, %struct.debug_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i64, i64* @REG_RXERR_RPT, align 8
  %13 = add nsw i64 %12, 3
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = load i64, i64* @REG_RXERR_RPT, align 8
  %16 = add nsw i64 %15, 3
  %17 = call i32 @rtw_read8(%struct.adapter* %14, i64 %16)
  %18 = or i32 %17, 240
  %19 = call i32 @rtw_write8(%struct.adapter* %11, i64 %13, i32 %18)
  store i32 1, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load %struct.debug_priv*, %struct.debug_priv** %4, align 8
  %24 = getelementptr inbounds %struct.debug_priv, %struct.debug_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.debug_priv*, %struct.debug_priv** %4, align 8
  %27 = getelementptr inbounds %struct.debug_priv, %struct.debug_priv* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = load i64, i64* @REG_RXERR_RPT, align 8
  %30 = call i64 @rtw_read16(%struct.adapter* %28, i64 %29)
  %31 = load %struct.debug_priv*, %struct.debug_priv** %4, align 8
  %32 = getelementptr inbounds %struct.debug_priv, %struct.debug_priv* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.debug_priv*, %struct.debug_priv** %4, align 8
  %34 = getelementptr inbounds %struct.debug_priv, %struct.debug_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.debug_priv*, %struct.debug_priv** %4, align 8
  %37 = getelementptr inbounds %struct.debug_priv, %struct.debug_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.debug_priv*, %struct.debug_priv** %4, align 8
  %41 = getelementptr inbounds %struct.debug_priv, %struct.debug_priv* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @rtw_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i64) #1

declare dso_local i64 @rtw_read16(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
