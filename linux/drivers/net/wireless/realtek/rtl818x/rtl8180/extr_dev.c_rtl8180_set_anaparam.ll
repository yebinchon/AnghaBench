; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_set_anaparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_set_anaparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8180_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RTL818X_EEPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@RTL818X_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@RTL818X_EEPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8180_set_anaparam(%struct.rtl8180_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8180_priv* %0, %struct.rtl8180_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %7 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @RTL818X_EEPROM_CMD_CONFIG, align 4
  %12 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %6, i32* %10, i32 %11)
  %13 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @rtl818x_ioread8(%struct.rtl8180_priv* %13, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %20 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %19, i32* %23, i32 %26)
  %28 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %28, i32* %32, i32 %33)
  %35 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %36 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %37 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @RTL818X_CONFIG3_ANAPARAM_WRITE, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %35, i32* %39, i32 %43)
  %45 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %46 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* @RTL818X_EEPROM_CMD_NORMAL, align 4
  %51 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %45, i32* %49, i32 %50)
  ret void
}

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8180_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
