; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_platform_data_dt_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_platform_data_dt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022_ssp_controller = type { i32, i32, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no dt node defined\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pl022,autosuspend-delay\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pl022,rt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pl022_ssp_controller* (%struct.device*)* @pl022_platform_data_dt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pl022_ssp_controller* @pl022_platform_data_dt_get(%struct.device* %0) #0 {
  %2 = alloca %struct.pl022_ssp_controller*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pl022_ssp_controller*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.pl022_ssp_controller* null, %struct.pl022_ssp_controller** %2, align 8
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pl022_ssp_controller* @devm_kzalloc(%struct.device* %16, i32 20, i32 %17)
  store %struct.pl022_ssp_controller* %18, %struct.pl022_ssp_controller** %5, align 8
  %19 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  %20 = icmp ne %struct.pl022_ssp_controller* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.pl022_ssp_controller* null, %struct.pl022_ssp_controller** %2, align 8
  br label %41

22:                                               ; preds = %15
  %23 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  %24 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  %26 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  %31 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  %34 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %33, i32 0, i32 3
  %35 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %34)
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = call i32 @of_property_read_bool(%struct.device_node* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  %39 = getelementptr inbounds %struct.pl022_ssp_controller, %struct.pl022_ssp_controller* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %5, align 8
  store %struct.pl022_ssp_controller* %40, %struct.pl022_ssp_controller** %2, align 8
  br label %41

41:                                               ; preds = %22, %21, %12
  %42 = load %struct.pl022_ssp_controller*, %struct.pl022_ssp_controller** %2, align 8
  ret %struct.pl022_ssp_controller* %42
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.pl022_ssp_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
