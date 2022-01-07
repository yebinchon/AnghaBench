; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_disable_test_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_disable_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { i32 }

@S35390A_CMD_STATUS2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S35390A_FLAG_TEST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*)* @s35390a_disable_test_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_disable_test_mode(%struct.s35390a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s35390a*, align 8
  %4 = alloca [1 x i8], align 1
  store %struct.s35390a* %0, %struct.s35390a** %3, align 8
  %5 = load %struct.s35390a*, %struct.s35390a** %3, align 8
  %6 = load i32, i32* @S35390A_CMD_STATUS2, align 4
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %8 = call i64 @s35390a_get_reg(%struct.s35390a* %5, i32 %6, i8* %7, i32 1)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @S35390A_FLAG_TEST, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %35

22:                                               ; preds = %13
  %23 = load i8, i8* @S35390A_FLAG_TEST, align 1
  %24 = sext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, %25
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  %31 = load %struct.s35390a*, %struct.s35390a** %3, align 8
  %32 = load i32, i32* @S35390A_CMD_STATUS2, align 4
  %33 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %34 = call i32 @s35390a_set_reg(%struct.s35390a* %31, i32 %32, i8* %33, i32 1)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %21, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @s35390a_get_reg(%struct.s35390a*, i32, i8*, i32) #1

declare dso_local i32 @s35390a_set_reg(%struct.s35390a*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
