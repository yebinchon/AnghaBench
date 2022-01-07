; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_sdio.c_wilc_sdio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.wilc = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"sdio resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @wilc_sdio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_sdio_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.wilc*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %5)
  store %struct.sdio_func* %6, %struct.sdio_func** %3, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %8 = call %struct.wilc* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.wilc* %8, %struct.wilc** %4, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @dev_info(%struct.device* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %12 = call i32 @sdio_release_host(%struct.sdio_func* %11)
  %13 = load %struct.wilc*, %struct.wilc** %4, align 8
  %14 = call i32 @chip_wakeup(%struct.wilc* %13)
  %15 = load %struct.wilc*, %struct.wilc** %4, align 8
  %16 = call i32 @wilc_sdio_init(%struct.wilc* %15, i32 1)
  %17 = load %struct.wilc*, %struct.wilc** %4, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.wilc*, %struct.wilc** %4, align 8
  %23 = call i32 @host_wakeup_notify(%struct.wilc* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.wilc*, %struct.wilc** %4, align 8
  %26 = call i32 @chip_allow_sleep(%struct.wilc* %25)
  ret i32 0
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.wilc* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @chip_wakeup(%struct.wilc*) #1

declare dso_local i32 @wilc_sdio_init(%struct.wilc*, i32) #1

declare dso_local i32 @host_wakeup_notify(%struct.wilc*) #1

declare dso_local i32 @chip_allow_sleep(%struct.wilc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
