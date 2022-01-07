; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi568.c_tsi568_route_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi568.c_tsi568_route_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@SPBC_ROUTE_CFG_DESTID = common dso_local global i32 0, align 4
@SPBC_ROUTE_CFG_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i64, i64, i64, i64)* @tsi568_route_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi568_route_add_entry(%struct.rio_mport* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %6
  %17 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @SPBC_ROUTE_CFG_DESTID, align 4
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %17, i64 %18, i64 %19, i32 %20, i64 %21)
  %23 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @SPBC_ROUTE_CFG_PORT, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %23, i64 %24, i64 %25, i32 %26, i64 %27)
  br label %44

29:                                               ; preds = %6
  %30 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @SPP_ROUTE_CFG_DESTID(i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %30, i64 %31, i64 %32, i32 %34, i64 %35)
  %37 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @SPP_ROUTE_CFG_PORT(i64 %40)
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %37, i64 %38, i64 %39, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %29, %16
  %45 = call i32 @udelay(i32 10)
  ret i32 0
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i64, i32, i64) #1

declare dso_local i32 @SPP_ROUTE_CFG_DESTID(i64) #1

declare dso_local i32 @SPP_ROUTE_CFG_PORT(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
