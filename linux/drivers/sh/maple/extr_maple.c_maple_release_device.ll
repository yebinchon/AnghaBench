; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_release_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.maple_device = type { i32, %struct.maple_device* }
%struct.mapleq = type { i32, %struct.mapleq* }

@maple_queue_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @maple_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_release_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca %struct.mapleq*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.mapleq* @to_maple_dev(%struct.device* %5)
  %7 = bitcast %struct.mapleq* %6 to %struct.maple_device*
  store %struct.maple_device* %7, %struct.maple_device** %3, align 8
  %8 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %9 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %8, i32 0, i32 1
  %10 = load %struct.maple_device*, %struct.maple_device** %9, align 8
  %11 = bitcast %struct.maple_device* %10 to %struct.mapleq*
  store %struct.mapleq* %11, %struct.mapleq** %4, align 8
  %12 = load i32, i32* @maple_queue_cache, align 4
  %13 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %14 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @kmem_cache_free(i32 %12, i32 %15)
  %17 = load %struct.mapleq*, %struct.mapleq** %4, align 8
  %18 = call i32 @kfree(%struct.mapleq* %17)
  %19 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %20 = bitcast %struct.maple_device* %19 to %struct.mapleq*
  %21 = call i32 @kfree(%struct.mapleq* %20)
  ret void
}

declare dso_local %struct.mapleq* @to_maple_dev(%struct.device*) #1

declare dso_local i32 @kmem_cache_free(i32, i32) #1

declare dso_local i32 @kfree(%struct.mapleq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
