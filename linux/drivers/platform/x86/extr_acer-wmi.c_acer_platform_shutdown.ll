; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_platform_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_platform_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.acer_data }
%struct.acer_data = type { i32 }
%struct.platform_device = type { i32 }

@interface = common dso_local global %struct.TYPE_2__* null, align 8
@ACER_CAP_MAILLED = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @acer_platform_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acer_platform_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.acer_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interface, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store %struct.acer_data* %5, %struct.acer_data** %3, align 8
  %6 = load %struct.acer_data*, %struct.acer_data** %3, align 8
  %7 = icmp ne %struct.acer_data* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @ACER_CAP_MAILLED, align 4
  %11 = call i64 @has_cap(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @LED_OFF, align 4
  %15 = load i32, i32* @ACER_CAP_MAILLED, align 4
  %16 = call i32 @set_u32(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %8, %13, %9
  ret void
}

declare dso_local i64 @has_cap(i32) #1

declare dso_local i32 @set_u32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
