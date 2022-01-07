; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_unregister_framebuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_unregister_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbtft_par* }
%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbtft_unregister_framebuffer(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbtft_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 0
  %6 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  store %struct.fbtft_par* %6, %struct.fbtft_par** %3, align 8
  %7 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %8 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %9, align 8
  %11 = icmp ne i32 (%struct.fbtft_par.0*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %14 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %15, align 8
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %18 = bitcast %struct.fbtft_par* %17 to %struct.fbtft_par.0*
  %19 = call i32 %16(%struct.fbtft_par.0* %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %22 = call i32 @fbtft_sysfs_exit(%struct.fbtft_par* %21)
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = call i32 @unregister_framebuffer(%struct.fb_info* %23)
  ret i32 0
}

declare dso_local i32 @fbtft_sysfs_exit(%struct.fbtft_par*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
