; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i32, i32*, i8**, i32, i32 }

@DIO0 = common dso_local global i64 0, align 8
@DIO_RSSI_DIO0 = common dso_local global i8* null, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i64 0, align 8
@FIFO_THRESHOLD = common dso_local global i64 0, align 8
@DIO1 = common dso_local global i64 0, align 8
@DIO_FIFO_LEVEL = common dso_local global i8* null, align 8
@receive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pi433_device*)* @pi433_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi433_start_rx(%struct.pi433_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pi433_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pi433_device* %0, %struct.pi433_device** %3, align 8
  %5 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %6 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

10:                                               ; preds = %1
  %11 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %12 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %13 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %12, i32 0, i32 3
  %14 = call i32 @rf69_set_rx_cfg(%struct.pi433_device* %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %92

19:                                               ; preds = %10
  %20 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %21 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @DIO0, align 8
  %24 = load i8*, i8** @DIO_RSSI_DIO0, align 8
  %25 = call i32 @rf69_set_dio_mapping(i32 %22, i64 %23, i8* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %92

30:                                               ; preds = %19
  %31 = load i8*, i8** @DIO_RSSI_DIO0, align 8
  %32 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %33 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = load i64, i64* @DIO0, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  store i8* %31, i8** %36, align 8
  %37 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %38 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @DIO0, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %44 = call i32 @irq_set_irq_type(i32 %42, i32 %43)
  %45 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %46 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @FIFO_SIZE, align 8
  %49 = load i64, i64* @FIFO_THRESHOLD, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i32 @rf69_set_fifo_threshold(i32 %47, i64 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %30
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %92

56:                                               ; preds = %30
  %57 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %58 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @DIO1, align 8
  %61 = load i8*, i8** @DIO_FIFO_LEVEL, align 8
  %62 = call i32 @rf69_set_dio_mapping(i32 %59, i64 %60, i8* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %92

67:                                               ; preds = %56
  %68 = load i8*, i8** @DIO_FIFO_LEVEL, align 8
  %69 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %70 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = load i64, i64* @DIO1, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  store i8* %68, i8** %73, align 8
  %74 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %75 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @DIO1, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %81 = call i32 @irq_set_irq_type(i32 %79, i32 %80)
  %82 = load %struct.pi433_device*, %struct.pi433_device** %3, align 8
  %83 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @receive, align 4
  %86 = call i32 @rf69_set_mode(i32 %84, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %67
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %89, %65, %54, %28, %17, %9
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @rf69_set_rx_cfg(%struct.pi433_device*, i32*) #1

declare dso_local i32 @rf69_set_dio_mapping(i32, i64, i8*) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @rf69_set_fifo_threshold(i32, i64) #1

declare dso_local i32 @rf69_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
