; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_hw_i2c_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_hw_i2c_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_SLAVE_ADDRESS = common dso_local global i64 0, align 8
@I2C_RESET = common dso_local global i64 0, align 8
@MAX_HWI2C_FIFO = common dso_local global i32 0, align 4
@I2C_BYTE_COUNT = common dso_local global i64 0, align 8
@I2C_DATA0 = common dso_local global i64 0, align 8
@I2C_CTRL = common dso_local global i64 0, align 8
@I2C_CTRL_CTRL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32, i8*)* @hw_i2c_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_i2c_write_data(i8 zeroext %0, i32 %1, i8* %2) #0 {
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
  %13 = and i32 %12, -2
  %14 = trunc i32 %13 to i8
  %15 = call i32 @poke32(i64 %10, i8 zeroext %14)
  br label %16

16:                                               ; preds = %76, %3
  %17 = load i64, i64* @I2C_RESET, align 8
  %18 = call i32 @poke32(i64 %17, i8 zeroext 0)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_HWI2C_FIFO, align 4
  %21 = icmp ult i32 %19, %20
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
  store i8 0, i8* %8, align 1
  br label %34

34:                                               ; preds = %49, %30
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load i64, i64* @I2C_DATA0, align 8
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  %47 = load i8, i8* %45, align 1
  %48 = call i32 @poke32(i64 %44, i8 zeroext %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i8, i8* %8, align 1
  %51 = add i8 %50, 1
  store i8 %51, i8* %8, align 1
  br label %34

52:                                               ; preds = %34
  %53 = load i64, i64* @I2C_CTRL, align 8
  %54 = load i64, i64* @I2C_CTRL, align 8
  %55 = call zeroext i8 @peek32(i64 %54)
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @I2C_CTRL_CTRL, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = trunc i32 %59 to i8
  %61 = call i32 @poke32(i64 %53, i8 zeroext %60)
  %62 = call i64 (...) @hw_i2c_wait_tx_done()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %79

65:                                               ; preds = %52
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %5, align 4
  %70 = sub i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %9, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %5, align 4
  %78 = icmp ugt i32 %77, 0
  br i1 %78, label %16, label %79

79:                                               ; preds = %76, %64
  %80 = load i32, i32* %9, align 4
  ret i32 %80
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
