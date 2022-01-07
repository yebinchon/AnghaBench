; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_amilo-rfkill.c_amilo_m7440_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_amilo-rfkill.c_amilo_m7440_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M7440_RADIO_OFF1 = common dso_local global i64 0, align 8
@M7440_RADIO_ON1 = common dso_local global i64 0, align 8
@M7440_RADIO_OFF2 = common dso_local global i64 0, align 8
@M7440_RADIO_ON2 = common dso_local global i64 0, align 8
@M7440_PORT1 = common dso_local global i32 0, align 4
@M7440_PORT2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @amilo_m7440_rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amilo_m7440_rfkill_set_block(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @M7440_RADIO_OFF1, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @M7440_RADIO_ON1, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @M7440_RADIO_OFF2, align 8
  br label %22

20:                                               ; preds = %14
  %21 = load i64, i64* @M7440_RADIO_ON2, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @M7440_PORT1, align 4
  %26 = call i32 @outb(i64 %24, i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @M7440_PORT2, align 4
  %29 = call i32 @outb(i64 %27, i32 %28)
  %30 = load i32, i32* @M7440_PORT1, align 4
  %31 = call i64 @inb(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @M7440_PORT2, align 4
  %36 = call i64 @inb(i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %22
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i64 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
