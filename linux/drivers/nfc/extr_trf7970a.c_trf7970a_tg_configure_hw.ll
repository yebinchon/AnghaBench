; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_tg_configure_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_tg_configure_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.trf7970a = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Configure hw - type: %d, param: %d\0A\00", align 1
@TRF7970A_ST_PWR_OFF = common dso_local global i64 0, align 8
@TRF7970A_ST_RF_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, i32, i32)* @trf7970a_tg_configure_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_tg_configure_hw(%struct.nfc_digital_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.trf7970a*, align 8
  %8 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %10 = call %struct.trf7970a* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %9)
  store %struct.trf7970a* %10, %struct.trf7970a** %7, align 8
  %11 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %12 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %18 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %21 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %23 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TRF7970A_ST_PWR_OFF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %29 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TRF7970A_ST_RF_OFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %3
  %34 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %35 = call i32 @trf7970a_switch_rf_on(%struct.trf7970a* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %59

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %50 [
    i32 128, label %42
    i32 129, label %46
  ]

42:                                               ; preds = %40
  %43 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @trf7970a_tg_config_rf_tech(%struct.trf7970a* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @trf7970a_tg_config_framing(%struct.trf7970a* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %52 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %50, %46, %42
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.trf7970a*, %struct.trf7970a** %7, align 8
  %61 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.trf7970a* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @trf7970a_switch_rf_on(%struct.trf7970a*) #1

declare dso_local i32 @trf7970a_tg_config_rf_tech(%struct.trf7970a*, i32) #1

declare dso_local i32 @trf7970a_tg_config_framing(%struct.trf7970a*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
