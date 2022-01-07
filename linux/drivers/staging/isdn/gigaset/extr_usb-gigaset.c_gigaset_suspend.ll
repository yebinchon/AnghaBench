; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cardstate = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@DEBUG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"suspend complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @gigaset_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %7 = call %struct.cardstate* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.cardstate* %7, %struct.cardstate** %5, align 8
  %8 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %11 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_kill_urb(i32 %15)
  %17 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 1
  %19 = call i32 @tasklet_kill(i32* %18)
  %20 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_kill_urb(i32 %25)
  %27 = load i32, i32* @DEBUG_SUSPEND, align 4
  %28 = call i32 @gig_dbg(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.cardstate* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
