; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd520_probe_fifo_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd520_probe_fifo_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@AREF_GROUND = common dso_local global i32 0, align 4
@rtd520_probe_fifo_depth.limit = internal constant i32 8192, align 4
@LAS0_ADC_FIFO_CLEAR = common dso_local global i64 0, align 8
@LAS0_ADC_CONVERSION = common dso_local global i64 0, align 8
@LAS0_ADC = common dso_local global i64 0, align 8
@FS_ADC_HEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to probe fifo size.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"unexpected fifo size of %i, expected 1024 or 8192.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @rtd520_probe_fifo_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtd520_probe_fifo_depth(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %8 = load i32, i32* @AREF_GROUND, align 4
  %9 = call i32 @CR_PACK(i32 0, i32 0, i32 %8)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LAS0_ADC_FIFO_CLEAR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  %16 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %17 = call i32 @rtd_load_channelgain_list(%struct.comedi_device* %16, i32 1, i32* %4)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LAS0_ADC_CONVERSION, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %49, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %25, 8192
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  %28 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LAS0_ADC, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writew(i32 0, i64 %32)
  %34 = call i32 @usleep_range(i32 1, i32 1000)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LAS0_ADC, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FS_ADC_HEMPTY, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load i32, i32* %5, align 4
  %47 = mul i32 2, %46
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %24

52:                                               ; preds = %45, %24
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 8192
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @dev_info(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %84

62:                                               ; preds = %52
  %63 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LAS0_ADC_FIFO_CLEAR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 1024
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 8192
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, ...) @dev_info(i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %84

82:                                               ; preds = %71, %62
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %74, %55
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @CR_PACK(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rtd_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
