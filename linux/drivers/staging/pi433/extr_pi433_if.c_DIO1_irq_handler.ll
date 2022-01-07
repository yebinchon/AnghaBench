; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_DIO1_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_DIO1_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pi433_device = type { i64*, i32, i8*, i32, i64 }

@DIO1 = common dso_local global i64 0, align 8
@DIO_FIFO_NOT_EMPTY_DIO1 = common dso_local global i64 0, align 8
@FIFO_SIZE = common dso_local global i8* null, align 8
@DIO_FIFO_LEVEL = common dso_local global i64 0, align 8
@FIFO_THRESHOLD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"DIO1 irq: %d bytes free in fifo\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @DIO1_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DIO1_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pi433_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pi433_device*
  store %struct.pi433_device* %7, %struct.pi433_device** %5, align 8
  %8 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %9 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @DIO1, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DIO_FIFO_NOT_EMPTY_DIO1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** @FIFO_SIZE, align 8
  %18 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %19 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %22 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @DIO1, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DIO_FIFO_LEVEL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %20
  %30 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %31 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** @FIFO_THRESHOLD, align 8
  %36 = getelementptr i8, i8* %35, i64 -1
  %37 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %38 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  br label %49

39:                                               ; preds = %29
  %40 = load i8*, i8** @FIFO_SIZE, align 8
  %41 = load i8*, i8** @FIFO_THRESHOLD, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sub nsw i64 %44, 1
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %48 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %39, %34
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50, %16
  %52 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %53 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %56 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load %struct.pi433_device*, %struct.pi433_device** %5, align 8
  %60 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %59, i32 0, i32 1
  %61 = call i32 @wake_up_interruptible(i32* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
