; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_delete_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_delete_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdw_slave = type { i32, i64, %struct.sdw_bus* }
%struct.sdw_bus = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @sdw_delete_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_delete_slave(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sdw_slave*, align 8
  %6 = alloca %struct.sdw_bus*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sdw_slave* @dev_to_sdw_dev(%struct.device* %7)
  store %struct.sdw_slave* %8, %struct.sdw_slave** %5, align 8
  %9 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %10 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %9, i32 0, i32 2
  %11 = load %struct.sdw_bus*, %struct.sdw_bus** %10, align 8
  store %struct.sdw_bus* %11, %struct.sdw_bus** %6, align 8
  %12 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %13 = call i32 @sdw_slave_debugfs_exit(%struct.sdw_slave* %12)
  %14 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %15 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %18 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %23 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %26 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clear_bit(i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.sdw_slave*, %struct.sdw_slave** %5, align 8
  %31 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %30, i32 0, i32 0
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.sdw_bus*, %struct.sdw_bus** %6, align 8
  %34 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 @device_unregister(%struct.device* %36)
  ret i32 0
}

declare dso_local %struct.sdw_slave* @dev_to_sdw_dev(%struct.device*) #1

declare dso_local i32 @sdw_slave_debugfs_exit(%struct.sdw_slave*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
