; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_periodic_next_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_periodic_next_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%union.fotg210_shadow = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %union.fotg210_shadow }
%struct.TYPE_4__ = type { %union.fotg210_shadow }
%struct.TYPE_5__ = type { %union.fotg210_shadow }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.fotg210_shadow* (%struct.fotg210_hcd*, %union.fotg210_shadow*, i32)* @periodic_next_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.fotg210_shadow* @periodic_next_shadow(%struct.fotg210_hcd* %0, %union.fotg210_shadow* %1, i32 %2) #0 {
  %4 = alloca %union.fotg210_shadow*, align 8
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca %union.fotg210_shadow*, align 8
  %7 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %5, align 8
  store %union.fotg210_shadow* %1, %union.fotg210_shadow** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %8, i32 %9)
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 129, label %16
  ]

11:                                               ; preds = %3
  %12 = load %union.fotg210_shadow*, %union.fotg210_shadow** %6, align 8
  %13 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_4__**
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %union.fotg210_shadow* %15, %union.fotg210_shadow** %4, align 8
  br label %26

16:                                               ; preds = %3
  %17 = load %union.fotg210_shadow*, %union.fotg210_shadow** %6, align 8
  %18 = bitcast %union.fotg210_shadow* %17 to %struct.TYPE_5__**
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %union.fotg210_shadow* %20, %union.fotg210_shadow** %4, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load %union.fotg210_shadow*, %union.fotg210_shadow** %6, align 8
  %23 = bitcast %union.fotg210_shadow* %22 to %struct.TYPE_6__**
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %union.fotg210_shadow* %25, %union.fotg210_shadow** %4, align 8
  br label %26

26:                                               ; preds = %21, %16, %11
  %27 = load %union.fotg210_shadow*, %union.fotg210_shadow** %4, align 8
  ret %union.fotg210_shadow* %27
}

declare dso_local i32 @hc32_to_cpu(%struct.fotg210_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
