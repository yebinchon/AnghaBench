; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.h_musb_platform_pre_root_reset_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.h_musb_platform_pre_root_reset_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.musb*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*)* @musb_platform_pre_root_reset_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_platform_pre_root_reset_end(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %3 = load %struct.musb*, %struct.musb** %2, align 8
  %4 = getelementptr inbounds %struct.musb, %struct.musb* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.musb*)*, i32 (%struct.musb*)** %6, align 8
  %8 = icmp ne i32 (%struct.musb*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.musb*, %struct.musb** %2, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.musb*)*, i32 (%struct.musb*)** %13, align 8
  %15 = load %struct.musb*, %struct.musb** %2, align 8
  %16 = call i32 %14(%struct.musb* %15)
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
