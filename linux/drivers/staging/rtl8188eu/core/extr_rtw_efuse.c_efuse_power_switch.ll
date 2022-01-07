; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_efuse_power_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_efuse_power_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@REG_EFUSE_ACCESS = common dso_local global i64 0, align 8
@EFUSE_ACCESS_ON = common dso_local global i32 0, align 4
@REG_SYS_ISO_CTRL = common dso_local global i32 0, align 4
@PWC_EV12V = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@FEN_ELDR = common dso_local global i32 0, align 4
@REG_SYS_CLKR = common dso_local global i32 0, align 4
@LOADER_CLK_EN = common dso_local global i32 0, align 4
@ANA8M = common dso_local global i32 0, align 4
@EFUSE_TEST = common dso_local global i64 0, align 8
@VOLTAGE_V25 = common dso_local global i32 0, align 4
@EFUSE_ACCESS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuse_power_switch(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %3
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = load i64, i64* @REG_EFUSE_ACCESS, align 8
  %14 = load i32, i32* @EFUSE_ACCESS_ON, align 4
  %15 = call i32 @usb_write8(%struct.adapter* %12, i64 %13, i32 %14)
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load i32, i32* @REG_SYS_ISO_CTRL, align 4
  %18 = call i32 @usb_read16(%struct.adapter* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PWC_EV12V, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* @PWC_EV12V, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = load i32, i32* @REG_SYS_ISO_CTRL, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @usb_write16(%struct.adapter* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %11
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %34 = call i32 @usb_read16(%struct.adapter* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FEN_ELDR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @FEN_ELDR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @usb_write16(%struct.adapter* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i32, i32* @REG_SYS_CLKR, align 4
  %50 = call i32 @usb_read16(%struct.adapter* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @LOADER_CLK_EN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ANA8M, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55, %47
  %61 = load i32, i32* @LOADER_CLK_EN, align 4
  %62 = load i32, i32* @ANA8M, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.adapter*, %struct.adapter** %4, align 8
  %67 = load i32, i32* @REG_SYS_CLKR, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @usb_write16(%struct.adapter* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load %struct.adapter*, %struct.adapter** %4, align 8
  %75 = load i64, i64* @EFUSE_TEST, align 8
  %76 = add nsw i64 %75, 3
  %77 = call i32 @usb_read8(%struct.adapter* %74, i64 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 15
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @VOLTAGE_V25, align 4
  %81 = shl i32 %80, 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.adapter*, %struct.adapter** %4, align 8
  %85 = load i64, i64* @EFUSE_TEST, align 8
  %86 = add nsw i64 %85, 3
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, 128
  %89 = call i32 @usb_write8(%struct.adapter* %84, i64 %86, i32 %88)
  br label %90

90:                                               ; preds = %73, %70
  br label %110

91:                                               ; preds = %3
  %92 = load %struct.adapter*, %struct.adapter** %4, align 8
  %93 = load i64, i64* @REG_EFUSE_ACCESS, align 8
  %94 = load i32, i32* @EFUSE_ACCESS_OFF, align 4
  %95 = call i32 @usb_write8(%struct.adapter* %92, i64 %93, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = load i64, i64* @EFUSE_TEST, align 8
  %101 = add nsw i64 %100, 3
  %102 = call i32 @usb_read8(%struct.adapter* %99, i64 %101)
  store i32 %102, i32* %7, align 4
  %103 = load %struct.adapter*, %struct.adapter** %4, align 8
  %104 = load i64, i64* @EFUSE_TEST, align 8
  %105 = add nsw i64 %104, 3
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 127
  %108 = call i32 @usb_write8(%struct.adapter* %103, i64 %105, i32 %107)
  br label %109

109:                                              ; preds = %98, %91
  br label %110

110:                                              ; preds = %109, %90
  ret void
}

declare dso_local i32 @usb_write8(%struct.adapter*, i64, i32) #1

declare dso_local i32 @usb_read16(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
