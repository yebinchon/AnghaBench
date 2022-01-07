; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_io_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_io_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 (%struct.TYPE_3__*, %struct.spi_device*, %struct.spi_transfer*)* }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.spi_qup = type { i32, i32, i32, i32, i32, i32 }

@SPI_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"too big size for loopback %d > %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"fail to set frequency %d\00", align 1
@QUP_IO_M_MODE_FIFO = common dso_local global i32 0, align 4
@QUP_IO_M_MODE_BAM = common dso_local global i32 0, align 4
@QUP_IO_M_MODE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_qup_io_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_io_prep(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_qup*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call %struct.spi_qup* @spi_master_get_devdata(%struct.TYPE_3__* %10)
  store %struct.spi_qup* %11, %struct.spi_qup** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SPI_LOOP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %23 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %28 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %34 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %126

39:                                               ; preds = %18, %2
  %40 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %41 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_set_rate(i32 %42, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %51 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %126

59:                                               ; preds = %39
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DIV_ROUND_UP(i32 %62, i32 8)
  %64 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %65 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %70 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %68, %71
  %73 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %74 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %76 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %80 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = icmp ule i64 %78, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %59
  %86 = load i32, i32* @QUP_IO_M_MODE_FIFO, align 4
  %87 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %88 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %125

89:                                               ; preds = %59
  %90 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64 (%struct.TYPE_3__*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.TYPE_3__*, %struct.spi_device*, %struct.spi_transfer*)** %93, align 8
  %95 = icmp ne i64 (%struct.TYPE_3__*, %struct.spi_device*, %struct.spi_transfer*)* %94, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %89
  %97 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64 (%struct.TYPE_3__*, %struct.spi_device*, %struct.spi_transfer*)*, i64 (%struct.TYPE_3__*, %struct.spi_device*, %struct.spi_transfer*)** %100, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %106 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %107 = call i64 %101(%struct.TYPE_3__* %104, %struct.spi_device* %105, %struct.spi_transfer* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %96
  %110 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %111 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @QUP_IO_M_MODE_BAM, align 4
  %118 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %119 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %124

120:                                              ; preds = %109, %96, %89
  %121 = load i32, i32* @QUP_IO_M_MODE_BLOCK, align 4
  %122 = load %struct.spi_qup*, %struct.spi_qup** %6, align 8
  %123 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %85
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %49, %26
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.spi_qup* @spi_master_get_devdata(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
