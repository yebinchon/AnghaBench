; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_compare_devid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_compare_devid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_slave = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.sdw_slave_id = type { i64, i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_slave*, %struct.sdw_slave_id*)* @sdw_compare_devid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdw_compare_devid(%struct.sdw_slave* %0, %struct.sdw_slave_id* byval(%struct.sdw_slave_id) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdw_slave*, align 8
  store %struct.sdw_slave* %0, %struct.sdw_slave** %4, align 8
  %5 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %6 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  %13 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %14 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %1, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %22 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %1, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.sdw_slave*, %struct.sdw_slave** %4, align 8
  %30 = getelementptr inbounds %struct.sdw_slave, %struct.sdw_slave* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %1, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %20, %12, %2
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
