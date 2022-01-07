; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_detach_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_detach_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_func = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_func*)* @hantro_detach_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_detach_func(%struct.hantro_func* %0) #0 {
  %2 = alloca %struct.hantro_func*, align 8
  store %struct.hantro_func* %0, %struct.hantro_func** %2, align 8
  %3 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %4 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @media_devnode_remove(i32 %5)
  %7 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %8 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %7, i32 0, i32 2
  %9 = call i32 @media_entity_remove_links(i32* %8)
  %10 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %11 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %10, i32 0, i32 1
  %12 = call i32 @media_entity_remove_links(i32* %11)
  %13 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %14 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @media_entity_remove_links(i32* %15)
  %17 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %18 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %17, i32 0, i32 2
  %19 = call i32 @media_device_unregister_entity(i32* %18)
  %20 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %21 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %20, i32 0, i32 1
  %22 = call i32 @media_device_unregister_entity(i32* %21)
  %23 = load %struct.hantro_func*, %struct.hantro_func** %2, align 8
  %24 = getelementptr inbounds %struct.hantro_func, %struct.hantro_func* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @media_device_unregister_entity(i32* %25)
  ret void
}

declare dso_local i32 @media_devnode_remove(i32) #1

declare dso_local i32 @media_entity_remove_links(i32*) #1

declare dso_local i32 @media_device_unregister_entity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
