; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_std_route_clr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_std_route_clr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i64 }

@RIO_INVALID_ROUTE = common dso_local global i32 0, align 4
@RIO_GLOBAL_TABLE = common dso_local global i64 0, align 8
@RIO_PEF_CAR = common dso_local global i32 0, align 4
@RIO_SWITCH_RT_LIMIT = common dso_local global i32 0, align 4
@RIO_RT_MAX_DESTID = common dso_local global i32 0, align 4
@RIO_PEF_EXT_RT = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_DESTID_SEL_CSR = common dso_local global i32 0, align 4
@RIO_STD_RTE_CONF_PORT_SEL_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i64, i32, i64)* @rio_std_route_clr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_std_route_clr_table(%struct.rio_mport* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 255, i32* %9, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @RIO_GLOBAL_TABLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %4
  %20 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RIO_PEF_CAR, align 4
  %24 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %20, i64 %21, i32 %22, i32 %23, i32* %11)
  %25 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %26 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @RIO_SWITCH_RT_LIMIT, align 4
  %34 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %30, i64 %31, i32 %32, i32 %33, i32* %9)
  %35 = load i32, i32* @RIO_RT_MAX_DESTID, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %29, %19
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @RIO_PEF_EXT_RT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  store i32 -2147483648, i32* %13, align 4
  store i32 4, i32* %12, align 4
  %44 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %45 = shl i32 %44, 24
  %46 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %45, %47
  %49 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32, i32* @RIO_INVALID_ROUTE, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %43, %38
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @RIO_STD_RTE_CONF_DESTID_SEL_CSR, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %60, i64 %61, i32 %62, i32 %63, i32 %66)
  %68 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @RIO_STD_RTE_CONF_PORT_SEL_CSR, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %68, i64 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %55

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77, %4
  %79 = call i32 @udelay(i32 10)
  ret i32 0
}

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i64, i32, i32, i32*) #1

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i64, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
