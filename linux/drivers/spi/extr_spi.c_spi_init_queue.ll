; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32, i64, i32, i32, i32, i32 }

@kthread_worker_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to create message pump task\0A\00", align 1
@spi_pump_messages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @spi_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_init_queue(%struct.spi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_controller*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  %4 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %5 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %7 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %6, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %9 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %8, i32 0, i32 6
  %10 = call i32 @kthread_init_worker(i32* %9)
  %11 = load i32, i32* @kthread_worker_fn, align 4
  %12 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 6
  %14 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 5
  %16 = call i32 @dev_name(i32* %15)
  %17 = call i32 @kthread_run(i32 %11, i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %19 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %21 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %27 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 5
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %30 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %1
  %34 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %35 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %34, i32 0, i32 3
  %36 = load i32, i32* @spi_pump_messages, align 4
  %37 = call i32 @kthread_init_work(i32* %35, i32 %36)
  %38 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %39 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %44 = call i32 @spi_set_thread_rt(%struct.spi_controller* %43)
  br label %45

45:                                               ; preds = %42, %33
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @kthread_init_worker(i32*) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local i32 @spi_set_thread_rt(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
