; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_extract_slave_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_extract_slave_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32 }
%struct.sdw_slave_id = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"SDW Slave Addr: %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"SDW Slave class_id %x, part_id %x, mfg_id %x, unique_id %x, version %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdw_extract_slave_id(%struct.sdw_bus* %0, i32 %1, %struct.sdw_slave_id* %2) #0 {
  %4 = alloca %struct.sdw_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdw_slave_id*, align 8
  store %struct.sdw_bus* %0, %struct.sdw_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sdw_slave_id* %2, %struct.sdw_slave_id** %6, align 8
  %7 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %8 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 44
  %14 = call i32 @GENMASK(i32 3, i32 0)
  %15 = and i32 %13, %14
  %16 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %17 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 40
  %20 = call i32 @GENMASK(i32 3, i32 0)
  %21 = and i32 %19, %20
  %22 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %23 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 24
  %26 = call i32 @GENMASK(i32 15, i32 0)
  %27 = and i32 %25, %26
  %28 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %29 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = call i32 @GENMASK(i32 15, i32 0)
  %33 = and i32 %31, %32
  %34 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %35 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @GENMASK(i32 7, i32 0)
  %38 = and i32 %36, %37
  %39 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %40 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sdw_bus*, %struct.sdw_bus** %4, align 8
  %42 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %45 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %48 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %51 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %54 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sdw_slave_id*, %struct.sdw_slave_id** %6, align 8
  %57 = getelementptr inbounds %struct.sdw_slave_id, %struct.sdw_slave_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %43, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
