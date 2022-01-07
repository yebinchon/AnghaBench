; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_power_on_rf_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_power_on_rf_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2u_power_on_rf_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2u_power_on_rf_patch(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = load i32, i32* @CFG, align 4
  %5 = call i32 @MT_VEND_ADDR(i32 %4, i32 304)
  %6 = call i32 @BIT(i32 0)
  %7 = call i32 @BIT(i32 16)
  %8 = or i32 %6, %7
  %9 = call i32 @mt76_set(%struct.mt76x02_dev* %3, i32 %5, i32 %8)
  %10 = call i32 @udelay(i32 1)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = load i32, i32* @CFG, align 4
  %13 = call i32 @MT_VEND_ADDR(i32 %12, i32 28)
  %14 = call i32 @mt76_clear(%struct.mt76x02_dev* %11, i32 %13, i32 255)
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = load i32, i32* @CFG, align 4
  %17 = call i32 @MT_VEND_ADDR(i32 %16, i32 28)
  %18 = call i32 @mt76_set(%struct.mt76x02_dev* %15, i32 %17, i32 48)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %20 = load i32, i32* @CFG, align 4
  %21 = call i32 @MT_VEND_ADDR(i32 %20, i32 20)
  %22 = call i32 @mt76_wr(%struct.mt76x02_dev* %19, i32 %21, i32 18511)
  %23 = call i32 @udelay(i32 1)
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %25 = load i32, i32* @CFG, align 4
  %26 = call i32 @MT_VEND_ADDR(i32 %25, i32 304)
  %27 = call i32 @BIT(i32 17)
  %28 = call i32 @mt76_set(%struct.mt76x02_dev* %24, i32 %26, i32 %27)
  %29 = call i32 @usleep_range(i32 150, i32 200)
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %31 = load i32, i32* @CFG, align 4
  %32 = call i32 @MT_VEND_ADDR(i32 %31, i32 304)
  %33 = call i32 @BIT(i32 16)
  %34 = call i32 @mt76_clear(%struct.mt76x02_dev* %30, i32 %32, i32 %33)
  %35 = call i32 @usleep_range(i32 50, i32 100)
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %37 = load i32, i32* @CFG, align 4
  %38 = call i32 @MT_VEND_ADDR(i32 %37, i32 332)
  %39 = call i32 @BIT(i32 19)
  %40 = call i32 @BIT(i32 20)
  %41 = or i32 %39, %40
  %42 = call i32 @mt76_set(%struct.mt76x02_dev* %36, i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
