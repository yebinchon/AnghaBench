; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_get_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_get_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@eRfOn = common dso_local global i64 0, align 8
@RF_OP_By_FW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92e_get_rf_reg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %13, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rtl92e_is_legal_rf_path(%struct.net_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @eRfOn, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %67

35:                                               ; preds = %29, %21
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RF_OP_By_FW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @_rtl92e_phy_rf_fw_read(%struct.net_device* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = call i32 @udelay(i32 200)
  br label %55

50:                                               ; preds = %35
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @_rtl92e_phy_rf_read(%struct.net_device* %51, i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %44
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @_rtl92e_calculate_bit_shift(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %13, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %55, %34, %20
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_is_legal_rf_path(%struct.net_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_rtl92e_phy_rf_fw_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl92e_phy_rf_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @_rtl92e_calculate_bit_shift(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
