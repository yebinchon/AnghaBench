; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210.h_fotg210_read_frame_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210.h_fotg210_read_frame_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*)* @fotg210_read_frame_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_read_frame_index(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %3 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %4 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @fotg210_readl(%struct.fotg210_hcd* %3, i32* %7)
  ret i32 %8
}

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
