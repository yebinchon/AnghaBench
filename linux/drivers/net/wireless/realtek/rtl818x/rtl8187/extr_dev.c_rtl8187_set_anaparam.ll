; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_set_anaparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_dev.c_rtl8187_set_anaparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8187_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@RTL8187_RTL8225_ANAPARAM_ON = common dso_local global i32 0, align 4
@RTL8187_RTL8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@RTL8187_RTL8225_ANAPARAM_OFF = common dso_local global i32 0, align 4
@RTL8187_RTL8225_ANAPARAM2_OFF = common dso_local global i32 0, align 4
@RTL8187B_RTL8225_ANAPARAM_ON = common dso_local global i32 0, align 4
@RTL8187B_RTL8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@RTL8187B_RTL8225_ANAPARAM3_ON = common dso_local global i32 0, align 4
@RTL8187B_RTL8225_ANAPARAM_OFF = common dso_local global i32 0, align 4
@RTL8187B_RTL8225_ANAPARAM2_OFF = common dso_local global i32 0, align 4
@RTL8187B_RTL8225_ANAPARAM3_OFF = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8187_priv*, i32)* @rtl8187_set_anaparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_set_anaparam(%struct.rtl8187_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8187_priv* %0, %struct.rtl8187_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @RTL8187_RTL8225_ANAPARAM_ON, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RTL8187_RTL8225_ANAPARAM2_ON, align 4
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @RTL8187_RTL8225_ANAPARAM_OFF, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @RTL8187_RTL8225_ANAPARAM2_OFF, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @RTL8187B_RTL8225_ANAPARAM_ON, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RTL8187B_RTL8225_ANAPARAM2_ON, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @RTL8187B_RTL8225_ANAPARAM3_ON, align 4
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @RTL8187B_RTL8225_ANAPARAM_OFF, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @RTL8187B_RTL8225_ANAPARAM2_OFF, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @RTL8187B_RTL8225_ANAPARAM3_OFF, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %37 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %42 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %36, i32* %40, i32 %41)
  %43 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %44 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %43, i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %53 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %52, i32* %56, i32 %57)
  %59 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %60 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %59, i32* %63, i32 %64)
  %66 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %67 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %68 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %66, i32* %70, i32 %71)
  %73 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %35
  %78 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %79 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %78, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %35
  %86 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %91 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %92 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %90, i32* %94, i32 %95)
  %97 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %98 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %99 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %103 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %97, i32* %101, i32 %102)
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
