; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_power_on_rf_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_init.c_mt76x2_power_on_rf_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2_power_on_rf_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_power_on_rf_patch(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %4 = call i32 @BIT(i32 0)
  %5 = call i32 @BIT(i32 16)
  %6 = or i32 %4, %5
  %7 = call i32 @mt76_set(%struct.mt76x02_dev* %3, i32 65840, i32 %6)
  %8 = call i32 @udelay(i32 1)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = call i32 @mt76_clear(%struct.mt76x02_dev* %9, i32 65564, i32 255)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = call i32 @mt76_set(%struct.mt76x02_dev* %11, i32 65564, i32 48)
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %14 = call i32 @mt76_wr(%struct.mt76x02_dev* %13, i32 65556, i32 18511)
  %15 = call i32 @udelay(i32 1)
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = call i32 @BIT(i32 17)
  %18 = call i32 @mt76_set(%struct.mt76x02_dev* %16, i32 65840, i32 %17)
  %19 = call i32 @udelay(i32 125)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = call i32 @BIT(i32 16)
  %22 = call i32 @mt76_clear(%struct.mt76x02_dev* %20, i32 65840, i32 %21)
  %23 = call i32 @udelay(i32 50)
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %25 = call i32 @BIT(i32 19)
  %26 = call i32 @BIT(i32 20)
  %27 = or i32 %25, %26
  %28 = call i32 @mt76_set(%struct.mt76x02_dev* %24, i32 65868, i32 %27)
  ret void
}

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
