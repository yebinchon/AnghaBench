; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_parse_dt_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24735-charger.c_bq24735_parse_dt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24735_platform = type { i32, i8*, i8*, i8* }
%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Memory alloc for bq24735 pdata failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ti,charge-current\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ti,charge-voltage\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ti,input-current\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ti,external-control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bq24735_platform* (%struct.i2c_client*)* @bq24735_parse_dt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bq24735_platform* @bq24735_parse_dt_data(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.bq24735_platform*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.bq24735_platform*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bq24735_platform* @devm_kzalloc(%struct.TYPE_3__* %13, i32 32, i32 %14)
  store %struct.bq24735_platform* %15, %struct.bq24735_platform** %4, align 8
  %16 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %17 = icmp ne %struct.bq24735_platform* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.bq24735_platform* null, %struct.bq24735_platform** %2, align 8
  br label %55

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %30 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %39 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %48 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = call i32 @of_property_read_bool(%struct.device_node* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  %53 = getelementptr inbounds %struct.bq24735_platform, %struct.bq24735_platform* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bq24735_platform*, %struct.bq24735_platform** %4, align 8
  store %struct.bq24735_platform* %54, %struct.bq24735_platform** %2, align 8
  br label %55

55:                                               ; preds = %49, %18
  %56 = load %struct.bq24735_platform*, %struct.bq24735_platform** %2, align 8
  ret %struct.bq24735_platform* %56
}

declare dso_local %struct.bq24735_platform* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
