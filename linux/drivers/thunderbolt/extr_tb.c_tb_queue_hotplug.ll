; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_queue_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tb.c_tb_queue_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32 }
%struct.tb_hotplug_event = type { i32, i32, i32, i32, %struct.tb* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tb_handle_hotplug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*, i32, i32, i32)* @tb_queue_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_queue_hotplug(%struct.tb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb_hotplug_event*, align 8
  store %struct.tb* %0, %struct.tb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tb_hotplug_event* @kmalloc(i32 24, i32 %10)
  store %struct.tb_hotplug_event* %11, %struct.tb_hotplug_event** %9, align 8
  %12 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %13 = icmp ne %struct.tb_hotplug_event* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %38

15:                                               ; preds = %4
  %16 = load %struct.tb*, %struct.tb** %5, align 8
  %17 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %18 = getelementptr inbounds %struct.tb_hotplug_event, %struct.tb_hotplug_event* %17, i32 0, i32 4
  store %struct.tb* %16, %struct.tb** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %21 = getelementptr inbounds %struct.tb_hotplug_event, %struct.tb_hotplug_event* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %24 = getelementptr inbounds %struct.tb_hotplug_event, %struct.tb_hotplug_event* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %27 = getelementptr inbounds %struct.tb_hotplug_event, %struct.tb_hotplug_event* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %29 = getelementptr inbounds %struct.tb_hotplug_event, %struct.tb_hotplug_event* %28, i32 0, i32 1
  %30 = load i32, i32* @tb_handle_hotplug, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.tb*, %struct.tb** %5, align 8
  %33 = getelementptr inbounds %struct.tb, %struct.tb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tb_hotplug_event*, %struct.tb_hotplug_event** %9, align 8
  %36 = getelementptr inbounds %struct.tb_hotplug_event, %struct.tb_hotplug_event* %35, i32 0, i32 1
  %37 = call i32 @queue_work(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.tb_hotplug_event* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
