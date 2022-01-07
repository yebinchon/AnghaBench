; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.visor_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"MODALIAS=visorbus:%pUl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @visorbus_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorbus_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.visor_device*, align 8
  %6 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.visor_device* @to_visor_device(%struct.device* %7)
  store %struct.visor_device* %8, %struct.visor_device** %5, align 8
  %9 = load %struct.visor_device*, %struct.visor_device** %5, align 8
  %10 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @visorchannel_get_guid(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %14)
  ret i32 %15
}

declare dso_local %struct.visor_device* @to_visor_device(%struct.device*) #1

declare dso_local i32* @visorchannel_get_guid(i32) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
