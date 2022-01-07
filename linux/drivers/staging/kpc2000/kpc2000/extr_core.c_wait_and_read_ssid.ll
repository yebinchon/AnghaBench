; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_core.c_wait_and_read_ssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc2000/extr_core.c_wait_and_read_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kp2000_device = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@REG_FPGA_SSID = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SSID didn't show up!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kp2000_device*)* @wait_and_read_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_and_read_ssid(%struct.kp2000_device* %0) #0 {
  %2 = alloca %struct.kp2000_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kp2000_device* %0, %struct.kp2000_device** %2, align 8
  %5 = load %struct.kp2000_device*, %struct.kp2000_device** %2, align 8
  %6 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_FPGA_SSID, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readq(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = and i64 %12, -9223372036854775808
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.kp2000_device*, %struct.kp2000_device** %2, align 8
  %18 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %55

19:                                               ; preds = %1
  %20 = load i32, i32* @jiffies, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %42, %19
  %26 = load %struct.kp2000_device*, %struct.kp2000_device** %2, align 8
  %27 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG_FPGA_SSID, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readq(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, -9223372036854775808
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.kp2000_device*, %struct.kp2000_device** %2, align 8
  %39 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %55

40:                                               ; preds = %25
  %41 = call i32 (...) @cpu_relax()
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* @jiffies, align 4
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @time_before(i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %25, label %47

47:                                               ; preds = %42
  %48 = load %struct.kp2000_device*, %struct.kp2000_device** %2, align 8
  %49 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_notice(i32* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.kp2000_device*, %struct.kp2000_device** %2, align 8
  %54 = getelementptr inbounds %struct.kp2000_device, %struct.kp2000_device* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %36, %15
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
