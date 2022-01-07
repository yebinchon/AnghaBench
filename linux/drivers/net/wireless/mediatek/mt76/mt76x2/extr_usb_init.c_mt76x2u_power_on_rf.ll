; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_power_on_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_power_on_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }

@CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x2u_power_on_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2u_power_on_rf(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 8, i32 0
  store i32 %10, i32* %5, align 4
  %11 = call i32 @BIT(i32 1)
  %12 = call i32 @BIT(i32 3)
  %13 = or i32 %11, %12
  %14 = call i32 @BIT(i32 4)
  %15 = or i32 %13, %14
  %16 = call i32 @BIT(i32 5)
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %21 = load i32, i32* @CFG, align 4
  %22 = call i32 @MT_VEND_ADDR(i32 %21, i32 304)
  %23 = call i32 @BIT(i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %23, %24
  %26 = call i32 @mt76_set(%struct.mt76x02_dev* %20, i32 %22, i32 %25)
  %27 = call i32 @usleep_range(i32 10, i32 20)
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = load i32, i32* @CFG, align 4
  %30 = call i32 @MT_VEND_ADDR(i32 %29, i32 304)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mt76_set(%struct.mt76x02_dev* %28, i32 %30, i32 %31)
  %33 = call i32 @usleep_range(i32 10, i32 20)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = load i32, i32* @CFG, align 4
  %36 = call i32 @MT_VEND_ADDR(i32 %35, i32 304)
  %37 = call i32 @BIT(i32 2)
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @mt76_clear(%struct.mt76x02_dev* %34, i32 %36, i32 %39)
  %41 = call i32 @usleep_range(i32 10, i32 20)
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = call i32 @mt76x2u_power_on_rf_patch(%struct.mt76x02_dev* %42)
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = call i32 @mt76_set(%struct.mt76x02_dev* %44, i32 1328, i32 15)
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_VEND_ADDR(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2u_power_on_rf_patch(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
