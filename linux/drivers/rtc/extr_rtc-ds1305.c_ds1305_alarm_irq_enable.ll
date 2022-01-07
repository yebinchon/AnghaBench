; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1305.c_ds1305_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1305.c_ds1305_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1305 = type { i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@DS1305_WRITE = common dso_local global i32 0, align 4
@DS1305_CONTROL = common dso_local global i32 0, align 4
@DS1305_AEI0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ds1305_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1305_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds1305*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ds1305* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1305* %9, %struct.ds1305** %5, align 8
  %10 = load i64, i64* @EINVAL, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @DS1305_WRITE, align 4
  %13 = load i32, i32* @DS1305_CONTROL, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ds1305*, %struct.ds1305** %5, align 8
  %17 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.ds1305*, %struct.ds1305** %5, align 8
  %26 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DS1305_AEI0, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %68

34:                                               ; preds = %24
  %35 = load i32, i32* @DS1305_AEI0, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %52

39:                                               ; preds = %2
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DS1305_AEI0, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %68

46:                                               ; preds = %39
  %47 = load i32, i32* @DS1305_AEI0, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %34
  %53 = load %struct.ds1305*, %struct.ds1305** %5, align 8
  %54 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %57 = call i64 @spi_write_then_read(i32 %55, i32* %56, i32 8, i32* null, i32 0)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ds1305*, %struct.ds1305** %5, align 8
  %64 = getelementptr inbounds %struct.ds1305, %struct.ds1305* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %52
  br label %68

68:                                               ; preds = %67, %45, %33
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i32
  ret i32 %70
}

declare dso_local %struct.ds1305* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @spi_write_then_read(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
