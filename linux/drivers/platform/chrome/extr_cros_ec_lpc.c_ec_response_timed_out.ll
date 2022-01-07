; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_ec_response_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lpc.c_ec_response_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32*)* }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@cros_ec_lpc_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EC_LPC_ADDR_HOST_CMD = common dso_local global i32 0, align 4
@EC_LPC_STATUS_BUSY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ec_response_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_response_timed_out() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @jiffies, align 8
  %5 = load i64, i64* @HZ, align 8
  %6 = add i64 %4, %5
  store i64 %6, i64* %2, align 8
  %7 = call i32 @usleep_range(i32 200, i32 300)
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cros_ec_lpc_ops, i32 0, i32 0), align 8
  %10 = load i32, i32* @EC_LPC_ADDR_HOST_CMD, align 4
  %11 = call i32 %9(i32 %10, i32 1, i32* %3)
  %12 = load i32, i32* @EC_LPC_STATUS_BUSY_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %24

16:                                               ; preds = %8
  %17 = call i32 @usleep_range(i32 100, i32 200)
  br label %18

18:                                               ; preds = %16
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i64 @time_before(i64 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %8, label %23

23:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
