; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_controller_initialize_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_controller_initialize_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32, i64, i32 }

@spi_queued_transfer = common dso_local global i32 0, align 4
@spi_transfer_one_message = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"problem initializing queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"problem starting queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @spi_controller_initialize_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_controller_initialize_queue(%struct.spi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  %5 = load i32, i32* @spi_queued_transfer, align 4
  %6 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %7 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %9 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @spi_transfer_one_message, align 8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %18 = call i32 @spi_init_queue(%struct.spi_controller* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %23 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %22, i32 0, i32 1
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %27 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %29 = call i32 @spi_start_queue(%struct.spi_controller* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 1
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %42

37:                                               ; preds = %32
  %38 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %39 = call i32 @spi_destroy_queue(%struct.spi_controller* %38)
  br label %40

40:                                               ; preds = %37, %21
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @spi_init_queue(%struct.spi_controller*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spi_start_queue(%struct.spi_controller*) #1

declare dso_local i32 @spi_destroy_queue(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
