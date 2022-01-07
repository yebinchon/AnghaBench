; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_release_sdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_release_sdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i64 }

@CARD_STOP = common dso_local global i32 0, align 4
@SD_STOP = common dso_local global i32 0, align 4
@SD_CLR_ERR = common dso_local global i32 0, align 4
@SDIO_CTRL = common dso_local global i32 0, align 4
@SDIO_CD_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @release_sdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_sdio(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %9 = load i32, i32* @CARD_STOP, align 4
  %10 = load i32, i32* @SD_STOP, align 4
  %11 = load i32, i32* @SD_CLR_ERR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SD_STOP, align 4
  %14 = load i32, i32* @SD_CLR_ERR, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rtsx_write_register(%struct.rtsx_chip* %8, i32 %9, i32 %12, i32 %15)
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %18 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %7
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = call i64 @CHECK_PID(%struct.rtsx_chip* %24, i32 21128)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %29 = call i32 @rtsx_write_register(%struct.rtsx_chip* %28, i32 65114, i32 8, i32 0)
  br label %33

30:                                               ; preds = %21
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %32 = call i32 @rtsx_write_register(%struct.rtsx_chip* %31, i32 65136, i32 128, i32 0)
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %7
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %36 = load i32, i32* @SDIO_CTRL, align 4
  %37 = load i32, i32* @SDIO_CD_CTRL, align 4
  %38 = call i32 @rtsx_write_register(%struct.rtsx_chip* %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %40 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
