; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-oc-tiny.c_tiny_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tiny_spi = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.spi_master* }
%struct.spi_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tiny_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiny_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tiny_spi*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.tiny_spi* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.tiny_spi* %7, %struct.tiny_spi** %3, align 8
  %8 = load %struct.tiny_spi*, %struct.tiny_spi** %3, align 8
  %9 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  store %struct.spi_master* %11, %struct.spi_master** %4, align 8
  %12 = load %struct.tiny_spi*, %struct.tiny_spi** %3, align 8
  %13 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %12, i32 0, i32 2
  %14 = call i32 @spi_bitbang_stop(%struct.TYPE_2__* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.tiny_spi*, %struct.tiny_spi** %3, align 8
  %18 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.tiny_spi*, %struct.tiny_spi** %3, align 8
  %23 = getelementptr inbounds %struct.tiny_spi, %struct.tiny_spi* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpio_free(i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %35 = call i32 @spi_master_put(%struct.spi_master* %34)
  ret i32 0
}

declare dso_local %struct.tiny_spi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spi_bitbang_stop(%struct.TYPE_2__*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
