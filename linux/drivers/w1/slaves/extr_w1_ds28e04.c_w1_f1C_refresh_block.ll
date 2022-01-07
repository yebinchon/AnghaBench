; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_w1_f1C_refresh_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_w1_f1C_refresh_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }
%struct.w1_f1C_data = type { i32, i32* }

@W1_PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@W1_F1C_READ_EEPROM = common dso_local global i32 0, align 4
@CRC16_INIT = common dso_local global i32 0, align 4
@CRC16_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, %struct.w1_f1C_data*, i32)* @w1_f1C_refresh_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f1C_refresh_block(%struct.w1_slave* %0, %struct.w1_f1C_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca %struct.w1_f1C_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %5, align 8
  store %struct.w1_f1C_data* %1, %struct.w1_f1C_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @W1_PAGE_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %6, align 8
  %14 = getelementptr inbounds %struct.w1_f1C_data, %struct.w1_f1C_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

21:                                               ; preds = %3
  %22 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %23 = call i64 @w1_reset_select_slave(%struct.w1_slave* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %6, align 8
  %27 = getelementptr inbounds %struct.w1_f1C_data, %struct.w1_f1C_data* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %21
  %31 = load i32, i32* @W1_F1C_READ_EEPROM, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 8
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %40 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %43 = call i32 @w1_write_block(i32 %41, i32* %42, i32 3)
  %44 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %45 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %6, align 8
  %48 = getelementptr inbounds %struct.w1_f1C_data, %struct.w1_f1C_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* @W1_PAGE_SIZE, align 4
  %54 = call i32 @w1_read_block(i32 %46, i32* %52, i32 %53)
  %55 = load i32, i32* @CRC16_INIT, align 4
  %56 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %6, align 8
  %57 = getelementptr inbounds %struct.w1_f1C_data, %struct.w1_f1C_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* @W1_PAGE_SIZE, align 4
  %63 = call i64 @crc16(i32 %55, i32* %61, i32 %62)
  %64 = load i64, i64* @CRC16_VALID, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %30
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 1, %67
  %69 = load %struct.w1_f1C_data*, %struct.w1_f1C_data** %6, align 8
  %70 = getelementptr inbounds %struct.w1_f1C_data, %struct.w1_f1C_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %30
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %25, %20
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(i32, i32*, i32) #1

declare dso_local i32 @w1_read_block(i32, i32*, i32) #1

declare dso_local i64 @crc16(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
