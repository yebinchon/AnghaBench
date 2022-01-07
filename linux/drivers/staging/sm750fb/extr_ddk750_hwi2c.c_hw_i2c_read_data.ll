; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_hw_i2c_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_hw_i2c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_SLAVE_ADDRESS = common dso_local global i64 0, align 8
@I2C_RESET = common dso_local global i64 0, align 8
@MAX_HWI2C_FIFO = common dso_local global i32 0, align 4
@I2C_BYTE_COUNT = common dso_local global i64 0, align 8
@I2C_CTRL = common dso_local global i64 0, align 8
@I2C_CTRL_CTRL = common dso_local global i8 0, align 1
@I2C_DATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32, i8*)* @hw_i2c_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_i2c_read_data(i8 zeroext %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @I2C_SLAVE_ADDRESS, align 8
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %12, 1
  %14 = trunc i32 %13 to i8
  %15 = call i32 @poke32(i64 %10, i8 zeroext %14)
  br label %16

16:                                               ; preds = %75, %3
  %17 = load i64, i64* @I2C_RESET, align 8
  %18 = call i32 @poke32(i64 %17, i8 zeroext 0)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_HWI2C_FIFO, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 %23, 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @MAX_HWI2C_FIFO, align 4
  %28 = sub i32 %27, 1
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i64, i64* @I2C_BYTE_COUNT, align 8
  %32 = load i8, i8* %7, align 1
  %33 = call i32 @poke32(i64 %31, i8 zeroext %32)
  %34 = load i64, i64* @I2C_CTRL, align 8
  %35 = load i64, i64* @I2C_CTRL, align 8
  %36 = call zeroext i8 @peek32(i64 %35)
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @I2C_CTRL_CTRL, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = call i32 @poke32(i64 %34, i8 zeroext %41)
  %43 = call i64 (...) @hw_i2c_wait_tx_done()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %78

46:                                               ; preds = %30
  store i8 0, i8* %8, align 1
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i64, i64* @I2C_DATA0, align 8
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = call zeroext i8 @peek32(i64 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %53
  %62 = load i8, i8* %8, align 1
  %63 = add i8 %62, 1
  store i8 %63, i8* %8, align 1
  br label %47

64:                                               ; preds = %47
  %65 = load i8, i8* %7, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %5, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i8, i8* %7, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %5, align 4
  %77 = icmp ugt i32 %76, 0
  br i1 %77, label %16, label %78

78:                                               ; preds = %75, %45
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @poke32(i64, i8 zeroext) #1

declare dso_local zeroext i8 @peek32(i64) #1

declare dso_local i64 @hw_i2c_wait_tx_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
