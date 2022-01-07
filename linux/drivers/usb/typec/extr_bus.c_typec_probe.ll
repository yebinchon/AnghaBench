; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_bus.c_typec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.typec_altmode_driver = type { i32 (%struct.typec_altmode*)* }
%struct.typec_altmode = type opaque
%struct.typec_altmode.0 = type { i32 }
%struct.altmode = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to create symlinks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @typec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typec_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.typec_altmode_driver*, align 8
  %5 = alloca %struct.typec_altmode.0*, align 8
  %6 = alloca %struct.altmode*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.typec_altmode_driver* @to_altmode_driver(i32 %10)
  store %struct.typec_altmode_driver* %11, %struct.typec_altmode_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.typec_altmode.0* @to_typec_altmode(%struct.device* %12)
  store %struct.typec_altmode.0* %13, %struct.typec_altmode.0** %5, align 8
  %14 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %5, align 8
  %15 = call %struct.altmode* @to_altmode(%struct.typec_altmode.0* %14)
  store %struct.altmode* %15, %struct.altmode** %6, align 8
  %16 = load %struct.altmode*, %struct.altmode** %6, align 8
  %17 = getelementptr inbounds %struct.altmode, %struct.altmode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load %struct.altmode*, %struct.altmode** %6, align 8
  %25 = call i32 @typec_altmode_create_links(%struct.altmode* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.typec_altmode_driver*, %struct.typec_altmode_driver** %4, align 8
  %34 = getelementptr inbounds %struct.typec_altmode_driver, %struct.typec_altmode_driver* %33, i32 0, i32 0
  %35 = load i32 (%struct.typec_altmode*)*, i32 (%struct.typec_altmode*)** %34, align 8
  %36 = load %struct.typec_altmode.0*, %struct.typec_altmode.0** %5, align 8
  %37 = bitcast %struct.typec_altmode.0* %36 to %struct.typec_altmode*
  %38 = call i32 %35(%struct.typec_altmode* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.altmode*, %struct.altmode** %6, align 8
  %43 = call i32 @typec_altmode_remove_links(%struct.altmode* %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %28, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.typec_altmode_driver* @to_altmode_driver(i32) #1

declare dso_local %struct.typec_altmode.0* @to_typec_altmode(%struct.device*) #1

declare dso_local %struct.altmode* @to_altmode(%struct.typec_altmode.0*) #1

declare dso_local i32 @typec_altmode_create_links(%struct.altmode*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @typec_altmode_remove_links(%struct.altmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
