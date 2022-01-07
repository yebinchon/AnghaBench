; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501fb_info = type { %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SM501_GATE_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sm501fb_info*)* @sm501fb_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501fb_stop(%struct.sm501fb_info* %0) #0 {
  %2 = alloca %struct.sm501fb_info*, align 8
  store %struct.sm501fb_info* %0, %struct.sm501fb_info** %2, align 8
  %3 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %3, i32 0, i32 6
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SM501_GATE_DISPLAY, align 4
  %9 = call i32 @sm501_unit_power(i32 %7, i32 %8, i32 0)
  %10 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @iounmap(i32 %12)
  %14 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @resource_size(%struct.TYPE_4__* %21)
  %23 = call i32 @release_mem_region(i32 %18, i32 %22)
  %24 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %25 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iounmap(i32 %26)
  %28 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %29 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %34 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @resource_size(%struct.TYPE_4__* %35)
  %37 = call i32 @release_mem_region(i32 %32, i32 %36)
  %38 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iounmap(i32 %40)
  %42 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sm501fb_info*, %struct.sm501fb_info** %2, align 8
  %48 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @resource_size(%struct.TYPE_4__* %49)
  %51 = call i32 @release_mem_region(i32 %46, i32 %50)
  ret void
}

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
