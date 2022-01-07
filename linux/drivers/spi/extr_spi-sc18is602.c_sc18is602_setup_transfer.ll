; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sc18is602.c_sc18is602_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sc18is602.c_sc18is602_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc18is602 = type { i32, i32, i32, i32 }

@SPI_CPHA = common dso_local global i32 0, align 4
@SC18IS602_MODE_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SC18IS602_MODE_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SC18IS602_MODE_LSB_FIRST = common dso_local global i32 0, align 4
@SC18IS602_MODE_CLOCK_DIV_4 = common dso_local global i32 0, align 4
@SC18IS602_MODE_CLOCK_DIV_16 = common dso_local global i32 0, align 4
@SC18IS602_MODE_CLOCK_DIV_64 = common dso_local global i32 0, align 4
@SC18IS602_MODE_CLOCK_DIV_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc18is602*, i32, i32)* @sc18is602_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc18is602_setup_transfer(%struct.sc18is602* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc18is602*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sc18is602* %0, %struct.sc18is602** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SPI_CPHA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @SC18IS602_MODE_CPHA, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SPI_CPOL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @SC18IS602_MODE_CPOL, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SPI_LSB_FIRST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @SC18IS602_MODE_LSB_FIRST, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %39 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i32, i32* @SC18IS602_MODE_CLOCK_DIV_4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %48 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 4
  %51 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %52 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %99

53:                                               ; preds = %36
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %56 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 16
  %59 = icmp sge i32 %54, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* @SC18IS602_MODE_CLOCK_DIV_16, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %65 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 16
  %68 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %69 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %98

70:                                               ; preds = %53
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %73 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 64
  %76 = icmp sge i32 %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i32, i32* @SC18IS602_MODE_CLOCK_DIV_64, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %82 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 64
  %85 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %86 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %97

87:                                               ; preds = %70
  %88 = load i32, i32* @SC18IS602_MODE_CLOCK_DIV_128, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %92 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 128
  %95 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %96 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %87, %77
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98, %43
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %102 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %120

106:                                              ; preds = %99
  %107 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %108 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @i2c_smbus_write_byte_data(i32 %109, i32 240, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %120

116:                                              ; preds = %106
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.sc18is602*, %struct.sc18is602** %5, align 8
  %119 = getelementptr inbounds %struct.sc18is602, %struct.sc18is602* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %114, %105
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
