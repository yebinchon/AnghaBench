; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__, %struct.davinci_spi_config* }
%struct.TYPE_2__ = type { i64 }
%struct.davinci_spi_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @davinci_spi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_spi_cleanup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.davinci_spi_config*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 1
  %6 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %5, align 8
  store %struct.davinci_spi_config* %6, %struct.davinci_spi_config** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  store %struct.davinci_spi_config* null, %struct.davinci_spi_config** %8, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.davinci_spi_config*, %struct.davinci_spi_config** %3, align 8
  %16 = call i32 @kfree(%struct.davinci_spi_config* %15)
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @kfree(%struct.davinci_spi_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
