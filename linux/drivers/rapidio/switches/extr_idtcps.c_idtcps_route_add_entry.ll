; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idtcps.c_idtcps_route_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_idtcps.c_idtcps_route_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_INVALID_ROUTE = common dso_local global i64 0, align 8
@CPS_DEFAULT_ROUTE = common dso_local global i64 0, align 8
@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@RIO_STD_RTE_CONF_DESTID_SEL_CSR = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_PORT_SEL_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i64, i64, i64, i64)* @idtcps_route_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idtcps_route_add_entry(%struct.rio_mport* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* @RIO_INVALID_ROUTE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i64, i64* @CPS_DEFAULT_ROUTE, align 8
  store i64 %18, i64* %12, align 8
  br label %19

19:                                               ; preds = %17, %6
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @RIO_STD_RTE_CONF_DESTID_SEL_CSR, align 4
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %24, i64 %25, i64 %26, i32 %27, i32 %29)
  %31 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @RIO_STD_RTE_CONF_PORT_SEL_CSR, align 4
  %35 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %31, i64 %32, i64 %33, i32 %34, i32* %13)
  %36 = load i32, i32* %13, align 4
  %37 = and i32 -256, %36
  %38 = load i64, i64* %12, align 8
  %39 = trunc i64 %38 to i32
  %40 = or i32 %37, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @RIO_STD_RTE_CONF_PORT_SEL_CSR, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %41, i64 %42, i64 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %23, %19
  ret i32 0
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i64, i32, i32) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
