; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_set_i2c_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1_5.c_set_i2c_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_i2c_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_i2c_line(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 38, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = trunc i32 %7 to i8
  %9 = call i32 @outb(i8 zeroext %8, i32 964)
  %10 = call zeroext i8 @inb(i32 965)
  store i8 %10, i8* %5, align 1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %15, 32
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  br label %23

18:                                               ; preds = %2
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, -33
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %5, align 1
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, 16
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  br label %36

31:                                               ; preds = %23
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, -17
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, 1
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i32, i32* %6, align 4
  %42 = trunc i32 %41 to i8
  %43 = call i32 @outb(i8 zeroext %42, i32 964)
  %44 = load i8, i8* %5, align 1
  %45 = call i32 @outb(i8 zeroext %44, i32 965)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
