; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mon.c_rtl88eu_mon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mon.c_rtl88eu_mon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"mon%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@mon_setup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @rtl88eu_mon_init() #0 {
  %1 = alloca %struct.net_device*, align 8
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %5 = load i32, i32* @mon_setup, align 4
  %6 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5)
  store %struct.net_device* %6, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %21

10:                                               ; preds = %0
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @register_netdev(%struct.net_device* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %18

16:                                               ; preds = %10
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  store %struct.net_device* %17, %struct.net_device** %1, align 8
  br label %22

18:                                               ; preds = %15
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @free_netdev(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %18, %9
  store %struct.net_device* null, %struct.net_device** %1, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.net_device*, %struct.net_device** %1, align 8
  ret %struct.net_device* %23
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
