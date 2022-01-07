; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_asb_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_asb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_power = type { i32 }

@ASB_REQ_STOP = common dso_local global i32 0, align 4
@ASB_ACK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_power*, i32)* @bcm2835_asb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_asb_disable(%struct.bcm2835_power* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_power*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm2835_power* %0, %struct.bcm2835_power** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = call i32 (...) @ktime_get_ns()
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ASB_READ(i32 %13)
  %15 = load i32, i32* @ASB_REQ_STOP, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @ASB_WRITE(i32 %12, i32 %16)
  br label %18

18:                                               ; preds = %34, %10
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ASB_READ(i32 %19)
  %21 = load i32, i32* @ASB_ACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = call i32 (...) @cpu_relax()
  %27 = call i32 (...) @ktime_get_ns()
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp sge i32 %29, 1000
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %25
  br label %18

35:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @ASB_WRITE(i32, i32) #1

declare dso_local i32 @ASB_READ(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
