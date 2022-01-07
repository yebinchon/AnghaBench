; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_alloc_safe_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_switch_alloc_safe_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.tb* }
%struct.TYPE_5__ = type { i32, i32*, i32*, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tb = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tb_bus_type = common dso_local global i32 0, align 4
@tb_switch_type = common dso_local global i32 0, align 4
@switch_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%u-%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_switch* @tb_switch_alloc_safe_mode(%struct.tb* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_switch*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tb_switch* @kzalloc(i32 64, i32 %9)
  store %struct.tb_switch* %10, %struct.tb_switch** %8, align 8
  %11 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %12 = icmp ne %struct.tb_switch* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.tb_switch* @ERR_PTR(i32 %15)
  store %struct.tb_switch* %16, %struct.tb_switch** %4, align 8
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.tb*, %struct.tb** %5, align 8
  %19 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 3
  store %struct.tb* %18, %struct.tb** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @tb_route_length(i32 %21)
  %23 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @upper_32_bits(i32 %26)
  %28 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %29 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @lower_32_bits(i32 %31)
  %33 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %37 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %39 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %38, i32 0, i32 1
  %40 = call i32 @device_initialize(%struct.TYPE_5__* %39)
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %43 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store %struct.device* %41, %struct.device** %44, align 8
  %45 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %46 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32* @tb_bus_type, i32** %47, align 8
  %48 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %49 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* @tb_switch_type, i32** %50, align 8
  %51 = load i32, i32* @switch_groups, align 4
  %52 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %53 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %56 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %55, i32 0, i32 1
  %57 = load %struct.tb*, %struct.tb** %5, align 8
  %58 = getelementptr inbounds %struct.tb, %struct.tb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  %61 = call i32 @tb_route(%struct.tb_switch* %60)
  %62 = call i32 @dev_set_name(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load %struct.tb_switch*, %struct.tb_switch** %8, align 8
  store %struct.tb_switch* %63, %struct.tb_switch** %4, align 8
  br label %64

64:                                               ; preds = %17, %13
  %65 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  ret %struct.tb_switch* %65
}

declare dso_local %struct.tb_switch* @kzalloc(i32, i32) #1

declare dso_local %struct.tb_switch* @ERR_PTR(i32) #1

declare dso_local i32 @tb_route_length(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @tb_route(%struct.tb_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
