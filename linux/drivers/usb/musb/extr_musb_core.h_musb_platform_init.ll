; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.h_musb_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.h_musb_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @musb_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_platform_init(%struct.musb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musb*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  %4 = load %struct.musb*, %struct.musb** %3, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.musb*)**
  %9 = load i32 (%struct.musb*)*, i32 (%struct.musb*)** %8, align 8
  %10 = icmp ne i32 (%struct.musb*)* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.musb*, %struct.musb** %3, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.musb*)**
  %20 = load i32 (%struct.musb*)*, i32 (%struct.musb*)** %19, align 8
  %21 = load %struct.musb*, %struct.musb** %3, align 8
  %22 = call i32 %20(%struct.musb* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
