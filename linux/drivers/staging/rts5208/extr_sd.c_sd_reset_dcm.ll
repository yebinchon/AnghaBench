; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_reset_dcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_reset_dcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@TUNE_RX = common dso_local global i64 0, align 8
@DCM_DRP_CTL = common dso_local global i32 0, align 4
@DCM_RESET = common dso_local global i32 0, align 4
@DCM_RX = common dso_local global i32 0, align 4
@DCM_TX = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i64)* @sd_reset_dcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_reset_dcm(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @TUNE_RX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = load i32, i32* @DCM_DRP_CTL, align 4
  %13 = load i32, i32* @DCM_RESET, align 4
  %14 = load i32, i32* @DCM_RX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rtsx_write_register(%struct.rtsx_chip* %11, i32 %12, i32 255, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %10
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %23 = load i32, i32* @DCM_DRP_CTL, align 4
  %24 = load i32, i32* @DCM_RX, align 4
  %25 = call i32 @rtsx_write_register(%struct.rtsx_chip* %22, i32 %23, i32 255, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %54

30:                                               ; preds = %21
  br label %52

31:                                               ; preds = %2
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %33 = load i32, i32* @DCM_DRP_CTL, align 4
  %34 = load i32, i32* @DCM_RESET, align 4
  %35 = load i32, i32* @DCM_TX, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rtsx_write_register(%struct.rtsx_chip* %32, i32 %33, i32 255, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %31
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %44 = load i32, i32* @DCM_DRP_CTL, align 4
  %45 = load i32, i32* @DCM_TX, align 4
  %46 = call i32 @rtsx_write_register(%struct.rtsx_chip* %43, i32 %44, i32 255, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %49, %40, %28, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
