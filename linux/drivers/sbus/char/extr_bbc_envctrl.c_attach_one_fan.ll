; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_bbc_envctrl.c_attach_one_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_bus = type { i32 }
%struct.platform_device = type { i32 }
%struct.bbc_fan_control = type { i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@all_fans = common dso_local global i32 0, align 4
@FAN_SPEED_MAX = common dso_local global i32 0, align 4
@FAN_SPEED_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bbc_i2c_bus*, %struct.platform_device*, i32)* @attach_one_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_one_fan(%struct.bbc_i2c_bus* %0, %struct.platform_device* %1, i32 %2) #0 {
  %4 = alloca %struct.bbc_i2c_bus*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bbc_fan_control*, align 8
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bbc_fan_control* @kzalloc(i32 28, i32 %8)
  store %struct.bbc_fan_control* %9, %struct.bbc_fan_control** %7, align 8
  %10 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %11 = icmp ne %struct.bbc_fan_control* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %70

13:                                               ; preds = %3
  %14 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %15 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %18 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = call i32 @bbc_i2c_attach(%struct.bbc_i2c_bus* %20, %struct.platform_device* %21)
  %23 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %24 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %26 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %13
  %30 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %31 = call i32 @kfree(%struct.bbc_fan_control* %30)
  br label %70

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %35 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %37 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %36, i32 0, i32 5
  %38 = call i32 @list_add(i32* %37, i32* @all_fans)
  %39 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %40 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %39, i32 0, i32 4
  %41 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %4, align 8
  %42 = getelementptr inbounds %struct.bbc_i2c_bus, %struct.bbc_i2c_bus* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %40, i32* %42)
  %44 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %45 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @FAN_SPEED_MAX, align 4
  %47 = load i32, i32* @FAN_SPEED_MIN, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sdiv i32 %48, 2
  %50 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %51 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @FAN_SPEED_MIN, align 4
  %53 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %54 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @FAN_SPEED_MAX, align 4
  %58 = load i32, i32* @FAN_SPEED_MIN, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sdiv i32 %59, 2
  %61 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %62 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @FAN_SPEED_MIN, align 4
  %64 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %65 = getelementptr inbounds %struct.bbc_fan_control, %struct.bbc_fan_control* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.bbc_fan_control*, %struct.bbc_fan_control** %7, align 8
  %69 = call i32 @set_fan_speeds(%struct.bbc_fan_control* %68)
  br label %70

70:                                               ; preds = %32, %29, %12
  ret void
}

declare dso_local %struct.bbc_fan_control* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bbc_i2c_attach(%struct.bbc_i2c_bus*, %struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.bbc_fan_control*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_fan_speeds(%struct.bbc_fan_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
