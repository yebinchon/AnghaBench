; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi568.c_tsi568_route_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi568.c_tsi568_route_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@SPBC_ROUTE_CFG_DESTID = common dso_local global i32 0, align 4
@SPBC_ROUTE_CFG_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i32, i64, i64, i32*)* @tsi568_route_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi568_route_get_entry(%struct.rio_mport* %0, i64 %1, i32 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %6
  %19 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SPBC_ROUTE_CFG_DESTID, align 4
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %19, i64 %20, i32 %21, i32 %22, i64 %23)
  %25 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SPBC_ROUTE_CFG_PORT, align 4
  %29 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %25, i64 %26, i32 %27, i32 %28, i32* %14)
  br label %44

30:                                               ; preds = %6
  %31 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @SPP_ROUTE_CFG_DESTID(i64 %34)
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %31, i64 %32, i32 %33, i32 %35, i64 %36)
  %38 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @SPP_ROUTE_CFG_PORT(i64 %41)
  %43 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %38, i64 %39, i32 %40, i32 %42, i32* %14)
  br label %44

44:                                               ; preds = %30, %18
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 15
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %13, align 4
  ret i32 %52
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i32, i32, i64) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i64, i32, i32, i32*) #1

declare dso_local i32 @SPP_ROUTE_CFG_DESTID(i64) #1

declare dso_local i32 @SPP_ROUTE_CFG_PORT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
