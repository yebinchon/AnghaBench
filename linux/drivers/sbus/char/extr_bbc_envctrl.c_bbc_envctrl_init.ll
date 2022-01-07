; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_bbc_envctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_bbc_envctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_bus = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fan-control\00", align 1
@kenvctrld = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"kenvctrld\00", align 1
@kenvctrld_task = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbc_envctrl_init(%struct.bbc_i2c_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bbc_i2c_bus*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = call %struct.platform_device* @bbc_i2c_getdev(%struct.bbc_i2c_bus* %10, i32 %11)
  store %struct.platform_device* %13, %struct.platform_device** %4, align 8
  %14 = icmp ne %struct.platform_device* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @of_node_name_eq(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = call i32 @attach_one_temp(%struct.bbc_i2c_bus* %23, %struct.platform_device* %24, i32 %25)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @of_node_name_eq(i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = call i32 @attach_one_fan(%struct.bbc_i2c_bus* %36, %struct.platform_device* %37, i32 %38)
  br label %41

41:                                               ; preds = %35, %28
  br label %9

42:                                               ; preds = %9
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32, i32* @kenvctrld, align 4
  %50 = call i32* @kthread_run(i32 %49, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %50, i32** @kenvctrld_task, align 8
  %51 = load i32*, i32** @kenvctrld_task, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32*, i32** @kenvctrld_task, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %8, align 4
  store i32* null, i32** @kenvctrld_task, align 8
  %57 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %58 = call i32 @destroy_all_temps(%struct.bbc_i2c_bus* %57)
  %59 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %60 = call i32 @destroy_all_fans(%struct.bbc_i2c_bus* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %45, %42
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.platform_device* @bbc_i2c_getdev(%struct.bbc_i2c_bus*, i32) #1

declare dso_local i64 @of_node_name_eq(i32, i8*) #1

declare dso_local i32 @attach_one_temp(%struct.bbc_i2c_bus*, %struct.platform_device*, i32) #1

declare dso_local i32 @attach_one_fan(%struct.bbc_i2c_bus*, %struct.platform_device*, i32) #1

declare dso_local i32* @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @destroy_all_temps(%struct.bbc_i2c_bus*) #1

declare dso_local i32 @destroy_all_fans(%struct.bbc_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
