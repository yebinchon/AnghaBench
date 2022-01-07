; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_enter_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_enter_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"8250_fintek\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EXIT_KEY = common dso_local global i32 0, align 4
@ADDR_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @fintek_8250_enter_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fintek_8250_enter_key(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @request_muxed_region(i64 %6, i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @EXIT_KEY, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ADDR_PORT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 %13, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ADDR_PORT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %18, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @ADDR_PORT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 %23, i64 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %12, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @request_muxed_region(i64, i32, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
