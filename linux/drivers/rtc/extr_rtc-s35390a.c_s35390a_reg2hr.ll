; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_reg2hr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_reg2hr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*, i8)* @s35390a_reg2hr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_reg2hr(%struct.s35390a* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s35390a*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.s35390a* %0, %struct.s35390a** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.s35390a*, %struct.s35390a** %4, align 8
  %8 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8, i8* %5, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, 63
  %15 = trunc i32 %14 to i8
  %16 = call i32 @bcd2bin(i8 signext %15)
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 63
  %21 = trunc i32 %20 to i8
  %22 = call i32 @bcd2bin(i8 signext %21)
  store i32 %22, i32* %6, align 4
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 12
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @bcd2bin(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
