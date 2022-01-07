; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.wilc = type { i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"sdio suspend\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fail reset sdio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wilc_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %7)
  store %struct.sdio_func* %8, %struct.sdio_func** %4, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %10 = call %struct.wilc* @sdio_get_drvdata(%struct.sdio_func* %9)
  store %struct.wilc* %10, %struct.wilc** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dev_info(%struct.device* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wilc*, %struct.wilc** %5, align 8
  %14 = call i32 @chip_wakeup(%struct.wilc* %13)
  %15 = load %struct.wilc*, %struct.wilc** %5, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IS_ERR(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.wilc*, %struct.wilc** %5, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_disable_unprepare(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.wilc*, %struct.wilc** %5, align 8
  %27 = getelementptr inbounds %struct.wilc, %struct.wilc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.wilc*, %struct.wilc** %5, align 8
  %32 = call i32 @host_sleep_notify(%struct.wilc* %31)
  %33 = load %struct.wilc*, %struct.wilc** %5, align 8
  %34 = call i32 @chip_allow_sleep(%struct.wilc* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.wilc*, %struct.wilc** %5, align 8
  %37 = call i32 @wilc_sdio_reset(%struct.wilc* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %42 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %47 = call i32 @sdio_claim_host(%struct.sdio_func* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.wilc* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @chip_wakeup(%struct.wilc*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @host_sleep_notify(%struct.wilc*) #1

declare dso_local i32 @chip_allow_sleep(%struct.wilc*) #1

declare dso_local i32 @wilc_sdio_reset(%struct.wilc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
