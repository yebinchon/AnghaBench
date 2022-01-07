; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gb_connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.power_supply_config = type { %struct.gb_power_supply* }

@get_property = common dso_local global i32 0, align 4
@set_property = common dso_local global i32 0, align 4
@property_is_writeable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*)* @gb_power_supply_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_power_supply_register(%struct.gb_power_supply* %0) #0 {
  %2 = alloca %struct.gb_power_supply*, align 8
  %3 = alloca %struct.gb_connection*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %2, align 8
  %5 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %6 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %5)
  store %struct.gb_connection* %6, %struct.gb_connection** %3, align 8
  %7 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %9 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store %struct.gb_power_supply* %8, %struct.gb_power_supply** %9, align 8
  %10 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %11 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %14 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store i32 %12, i32* %15, align 4
  %16 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %17 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %20 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 4
  %22 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %23 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %26 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %29 = call i32 @total_props(%struct.gb_power_supply* %28)
  %30 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %31 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @get_property, align 4
  %34 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %35 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @set_property, align 4
  %38 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %39 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @property_is_writeable, align 4
  %42 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %43 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %46 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %50 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %49, i32 0, i32 1
  %51 = call i32 @power_supply_register(i32* %48, %struct.TYPE_4__* %50, %struct.power_supply_config* %4)
  %52 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %53 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.gb_power_supply*, %struct.gb_power_supply** %2, align 8
  %55 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR_OR_ZERO(i32 %56)
  ret i32 %57
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @total_props(%struct.gb_power_supply*) #1

declare dso_local i32 @power_supply_register(i32*, %struct.TYPE_4__*, %struct.power_supply_config*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
