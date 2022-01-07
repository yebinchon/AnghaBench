; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_disable_source_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_sourcesink.c_disable_source_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_sourcesink = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f_sourcesink*)* @disable_source_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_source_sink(%struct.f_sourcesink* %0) #0 {
  %2 = alloca %struct.f_sourcesink*, align 8
  %3 = alloca %struct.usb_composite_dev*, align 8
  store %struct.f_sourcesink* %0, %struct.f_sourcesink** %2, align 8
  %4 = load %struct.f_sourcesink*, %struct.f_sourcesink** %2, align 8
  %5 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  store %struct.usb_composite_dev* %9, %struct.usb_composite_dev** %3, align 8
  %10 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %11 = load %struct.f_sourcesink*, %struct.f_sourcesink** %2, align 8
  %12 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.f_sourcesink*, %struct.f_sourcesink** %2, align 8
  %15 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.f_sourcesink*, %struct.f_sourcesink** %2, align 8
  %18 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.f_sourcesink*, %struct.f_sourcesink** %2, align 8
  %21 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @disable_endpoints(%struct.usb_composite_dev* %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %25 = load %struct.f_sourcesink*, %struct.f_sourcesink** %2, align 8
  %26 = getelementptr inbounds %struct.f_sourcesink, %struct.f_sourcesink* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @VDBG(%struct.usb_composite_dev* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @disable_endpoints(%struct.usb_composite_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @VDBG(%struct.usb_composite_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
