; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { i32 }

@S35390A_FLAG_RESET = common dso_local global i32 0, align 4
@S35390A_FLAG_24H = common dso_local global i32 0, align 4
@S35390A_CMD_STATUS1 = common dso_local global i32 0, align 4
@S35390A_FLAG_POC = common dso_local global i32 0, align 4
@S35390A_FLAG_BLD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*)* @s35390a_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_init(%struct.s35390a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s35390a*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s35390a* %0, %struct.s35390a** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* @S35390A_FLAG_RESET, align 4
  %9 = load i32, i32* @S35390A_FLAG_24H, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.s35390a*, %struct.s35390a** %3, align 8
  %12 = load i32, i32* @S35390A_CMD_STATUS1, align 4
  %13 = call i32 @s35390a_set_reg(%struct.s35390a* %11, i32 %12, i32* %4, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %7
  %19 = load %struct.s35390a*, %struct.s35390a** %3, align 8
  %20 = load i32, i32* @S35390A_CMD_STATUS1, align 4
  %21 = call i32 @s35390a_get_reg(%struct.s35390a* %19, i32 %20, i32* %4, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @S35390A_FLAG_POC, align 4
  %29 = load i32, i32* @S35390A_FLAG_BLD, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %34, 5
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %39, %24, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @s35390a_set_reg(%struct.s35390a*, i32, i32*, i32) #1

declare dso_local i32 @s35390a_get_reg(%struct.s35390a*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
