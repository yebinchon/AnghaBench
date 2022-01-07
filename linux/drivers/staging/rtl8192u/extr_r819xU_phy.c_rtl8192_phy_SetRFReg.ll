; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_SetRFReg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_SetRFReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@RF_OP_By_FW = common dso_local global i64 0, align 8
@bMask12Bits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_phy_SetRFReg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r8192_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %94

21:                                               ; preds = %5
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RF_OP_By_FW, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @bMask12Bits, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @phy_FwRFSerialRead(%struct.net_device* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ffs(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @phy_FwRFSerialWrite(%struct.net_device* %48, i32 %49, i32 %50, i32 %51)
  br label %59

53:                                               ; preds = %27
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @phy_FwRFSerialWrite(%struct.net_device* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %31
  %60 = call i32 @udelay(i32 200)
  br label %94

61:                                               ; preds = %21
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @bMask12Bits, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @rtl8192_phy_RFSerialRead(%struct.net_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ffs(i32 %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %9, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @rtl8192_phy_RFSerialWrite(%struct.net_device* %82, i32 %83, i32 %84, i32 %85)
  br label %93

87:                                               ; preds = %61
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @rtl8192_phy_RFSerialWrite(%struct.net_device* %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %65
  br label %94

94:                                               ; preds = %20, %93, %59
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i32) #1

declare dso_local i32 @phy_FwRFSerialRead(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @phy_FwRFSerialWrite(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8192_phy_RFSerialRead(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_phy_RFSerialWrite(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
