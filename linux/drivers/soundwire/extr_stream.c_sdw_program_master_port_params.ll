; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_program_master_port_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_program_master_port_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.sdw_bus*, i32*, i32)*, i32 (%struct.sdw_bus*, i32*, i32)* }
%struct.sdw_port_runtime = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_port_runtime*)* @sdw_program_master_port_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_program_master_port_params(%struct.sdw_bus* %0, %struct.sdw_port_runtime* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca %struct.sdw_port_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %4, align 8
  store %struct.sdw_port_runtime* %1, %struct.sdw_port_runtime** %5, align 8
  %7 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %8 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.sdw_bus*, i32*, i32)*, i32 (%struct.sdw_bus*, i32*, i32)** %10, align 8
  %12 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %13 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %13, i32 0, i32 1
  %15 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %16 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %11(%struct.sdw_bus* %12, i32* %14, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %26 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (%struct.sdw_bus*, i32*, i32)*, i32 (%struct.sdw_bus*, i32*, i32)** %28, align 8
  %30 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %31 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %31, i32 0, i32 0
  %33 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %34 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %29(%struct.sdw_bus* %30, i32* %32, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
