; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_access_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_access_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.spi_controller* }
%struct.spi_controller = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to power device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*)* @spi_mem_access_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_mem_access_start(%struct.spi_mem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  %6 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %7 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  store %struct.spi_controller* %10, %struct.spi_controller** %4, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %12 = call i32 @spi_flush_queue(%struct.spi_controller* %11)
  %13 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %19 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %27 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 2
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %37 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @spi_flush_queue(%struct.spi_controller*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
