; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EEEPC_LAPTOP_FILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@platform_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_platform_init(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  %5 = load i32, i32* @EEEPC_LAPTOP_FILE, align 4
  %6 = call %struct.TYPE_8__* @platform_device_alloc(i32 %5, i32 -1)
  %7 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %8 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %7, i32 0, i32 0
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %8, align 8
  %9 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %10 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %18 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %21 = call i32 @platform_set_drvdata(%struct.TYPE_8__* %19, %struct.eeepc_laptop* %20)
  %22 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %23 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @platform_device_add(%struct.TYPE_8__* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %45

29:                                               ; preds = %16
  %30 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %31 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_create_group(i32* %34, i32* @platform_attribute_group)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %51

40:                                               ; preds = %38
  %41 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %42 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @platform_device_del(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %40, %28
  %46 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %47 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @platform_device_put(%struct.TYPE_8__* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %39, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_8__*, %struct.eeepc_laptop*) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @platform_device_del(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
