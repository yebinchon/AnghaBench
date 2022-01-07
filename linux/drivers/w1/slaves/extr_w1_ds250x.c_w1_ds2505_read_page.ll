; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_ds2505_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds250x.c_w1_ds2505_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { %struct.TYPE_3__*, %struct.w1_eprom_data* }
%struct.TYPE_3__ = type { i32 }
%struct.w1_eprom_data = type { i32*, i32 }

@EIO = common dso_local global i32 0, align 4
@W1_PAGE_SIZE = common dso_local global i32 0, align 4
@W1_EXT_READ_MEMORY = common dso_local global i32 0, align 4
@CRC16_INIT = common dso_local global i64 0, align 8
@CRC16_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32)* @w1_ds2505_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2505_read_page(%struct.w1_slave* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w1_slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_eprom_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %15 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %14, i32 0, i32 1
  %16 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %15, align 8
  store %struct.w1_eprom_data* %16, %struct.w1_eprom_data** %6, align 8
  store i32 16, i32* %7, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %21 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %129

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @W1_PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* %8, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %31 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  br label %35

35:                                               ; preds = %78, %26
  %36 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %37 = call i64 @w1_reset_select_slave(%struct.w1_slave* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %122

40:                                               ; preds = %35
  %41 = load i32, i32* @W1_EXT_READ_MEMORY, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 8
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %50 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %53 = call i32 @w1_write_block(%struct.TYPE_3__* %51, i32* %52, i32 3)
  %54 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %55 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = call i32 @w1_read_block(%struct.TYPE_3__* %56, i32* %58, i32 3)
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i64, i64* @CRC16_INIT, align 8
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %64 = call i64 @crc16(i64 %62, i32* %63, i32 6)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @CRC16_VALID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %40
  br label %122

69:                                               ; preds = %40
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 255
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %122

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = xor i32 %79, 255
  %81 = load i32, i32* @W1_PAGE_SIZE, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  br label %35

83:                                               ; preds = %69
  %84 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %85 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %88 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* @W1_PAGE_SIZE, align 4
  %94 = call i32 @w1_read_block(%struct.TYPE_3__* %86, i32* %92, i32 %93)
  %95 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %96 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %99 = call i32 @w1_read_block(%struct.TYPE_3__* %97, i32* %98, i32 2)
  %100 = load i64, i64* @CRC16_INIT, align 8
  %101 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %102 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* @W1_PAGE_SIZE, align 4
  %108 = call i64 @crc16(i64 %100, i32* %106, i32 %107)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %111 = call i64 @crc16(i64 %109, i32* %110, i32 2)
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* @CRC16_VALID, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %83
  br label %122

116:                                              ; preds = %83
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.w1_eprom_data*, %struct.w1_eprom_data** %6, align 8
  %119 = getelementptr inbounds %struct.w1_eprom_data, %struct.w1_eprom_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @set_bit(i32 %117, i32 %120)
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %116, %115, %77, %68, %39
  %123 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %124 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %25
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @w1_read_block(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i64 @crc16(i64, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
