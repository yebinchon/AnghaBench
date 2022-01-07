; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_putmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_putmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.hvfb_par* }
%struct.hvfb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@screen_fb_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @hvfb_putmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvfb_putmem(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.hvfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.hvfb_par*, %struct.hvfb_par** %5, align 8
  store %struct.hvfb_par* %6, %struct.hvfb_par** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @iounmap(i32 %9)
  %11 = load %struct.hvfb_par*, %struct.hvfb_par** %3, align 8
  %12 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @screen_fb_size, align 4
  %17 = call i32 @vmbus_free_mmio(i32 %15, i32 %16)
  %18 = load %struct.hvfb_par*, %struct.hvfb_par** %3, align 8
  %19 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %18, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %19, align 8
  ret void
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @vmbus_free_mmio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
