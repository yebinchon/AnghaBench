; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_internal_supports_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_internal_supports_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.spi_controller* }
%struct.spi_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.spi_mem_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @spi_mem_internal_supports_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_mem_internal_supports_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %7 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %8 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  store %struct.spi_controller* %11, %struct.spi_controller** %6, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %18 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.spi_mem*, %struct.spi_mem_op*)**
  %22 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %21, align 8
  %23 = icmp ne i32 (%struct.spi_mem*, %struct.spi_mem_op*)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %26 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.spi_mem*, %struct.spi_mem_op*)**
  %30 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %29, align 8
  %31 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %32 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %33 = call i32 %30(%struct.spi_mem* %31, %struct.spi_mem_op* %32)
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %16, %2
  %35 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %36 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %37 = call i32 @spi_mem_default_supports_op(%struct.spi_mem* %35, %struct.spi_mem_op* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @spi_mem_default_supports_op(%struct.spi_mem*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
