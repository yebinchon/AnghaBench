; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_read_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_read_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.sdio_cmd52 = type { i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*)* @wilc_sdio_read_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_read_size(%struct.wilc* %0, i32* %1) #0 {
  %3 = alloca %struct.wilc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_cmd52, align 8
  store %struct.wilc* %0, %struct.wilc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 0
  store i32 242, i32* %10, align 8
  %11 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.wilc*, %struct.wilc** %3, align 8
  %13 = call i32 @wilc_sdio_cmd52(%struct.wilc* %12, %struct.sdio_cmd52* %6)
  %14 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 0
  store i32 243, i32* %16, align 8
  %17 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.wilc*, %struct.wilc** %3, align 8
  %19 = call i32 @wilc_sdio_cmd52(%struct.wilc* %18, %struct.sdio_cmd52* %6)
  %20 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  ret i32 1
}

declare dso_local i32 @wilc_sdio_cmd52(%struct.wilc*, %struct.sdio_cmd52*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
