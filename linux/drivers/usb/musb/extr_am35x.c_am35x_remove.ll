; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_am35x.c_am35x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_am35x.c_am35x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.am35x_glue = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @am35x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am35x_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.am35x_glue*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.am35x_glue* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.am35x_glue* %5, %struct.am35x_glue** %3, align 8
  %6 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %7 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @platform_device_unregister(i32 %8)
  %10 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %11 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_phy_generic_unregister(i32 %12)
  %14 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %15 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable(i32 %16)
  %18 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %19 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable(i32 %20)
  %22 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %23 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_put(i32 %24)
  %26 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %27 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_put(i32 %28)
  %30 = load %struct.am35x_glue*, %struct.am35x_glue** %3, align 8
  %31 = call i32 @kfree(%struct.am35x_glue* %30)
  ret i32 0
}

declare dso_local %struct.am35x_glue* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @usb_phy_generic_unregister(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.am35x_glue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
