; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_do_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_xen-fbfront.c_xenfb_do_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenfb_info = type { i32 }
%union.xenfb_out_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@XENFB_TYPE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenfb_info*, i32, i32, i32, i32)* @xenfb_do_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenfb_do_update(%struct.xenfb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xenfb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.xenfb_out_event, align 4
  store %struct.xenfb_info* %0, %struct.xenfb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%union.xenfb_out_event* %11, i32 0, i32 16)
  %13 = load i32, i32* @XENFB_TYPE_UPDATE, align 4
  %14 = bitcast %union.xenfb_out_event* %11 to i32*
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = bitcast %union.xenfb_out_event* %11 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = bitcast %union.xenfb_out_event* %11 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %9, align 4
  %22 = bitcast %union.xenfb_out_event* %11 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = bitcast %union.xenfb_out_event* %11 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xenfb_info*, %struct.xenfb_info** %6, align 8
  %28 = call i32 @xenfb_send_event(%struct.xenfb_info* %27, %union.xenfb_out_event* %11)
  ret void
}

declare dso_local i32 @memset(%union.xenfb_out_event*, i32, i32) #1

declare dso_local i32 @xenfb_send_event(%struct.xenfb_info*, %union.xenfb_out_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
