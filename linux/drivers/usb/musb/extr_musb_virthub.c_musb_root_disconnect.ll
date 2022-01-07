; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_virthub.c_musb_root_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_virthub.c_musb_root_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { %struct.usb_otg* }
%struct.usb_otg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@OTG_STATE_A_PERIPHERAL = common dso_local global i32 0, align 4
@OTG_STATE_A_WAIT_BCON = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"host disconnect (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_root_disconnect(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca %struct.usb_otg*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %4 = load %struct.musb*, %struct.musb** %2, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.usb_otg*, %struct.usb_otg** %7, align 8
  store %struct.usb_otg* %8, %struct.usb_otg** %3, align 8
  %9 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %10 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %11 = shl i32 %10, 16
  %12 = or i32 %9, %11
  %13 = load %struct.musb*, %struct.musb** %2, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.musb*, %struct.musb** %2, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_hcd_poll_rh_status(i32 %17)
  %19 = load %struct.musb*, %struct.musb** %2, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.musb*, %struct.musb** %2, align 8
  %22 = getelementptr inbounds %struct.musb, %struct.musb* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.usb_otg*, %struct.usb_otg** %24, align 8
  %26 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %65 [
    i32 129, label %28
    i32 130, label %47
    i32 128, label %57
  ]

28:                                               ; preds = %1
  %29 = load %struct.usb_otg*, %struct.usb_otg** %3, align 8
  %30 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load i32, i32* @OTG_STATE_A_PERIPHERAL, align 4
  %37 = load %struct.musb*, %struct.musb** %2, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.usb_otg*, %struct.usb_otg** %40, align 8
  %42 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 8
  %43 = load %struct.musb*, %struct.musb** %2, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %76

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %1, %46
  %48 = load i32, i32* @OTG_STATE_A_WAIT_BCON, align 4
  %49 = load %struct.musb*, %struct.musb** %2, align 8
  %50 = getelementptr inbounds %struct.musb, %struct.musb* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.usb_otg*, %struct.usb_otg** %52, align 8
  %54 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 8
  %55 = load %struct.musb*, %struct.musb** %2, align 8
  %56 = getelementptr inbounds %struct.musb, %struct.musb* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %76

57:                                               ; preds = %1
  %58 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %59 = load %struct.musb*, %struct.musb** %2, align 8
  %60 = getelementptr inbounds %struct.musb, %struct.musb* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.usb_otg*, %struct.usb_otg** %62, align 8
  %64 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %63, i32 0, i32 0
  store i32 %58, i32* %64, align 8
  br label %76

65:                                               ; preds = %1
  %66 = load %struct.musb*, %struct.musb** %2, align 8
  %67 = load %struct.musb*, %struct.musb** %2, align 8
  %68 = getelementptr inbounds %struct.musb, %struct.musb* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.usb_otg*, %struct.usb_otg** %70, align 8
  %72 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @usb_otg_state_string(i32 %73)
  %75 = call i32 @musb_dbg(%struct.musb* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %65, %57, %47, %35
  ret void
}

declare dso_local i32 @usb_hcd_poll_rh_status(i32) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
