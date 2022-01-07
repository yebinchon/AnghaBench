; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcie_mdio_set_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcie_mdio_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_pcicore*, i32)* @ssb_pcie_mdio_set_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_pcie_mdio_set_phy(%struct.ssb_pcicore* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_pcicore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 296, i32* %5, align 4
  store i32 300, i32* %6, align 4
  store i32 1073741824, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = or i32 %9, 268435456
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = or i32 %11, 131072
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, 8126464
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pcicore_write32(%struct.ssb_pcicore* %19, i32 300, i32 %20)
  %22 = call i32 @udelay(i32 10)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %35, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 200
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %3, align 8
  %28 = call i32 @pcicore_read32(%struct.ssb_pcicore* %27, i32 296)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 256
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %38

33:                                               ; preds = %26
  %34 = call i32 @msleep(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %23

38:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @pcicore_write32(%struct.ssb_pcicore*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pcicore_read32(%struct.ssb_pcicore*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
