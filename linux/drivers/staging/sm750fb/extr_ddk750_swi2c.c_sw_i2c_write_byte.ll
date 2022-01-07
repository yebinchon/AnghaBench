; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sw_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sw_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8)* @sw_i2c_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sw_i2c_write_byte(i8 zeroext %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  store i8 %6, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = call i32 @sw_i2c_scl(i32 0)
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @sw_i2c_sda(i32 1)
  br label %20

18:                                               ; preds = %10
  %19 = call i32 @sw_i2c_sda(i32 0)
  br label %20

20:                                               ; preds = %18, %16
  %21 = call i32 (...) @sw_i2c_wait()
  %22 = call i32 @sw_i2c_scl(i32 1)
  %23 = call i32 (...) @sw_i2c_wait()
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 1
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  %32 = call i32 @sw_i2c_scl(i32 0)
  %33 = call i32 @sw_i2c_sda(i32 1)
  %34 = call i32 (...) @sw_i2c_wait()
  %35 = call i32 @sw_i2c_scl(i32 1)
  %36 = call i32 (...) @sw_i2c_wait()
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %49, %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 255
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = call i32 (...) @sw_i2c_read_sda()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %52

44:                                               ; preds = %40
  %45 = call i32 @sw_i2c_scl(i32 0)
  %46 = call i32 (...) @sw_i2c_wait()
  %47 = call i32 @sw_i2c_scl(i32 1)
  %48 = call i32 (...) @sw_i2c_wait()
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %37

52:                                               ; preds = %43, %37
  %53 = call i32 @sw_i2c_scl(i32 0)
  %54 = call i32 @sw_i2c_sda(i32 1)
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i64 0, i64* %2, align 8
  br label %59

58:                                               ; preds = %52
  store i64 -1, i64* %2, align 8
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i32 @sw_i2c_scl(i32) #1

declare dso_local i32 @sw_i2c_sda(i32) #1

declare dso_local i32 @sw_i2c_wait(...) #1

declare dso_local i32 @sw_i2c_read_sda(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
