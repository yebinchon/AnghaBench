; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi57x.c_tsi57x_route_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/switches/extr_tsi57x.c_tsi57x_route_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_GLOBAL_TABLE = common dso_local global i32 0, align 4
@RIO_SWP_INFO_CAR = common dso_local global i32 0, align 4
@RIO_SWP_INFO_PORT_NUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32, i32, i32*)* @tsi57x_route_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi57x_route_get_entry(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @RIO_GLOBAL_TABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @RIO_SWP_INFO_CAR, align 4
  %23 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %19, i32 %20, i32 %21, i32 %22, i32* %14)
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @RIO_SWP_INFO_PORT_NUM_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %18, %6
  %28 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @SPP_ROUTE_CFG_DESTID(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %28, i32 %29, i32 %30, i32 %32, i32 %33)
  %35 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @SPP_ROUTE_CFG_PORT(i32 %38)
  %40 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %35, i32 %36, i32 %37, i32 %39, i32* %14)
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 15
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store i32 -1, i32* %13, align 4
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i32, i32*) #1

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i32, i32, i32, i32) #1

declare dso_local i32 @SPP_ROUTE_CFG_DESTID(i32) #1

declare dso_local i32 @SPP_ROUTE_CFG_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
