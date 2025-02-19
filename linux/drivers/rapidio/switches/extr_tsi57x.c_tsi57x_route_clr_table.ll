; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi57x.c_tsi57x_route_clr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi57x.c_tsi57x_route_clr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i64 }

@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@SPBC_ROUTE_CFG_DESTID = common dso_local global i32 0, align 4
@SPBC_ROUTE_CFG_PORT = common dso_local global i32 0, align 4
@RIO_INVALID_ROUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i32, i64)* @tsi57x_route_clr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi57x_route_clr_table(%struct.rio_mport* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %12 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 511, i32 255
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %4
  %21 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SPBC_ROUTE_CFG_DESTID, align 4
  %25 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %21, i64 %22, i32 %23, i32 %24, i32 -2147483648)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %37, %20
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SPBC_ROUTE_CFG_PORT, align 4
  %35 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %36 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %31, i64 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %26

40:                                               ; preds = %26
  br label %64

41:                                               ; preds = %4
  %42 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @SPP_ROUTE_CFG_DESTID(i64 %45)
  %47 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %42, i64 %43, i32 %44, i32 %46, i32 -2147483648)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %60, %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @SPP_ROUTE_CFG_PORT(i64 %56)
  %58 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %59 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %53, i64 %54, i32 %55, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %48

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %40
  ret i32 0
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i32, i32, i32) #1

declare dso_local i32 @SPP_ROUTE_CFG_DESTID(i64) #1

declare dso_local i32 @SPP_ROUTE_CFG_PORT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
