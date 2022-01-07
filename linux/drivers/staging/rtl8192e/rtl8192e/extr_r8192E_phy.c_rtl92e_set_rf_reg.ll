; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_set_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@eRfOn = common dso_local global i64 0, align 8
@COMP_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FW RF CTRL is not ready now\0A\00", align 1
@RF_OP_By_FW = common dso_local global i64 0, align 8
@bMask12Bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_set_rf_reg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r8192_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %15)
  store %struct.r8192_priv* %16, %struct.r8192_priv** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rtl92e_is_legal_rf_path(%struct.net_device* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %107

22:                                               ; preds = %5
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @eRfOn, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %107

36:                                               ; preds = %30, %22
  %37 = load i32, i32* @COMP_PHY, align 4
  %38 = call i32 @RT_TRACE(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RF_OP_By_FW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @bMask12Bits, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @_rtl92e_phy_rf_fw_read(%struct.net_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @_rtl92e_calculate_bit_shift(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @_rtl92e_phy_rf_fw_write(%struct.net_device* %63, i32 %64, i32 %65, i32 %66)
  br label %74

68:                                               ; preds = %44
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @_rtl92e_phy_rf_fw_write(%struct.net_device* %69, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %48
  %75 = call i32 @udelay(i32 200)
  br label %107

76:                                               ; preds = %36
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @bMask12Bits, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @_rtl92e_phy_rf_read(%struct.net_device* %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @_rtl92e_calculate_bit_shift(i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  store i32 %94, i32* %14, align 4
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @_rtl92e_phy_rf_write(%struct.net_device* %95, i32 %96, i32 %97, i32 %98)
  br label %106

100:                                              ; preds = %76
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @_rtl92e_phy_rf_write(%struct.net_device* %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %80
  br label %107

107:                                              ; preds = %21, %35, %106, %74
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_is_legal_rf_path(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @_rtl92e_phy_rf_fw_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @_rtl92e_calculate_bit_shift(i32) #1

declare dso_local i32 @_rtl92e_phy_rf_fw_write(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl92e_phy_rf_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @_rtl92e_phy_rf_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
