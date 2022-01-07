; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rx8025_data = type { i32, i32 }

@RX8025_REG_CTRL1 = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL1_TEST = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_DAFG = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_WAFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Alarm was detected\0A\00", align 1
@RX8025_BIT_CTRL2_CTFG = common dso_local global i32 0, align 4
@RX8025_REG_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rx8025_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rx8025_data*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = call %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.rx8025_data* %9, %struct.rx8025_data** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.rx8025_data*, %struct.rx8025_data** %3, align 8
  %11 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = call i32 @rx8025_read_regs(i32 %12, i32 %13, i32 2, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %64

19:                                               ; preds = %1
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RX8025_BIT_CTRL1_TEST, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load %struct.rx8025_data*, %struct.rx8025_data** %3, align 8
  %26 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RX8025_BIT_CTRL2_DAFG, align 4
  %30 = load i32, i32* @RX8025_BIT_CTRL2_WAFG, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %19
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RX8025_BIT_CTRL2_CTFG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @RX8025_BIT_CTRL2_CTFG, align 4
  %52 = load i32, i32* @RX8025_BIT_CTRL2_WAFG, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RX8025_BIT_CTRL2_DAFG, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %60 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @rx8025_write_reg(%struct.i2c_client* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %48, %45
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rx8025_read_regs(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rx8025_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
