; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_reg2hr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c372.c_rs5c_reg2hr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs5c372 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs5c372*, i32)* @rs5c_reg2hr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_reg2hr(%struct.rs5c372* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rs5c372*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rs5c372* %0, %struct.rs5c372** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rs5c372*, %struct.rs5c372** %4, align 8
  %8 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 63
  %14 = call i32 @bcd2bin(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 31
  %18 = call i32 @bcd2bin(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 12
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 12
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
