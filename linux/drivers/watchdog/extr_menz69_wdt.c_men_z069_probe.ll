; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_menz69_wdt.c_men_z069_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.mcb_device = type { i32 }
%struct.mcb_device_id = type { i32 }
%struct.men_z069_drv = type { %struct.TYPE_6__, %struct.resource*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"z069-wdt\00", align 1
@men_z069_wdt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@nowayout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcb_device*, %struct.mcb_device_id*)* @men_z069_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z069_probe(%struct.mcb_device* %0, %struct.mcb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcb_device*, align 8
  %5 = alloca %struct.mcb_device_id*, align 8
  %6 = alloca %struct.men_z069_drv*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.mcb_device* %0, %struct.mcb_device** %4, align 8
  store %struct.mcb_device_id* %1, %struct.mcb_device_id** %5, align 8
  %8 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %9 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.men_z069_drv* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.men_z069_drv* %11, %struct.men_z069_drv** %6, align 8
  %12 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %13 = icmp ne %struct.men_z069_drv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %19 = call %struct.resource* @mcb_request_mem(%struct.mcb_device* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %19, %struct.resource** %7, align 8
  %20 = load %struct.resource*, %struct.resource** %7, align 8
  %21 = call i64 @IS_ERR(%struct.resource* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.resource* %24)
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %17
  %27 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %28 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = call i32* @devm_ioremap(i32* %28, i32 %31, i32 %33)
  %35 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %36 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %38 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %71

42:                                               ; preds = %26
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %45 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %44, i32 0, i32 1
  store %struct.resource* %43, %struct.resource** %45, align 8
  %46 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %47 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_6__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 bitcast (%struct.TYPE_6__* @men_z069_wdt to i8*), i64 8, i1 false)
  %49 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %50 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %49, i32 0, i32 0
  %51 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %52 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %51, i32 0, i32 0
  %53 = call i32 @watchdog_init_timeout(%struct.TYPE_6__* %50, i32 0, i32* %52)
  %54 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %55 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %54, i32 0, i32 0
  %56 = load i32, i32* @nowayout, align 4
  %57 = call i32 @watchdog_set_nowayout(%struct.TYPE_6__* %55, i32 %56)
  %58 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %59 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %58, i32 0, i32 0
  %60 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %61 = call i32 @watchdog_set_drvdata(%struct.TYPE_6__* %59, %struct.men_z069_drv* %60)
  %62 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %63 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %62, i32 0, i32 0
  %64 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %65 = getelementptr inbounds %struct.men_z069_drv, %struct.men_z069_drv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load %struct.mcb_device*, %struct.mcb_device** %4, align 8
  %68 = load %struct.men_z069_drv*, %struct.men_z069_drv** %6, align 8
  %69 = call i32 @mcb_set_drvdata(%struct.mcb_device* %67, %struct.men_z069_drv* %68)
  %70 = call i32 @watchdog_register_device(%struct.TYPE_6__* @men_z069_wdt)
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %41
  %72 = load %struct.resource*, %struct.resource** %7, align 8
  %73 = call i32 @mcb_release_mem(%struct.resource* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %42, %23, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.men_z069_drv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @mcb_request_mem(%struct.mcb_device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.resource*) #1

declare dso_local i32 @PTR_ERR(%struct.resource*) #1

declare dso_local i32* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @watchdog_init_timeout(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.TYPE_6__*, %struct.men_z069_drv*) #1

declare dso_local i32 @mcb_set_drvdata(%struct.mcb_device*, %struct.men_z069_drv*) #1

declare dso_local i32 @watchdog_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @mcb_release_mem(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
