; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_platform_data_sdio = type { i32 (%struct.cw1200_platform_data_sdio*, i32)*, i32 (%struct.cw1200_platform_data_sdio*, i32)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_platform_data_sdio*)* @cw1200_sdio_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_sdio_off(%struct.cw1200_platform_data_sdio* %0) #0 {
  %2 = alloca %struct.cw1200_platform_data_sdio*, align 8
  store %struct.cw1200_platform_data_sdio* %0, %struct.cw1200_platform_data_sdio** %2, align 8
  %3 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %4 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %9 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @gpio_set_value(i64 %10, i32 0)
  %12 = call i32 @msleep(i32 30)
  %13 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %14 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @gpio_free(i64 %15)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %19 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %18, i32 0, i32 1
  %20 = load i32 (%struct.cw1200_platform_data_sdio*, i32)*, i32 (%struct.cw1200_platform_data_sdio*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.cw1200_platform_data_sdio*, i32)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %24 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %23, i32 0, i32 1
  %25 = load i32 (%struct.cw1200_platform_data_sdio*, i32)*, i32 (%struct.cw1200_platform_data_sdio*, i32)** %24, align 8
  %26 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %27 = call i32 %25(%struct.cw1200_platform_data_sdio* %26, i32 0)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %30 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %29, i32 0, i32 0
  %31 = load i32 (%struct.cw1200_platform_data_sdio*, i32)*, i32 (%struct.cw1200_platform_data_sdio*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.cw1200_platform_data_sdio*, i32)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %35 = getelementptr inbounds %struct.cw1200_platform_data_sdio, %struct.cw1200_platform_data_sdio* %34, i32 0, i32 0
  %36 = load i32 (%struct.cw1200_platform_data_sdio*, i32)*, i32 (%struct.cw1200_platform_data_sdio*, i32)** %35, align 8
  %37 = load %struct.cw1200_platform_data_sdio*, %struct.cw1200_platform_data_sdio** %2, align 8
  %38 = call i32 %36(%struct.cw1200_platform_data_sdio* %37, i32 0)
  br label %39

39:                                               ; preds = %33, %28
  ret i32 0
}

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpio_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
