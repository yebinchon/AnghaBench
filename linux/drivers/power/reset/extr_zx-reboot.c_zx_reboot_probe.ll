; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_zx-reboot.c_zx_reboot_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_zx-reboot.c_zx_reboot_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to map base address\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"zte,zx296702-pcu\00", align 1
@pcu_base = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to map pcu_base address\00", align 1
@zx_restart_nb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Register restart handler failed(err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_reboot_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_reboot_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i32 @of_iomap(%struct.device_node* %10, i32 0)
  store i32 %11, i32* @base, align 4
  %12 = load i32, i32* @base, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @of_iomap(%struct.device_node* %20, i32 0)
  store i32 %21, i32* @pcu_base, align 4
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load i32, i32* @pcu_base, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @base, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %18
  %33 = call i32 @register_restart_handler(i32* @zx_restart_nb)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* @base, align 4
  %38 = call i32 @iounmap(i32 %37)
  %39 = load i32, i32* @pcu_base, align 4
  %40 = call i32 @iounmap(i32 %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(%struct.TYPE_2__* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %26, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @register_restart_handler(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
