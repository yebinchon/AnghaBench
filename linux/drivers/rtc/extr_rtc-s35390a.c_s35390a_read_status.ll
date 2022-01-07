; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { i32 }

@S35390A_CMD_STATUS1 = common dso_local global i32 0, align 4
@S35390A_FLAG_POC = common dso_local global i8 0, align 1
@S35390A_FLAG_BLD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*, i8*)* @s35390a_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_read_status(%struct.s35390a* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s35390a*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.s35390a* %0, %struct.s35390a** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %8 = load i32, i32* @S35390A_CMD_STATUS1, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @s35390a_get_reg(%struct.s35390a* %7, i32 %8, i8* %9, i32 1)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @S35390A_FLAG_POC, align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @msleep(i32 500)
  store i32 1, i32* %3, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @S35390A_FLAG_BLD, align 1
  %30 = sext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %36

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %23, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @s35390a_get_reg(%struct.s35390a*, i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
