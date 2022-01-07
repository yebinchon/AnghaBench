; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.pl022 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl022_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl022_remove(%struct.amba_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca %struct.pl022*, align 8
  store %struct.amba_device* %0, %struct.amba_device** %3, align 8
  %5 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %6 = call %struct.pl022* @amba_get_drvdata(%struct.amba_device* %5)
  store %struct.pl022* %6, %struct.pl022** %4, align 8
  %7 = load %struct.pl022*, %struct.pl022** %4, align 8
  %8 = icmp ne %struct.pl022* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %12 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_noresume(i32* %12)
  %14 = load %struct.pl022*, %struct.pl022** %4, align 8
  %15 = call i32 @load_ssp_default_config(%struct.pl022* %14)
  %16 = load %struct.pl022*, %struct.pl022** %4, align 8
  %17 = getelementptr inbounds %struct.pl022, %struct.pl022* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load %struct.pl022*, %struct.pl022** %4, align 8
  %24 = call i32 @pl022_dma_remove(%struct.pl022* %23)
  br label %25

25:                                               ; preds = %22, %10
  %26 = load %struct.pl022*, %struct.pl022** %4, align 8
  %27 = getelementptr inbounds %struct.pl022, %struct.pl022* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  %30 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %31 = call i32 @amba_release_regions(%struct.amba_device* %30)
  %32 = load %struct.pl022*, %struct.pl022** %4, align 8
  %33 = getelementptr inbounds %struct.pl022, %struct.pl022* %32, i32 0, i32 0
  %34 = call i32 @tasklet_disable(i32* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.pl022* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @load_ssp_default_config(%struct.pl022*) #1

declare dso_local i32 @pl022_dma_remove(%struct.pl022*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
