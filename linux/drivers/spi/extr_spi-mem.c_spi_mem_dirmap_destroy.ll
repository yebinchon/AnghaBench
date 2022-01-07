; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_dirmap_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_dirmap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_dirmap_desc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.spi_controller* }
%struct.spi_controller = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.spi_mem_dirmap_desc*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_mem_dirmap_destroy(%struct.spi_mem_dirmap_desc* %0) #0 {
  %2 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  store %struct.spi_mem_dirmap_desc* %0, %struct.spi_mem_dirmap_desc** %2, align 8
  %4 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %2, align 8
  %5 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  store %struct.spi_controller* %10, %struct.spi_controller** %3, align 8
  %11 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %2, align 8
  %12 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %1
  %16 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %17 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.spi_mem_dirmap_desc*)*, i32 (%struct.spi_mem_dirmap_desc*)** %24, align 8
  %26 = icmp ne i32 (%struct.spi_mem_dirmap_desc*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %29 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.spi_mem_dirmap_desc*)*, i32 (%struct.spi_mem_dirmap_desc*)** %31, align 8
  %33 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %2, align 8
  %34 = call i32 %32(%struct.spi_mem_dirmap_desc* %33)
  br label %35

35:                                               ; preds = %27, %20, %15, %1
  %36 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %2, align 8
  %37 = call i32 @kfree(%struct.spi_mem_dirmap_desc* %36)
  ret void
}

declare dso_local i32 @kfree(%struct.spi_mem_dirmap_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
