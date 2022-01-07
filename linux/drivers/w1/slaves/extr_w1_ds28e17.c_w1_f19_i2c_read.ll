; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@W1_F19_READ_DATA_WITH_STOP = common dso_local global i32 0, align 4
@CRC16_INIT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32*, i64)* @w1_f19_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f19_i2c_read(%struct.w1_slave* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 16
  store %struct.w1_slave* %0, %struct.w1_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %74

18:                                               ; preds = %4
  %19 = load i32, i32* @W1_F19_READ_DATA_WITH_STOP, align 4
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 1
  %23 = or i32 %22, 1
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @CRC16_INIT, align 4
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %30 = call i32 @crc16(i32 %28, i32* %29, i32 3)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 255
  %33 = xor i32 %32, -1
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 4
  store i32 %38, i32* %39, align 16
  %40 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %41 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %44 = call i32 @w1_write_block(i32 %42, i32* %43, i32 5)
  %45 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  %48 = call i64 @w1_f19_i2c_busy_wait(%struct.w1_slave* %45, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %18
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %74

53:                                               ; preds = %18
  %54 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %55 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @w1_read_8(i32 %56)
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i32 %57, i32* %58, align 16
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  %62 = call i32 @w1_f19_error(%struct.w1_slave* %60, i32* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %53
  %68 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %69 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @w1_read_block(i32 %70, i32* %71, i64 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %67, %65, %50, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @crc16(i32, i32*, i32) #1

declare dso_local i32 @w1_write_block(i32, i32*, i32) #1

declare dso_local i64 @w1_f19_i2c_busy_wait(%struct.w1_slave*, i64) #1

declare dso_local i32 @w1_read_8(i32) #1

declare dso_local i32 @w1_f19_error(%struct.w1_slave*, i32*) #1

declare dso_local i32 @w1_read_block(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
