; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32 }
%struct.sdio_cmd52 = type { i32, i32, i32, i64, i64 }
%struct.sdio_func = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Fail cmd 52, reset cmd ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*)* @wilc_sdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_reset(%struct.wilc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wilc*, align 8
  %4 = alloca %struct.sdio_cmd52, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_func*, align 8
  store %struct.wilc* %0, %struct.wilc** %3, align 8
  %7 = load %struct.wilc*, %struct.wilc** %3, align 8
  %8 = getelementptr inbounds %struct.wilc, %struct.wilc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sdio_func* @dev_to_sdio_func(i32 %9)
  store %struct.sdio_func* %10, %struct.sdio_func** %6, align 8
  %11 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %4, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %4, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %4, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %4, i32 0, i32 1
  store i32 6, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sdio_cmd52, %struct.sdio_cmd52* %4, i32 0, i32 2
  store i32 8, i32* %15, align 8
  %16 = load %struct.wilc*, %struct.wilc** %3, align 8
  %17 = call i32 @wilc_sdio_cmd52(%struct.wilc* %16, %struct.sdio_cmd52* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %22 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(i32) #1

declare dso_local i32 @wilc_sdio_cmd52(%struct.wilc*, %struct.sdio_cmd52*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
