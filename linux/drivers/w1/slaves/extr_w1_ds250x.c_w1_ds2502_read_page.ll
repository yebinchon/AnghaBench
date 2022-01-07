; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_ds2502_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_ds2502_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_4__*, %struct.w1_eprom_data* }
%struct.TYPE_4__ = type { i32 }
%struct.w1_eprom_data = type { i64*, i32 }

@W1_PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@W1_READ_DATA_CRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32)* @w1_ds2502_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2502_read_page(%struct.w1_slave* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w1_slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_eprom_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i64], align 16
  %10 = alloca i64, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %12 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %11, i32 0, i32 1
  %13 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %12, align 8
  store %struct.w1_eprom_data* %13, %struct.w1_eprom_data** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @W1_PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %21 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

26:                                               ; preds = %2
  %27 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %28 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %33 = call i64 @w1_reset_select_slave(%struct.w1_slave* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %94

36:                                               ; preds = %26
  %37 = load i64, i64* @W1_READ_DATA_CRC, align 8
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  store i64 %37, i64* %38, align 16
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  store i64 %45, i64* %46, align 16
  %47 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %48 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %51 = call i32 @w1_write_block(%struct.TYPE_4__* %49, i64* %50, i32 3)
  %52 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %53 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i64 @w1_read_8(%struct.TYPE_4__* %54)
  store i64 %55, i64* %10, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %57 = call i64 @w1_calc_crc8(i64* %56, i32 3)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  br label %94

61:                                               ; preds = %36
  %62 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %63 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %66 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i32, i32* @W1_PAGE_SIZE, align 4
  %72 = call i32 @w1_read_block(%struct.TYPE_4__* %64, i64* %70, i32 %71)
  %73 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %74 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i64 @w1_read_8(%struct.TYPE_4__* %75)
  store i64 %76, i64* %10, align 8
  %77 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %78 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i32, i32* @W1_PAGE_SIZE, align 4
  %84 = call i64 @w1_calc_crc8(i64* %82, i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %61
  br label %94

88:                                               ; preds = %61
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %91 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @set_bit(i32 %89, i32 %92)
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %88, %87, %60, %35
  %95 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %96 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_4__*, i64*, i32) #1

declare dso_local i64 @w1_read_8(%struct.TYPE_4__*) #1

declare dso_local i64 @w1_calc_crc8(i64*, i32) #1

declare dso_local i32 @w1_read_block(%struct.TYPE_4__*, i64*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
