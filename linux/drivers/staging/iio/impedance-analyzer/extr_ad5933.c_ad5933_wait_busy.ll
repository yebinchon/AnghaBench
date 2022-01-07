; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5933_state = type { i32 }

@AD5933_MAX_RETRIES = common dso_local global i8 0, align 1
@AD5933_REG_STATUS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5933_state*, i8)* @ad5933_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_wait_busy(%struct.ad5933_state* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5933_state*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.ad5933_state* %0, %struct.ad5933_state** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load i8, i8* @AD5933_MAX_RETRIES, align 1
  store i8 %9, i8* %7, align 1
  br label %10

10:                                               ; preds = %34, %2
  %11 = load i8, i8* %7, align 1
  %12 = add i8 %11, -1
  store i8 %12, i8* %7, align 1
  %13 = icmp ne i8 %11, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.ad5933_state*, %struct.ad5933_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AD5933_REG_STATUS, align 4
  %19 = call i32 @ad5933_i2c_read(i32 %17, i32 %18, i32 1, i8* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %14
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %24
  %35 = call i32 (...) @cpu_relax()
  %36 = call i32 @mdelay(i32 1)
  br label %10

37:                                               ; preds = %10
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %31, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ad5933_i2c_read(i32, i32, i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
