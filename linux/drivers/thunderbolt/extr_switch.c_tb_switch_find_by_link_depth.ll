; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_find_by_link_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_find_by_link_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.tb = type { i32 }
%struct.tb_sw_lookup = type { i8*, i8*, %struct.tb* }
%struct.device = type { i32 }

@tb_bus_type = common dso_local global i32 0, align 4
@tb_switch_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_switch* @tb_switch_find_by_link_depth(%struct.tb* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tb_sw_lookup, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call i32 @memset(%struct.tb_sw_lookup* %8, i32 0, i32 24)
  %11 = load %struct.tb*, %struct.tb** %5, align 8
  %12 = getelementptr inbounds %struct.tb_sw_lookup, %struct.tb_sw_lookup* %8, i32 0, i32 2
  store %struct.tb* %11, %struct.tb** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.tb_sw_lookup, %struct.tb_sw_lookup* %8, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds %struct.tb_sw_lookup, %struct.tb_sw_lookup* %8, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @tb_switch_match, align 4
  %18 = call %struct.device* @bus_find_device(i32* @tb_bus_type, i32* null, %struct.tb_sw_lookup* %8, i32 %17)
  store %struct.device* %18, %struct.device** %9, align 8
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %9, align 8
  %23 = call %struct.tb_switch* @tb_to_switch(%struct.device* %22)
  store %struct.tb_switch* %23, %struct.tb_switch** %4, align 8
  br label %25

24:                                               ; preds = %3
  store %struct.tb_switch* null, %struct.tb_switch** %4, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  ret %struct.tb_switch* %26
}

declare dso_local i32 @memset(%struct.tb_sw_lookup*, i32, i32) #1

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.tb_sw_lookup*, i32) #1

declare dso_local %struct.tb_switch* @tb_to_switch(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
