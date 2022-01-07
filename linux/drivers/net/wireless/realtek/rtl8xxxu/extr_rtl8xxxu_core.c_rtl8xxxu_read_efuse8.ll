; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_read_efuse8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_read_efuse8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_EFUSE_CTRL = common dso_local global i64 0, align 8
@RTL8XXXU_MAX_REG_POLL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*, i32, i32*)* @rtl8xxxu_read_efuse8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_read_efuse8(%struct.rtl8xxxu_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8xxxu_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %12 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %11, i64 %13, i32 %15)
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %18 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %19 = add nsw i64 %18, 2
  %20 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %17, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 252
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %29 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %30 = add nsw i64 %29, 2
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %28, i64 %30, i32 %31)
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %34 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %35 = add nsw i64 %34, 3
  %36 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %33, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %38 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %39 = add nsw i64 %38, 3
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 127
  %42 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %37, i64 %39, i32 %41)
  %43 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %44 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %45 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %43, i64 %44)
  store i32 %45, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %60, %3
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RTL8XXXU_MAX_REG_POLL, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %52 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %53 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %51, i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BIT(i32 31)
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %63

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %46

63:                                               ; preds = %58, %46
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @RTL8XXXU_MAX_REG_POLL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %78

70:                                               ; preds = %63
  %71 = call i32 @udelay(i32 50)
  %72 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %73 = load i64, i64* @REG_EFUSE_CTRL, align 8
  %74 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %72, i64 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
