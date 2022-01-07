; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_unregister_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_unregister_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32, i32, i64 }

@board_lock = common dso_local global i32 0, align 4
@spi_master_idr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"queue remove failed\0A\00", align 1
@__unregister = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_unregister_controller(%struct.spi_controller* %0) #0 {
  %2 = alloca %struct.spi_controller*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %2, align 8
  %5 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %6 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = call i32 @mutex_lock(i32* @board_lock)
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.spi_controller* @idr_find(i32* @spi_master_idr, i32 %9)
  store %struct.spi_controller* %10, %struct.spi_controller** %3, align 8
  %11 = call i32 @mutex_unlock(i32* @board_lock)
  %12 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %18 = call i64 @spi_destroy_queue(%struct.spi_controller* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %21, i32 0, i32 1
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i32 @mutex_lock(i32* @board_lock)
  %27 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %28 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 2
  %29 = call i32 @list_del(i32* %28)
  %30 = call i32 @mutex_unlock(i32* @board_lock)
  %31 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %32 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %31, i32 0, i32 1
  %33 = load i32, i32* @__unregister, align 4
  %34 = call i32 @device_for_each_child(i32* %32, i32* null, i32 %33)
  %35 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %36 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %35, i32 0, i32 1
  %37 = call i32 @device_unregister(i32* %36)
  %38 = call i32 @mutex_lock(i32* @board_lock)
  %39 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %40 = load %struct.spi_controller*, %struct.spi_controller** %2, align 8
  %41 = icmp eq %struct.spi_controller* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @idr_remove(i32* @spi_master_idr, i32 %43)
  br label %45

45:                                               ; preds = %42, %25
  %46 = call i32 @mutex_unlock(i32* @board_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.spi_controller* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @spi_destroy_queue(%struct.spi_controller*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
