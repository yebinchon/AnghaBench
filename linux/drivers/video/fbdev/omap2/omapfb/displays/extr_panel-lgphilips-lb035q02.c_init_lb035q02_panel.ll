; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_init_lb035q02_panel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_init_lb035q02_panel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @init_lb035q02_panel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_lb035q02_panel(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %3 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %4 = call i32 @lb035q02_write_reg(%struct.spi_device* %3, i32 1, i32 25344)
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call i32 @lb035q02_write_reg(%struct.spi_device* %5, i32 2, i32 512)
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = call i32 @lb035q02_write_reg(%struct.spi_device* %7, i32 3, i32 375)
  %9 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %10 = call i32 @lb035q02_write_reg(%struct.spi_device* %9, i32 4, i32 1223)
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = call i32 @lb035q02_write_reg(%struct.spi_device* %11, i32 5, i32 65472)
  %13 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %14 = call i32 @lb035q02_write_reg(%struct.spi_device* %13, i32 6, i32 59398)
  %15 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %16 = call i32 @lb035q02_write_reg(%struct.spi_device* %15, i32 10, i32 16392)
  %17 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %18 = call i32 @lb035q02_write_reg(%struct.spi_device* %17, i32 11, i32 0)
  %19 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %20 = call i32 @lb035q02_write_reg(%struct.spi_device* %19, i32 13, i32 48)
  %21 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %22 = call i32 @lb035q02_write_reg(%struct.spi_device* %21, i32 14, i32 10240)
  %23 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %24 = call i32 @lb035q02_write_reg(%struct.spi_device* %23, i32 15, i32 0)
  %25 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %26 = call i32 @lb035q02_write_reg(%struct.spi_device* %25, i32 22, i32 40832)
  %27 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %28 = call i32 @lb035q02_write_reg(%struct.spi_device* %27, i32 23, i32 2575)
  %29 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %30 = call i32 @lb035q02_write_reg(%struct.spi_device* %29, i32 30, i32 193)
  %31 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %32 = call i32 @lb035q02_write_reg(%struct.spi_device* %31, i32 48, i32 768)
  %33 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %34 = call i32 @lb035q02_write_reg(%struct.spi_device* %33, i32 49, i32 7)
  %35 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %36 = call i32 @lb035q02_write_reg(%struct.spi_device* %35, i32 50, i32 0)
  %37 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %38 = call i32 @lb035q02_write_reg(%struct.spi_device* %37, i32 51, i32 0)
  %39 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %40 = call i32 @lb035q02_write_reg(%struct.spi_device* %39, i32 52, i32 1799)
  %41 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %42 = call i32 @lb035q02_write_reg(%struct.spi_device* %41, i32 53, i32 4)
  %43 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %44 = call i32 @lb035q02_write_reg(%struct.spi_device* %43, i32 54, i32 770)
  %45 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %46 = call i32 @lb035q02_write_reg(%struct.spi_device* %45, i32 55, i32 514)
  %47 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %48 = call i32 @lb035q02_write_reg(%struct.spi_device* %47, i32 58, i32 2573)
  %49 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %50 = call i32 @lb035q02_write_reg(%struct.spi_device* %49, i32 59, i32 2054)
  ret void
}

declare dso_local i32 @lb035q02_write_reg(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
