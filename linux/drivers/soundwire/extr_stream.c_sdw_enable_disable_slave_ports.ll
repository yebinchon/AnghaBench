; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_enable_disable_slave_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_stream.c_sdw_enable_disable_slave_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sdw_slave_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sdw_port_runtime = type { i32, i32, %struct.sdw_transport_params }
%struct.sdw_transport_params = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Slave chn_en reg write failed:%d port:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_slave_runtime*, %struct.sdw_port_runtime*, i32)* @sdw_enable_disable_slave_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_enable_disable_slave_ports(%struct.sdw_bus* %0, %struct.sdw_slave_runtime* %1, %struct.sdw_port_runtime* %2, i32 %3) #0 {
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_slave_runtime*, align 8
  %7 = alloca %struct.sdw_port_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdw_transport_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_slave_runtime* %1, %struct.sdw_slave_runtime** %6, align 8
  store %struct.sdw_port_runtime* %2, %struct.sdw_port_runtime** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %7, align 8
  %13 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %12, i32 0, i32 2
  store %struct.sdw_transport_params* %13, %struct.sdw_transport_params** %9, align 8
  %14 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %15 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %7, align 8
  %21 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SDW_DPN_CHANNELEN_B1(i32 %22)
  store i32 %23, i32* %10, align 4
  br label %29

24:                                               ; preds = %4
  %25 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %7, align 8
  %26 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SDW_DPN_CHANNELEN_B0(i32 %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %34 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.sdw_port_runtime*, %struct.sdw_port_runtime** %7, align 8
  %38 = getelementptr inbounds %struct.sdw_port_runtime, %struct.sdw_port_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sdw_update(%struct.TYPE_4__* %35, i32 %36, i32 255, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %43 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @sdw_update(%struct.TYPE_4__* %44, i32 %45, i32 255, i32 0)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %41, %32
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.sdw_slave_runtime*, %struct.sdw_slave_runtime** %6, align 8
  %52 = getelementptr inbounds %struct.sdw_slave_runtime, %struct.sdw_slave_runtime* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.sdw_transport_params*, %struct.sdw_transport_params** %9, align 8
  %57 = getelementptr inbounds %struct.sdw_transport_params, %struct.sdw_transport_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @SDW_DPN_CHANNELEN_B1(i32) #1

declare dso_local i32 @SDW_DPN_CHANNELEN_B0(i32) #1

declare dso_local i32 @sdw_update(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
