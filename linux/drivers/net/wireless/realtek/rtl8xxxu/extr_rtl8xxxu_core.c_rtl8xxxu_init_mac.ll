; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.rtl8xxxu_reg8val* }
%struct.rtl8xxxu_reg8val = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Failed to initialize MAC (reg: %04x, val %02x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@RTL8723B = common dso_local global i64 0, align 8
@RTL8192E = common dso_local global i64 0, align 8
@REG_MAX_AGGR_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8xxxu_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_init_mac(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.rtl8xxxu_reg8val*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  %9 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.rtl8xxxu_reg8val*, %struct.rtl8xxxu_reg8val** %12, align 8
  store %struct.rtl8xxxu_reg8val* %13, %struct.rtl8xxxu_reg8val** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %51, %1
  %15 = load %struct.rtl8xxxu_reg8val*, %struct.rtl8xxxu_reg8val** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rtl8xxxu_reg8val, %struct.rtl8xxxu_reg8val* %15, i64 %17
  %19 = getelementptr inbounds %struct.rtl8xxxu_reg8val, %struct.rtl8xxxu_reg8val* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rtl8xxxu_reg8val*, %struct.rtl8xxxu_reg8val** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rtl8xxxu_reg8val, %struct.rtl8xxxu_reg8val* %21, i64 %23
  %25 = getelementptr inbounds %struct.rtl8xxxu_reg8val, %struct.rtl8xxxu_reg8val* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 65535
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %54

33:                                               ; preds = %29, %14
  %34 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %71

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %14

54:                                               ; preds = %32
  %55 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RTL8723B, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RTL8192E, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %68 = load i32, i32* @REG_MAX_AGGR_NUM, align 4
  %69 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %67, i32 %68, i32 10)
  br label %70

70:                                               ; preds = %66, %60, %54
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
