; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_otg_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_otg_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@otg_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"HNP: b_wait_acon timeout; back to b_peripheral\00", align 1
@OTG_STATE_B_PERIPHERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"HNP: %s timeout\00", align 1
@OTG_STATE_A_WAIT_VFALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"HNP: Unhandled mode %s\00", align 1
@musb = common dso_local global %struct.musb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @musb_otg_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_otg_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.musb*, %struct.musb** %3, align 8
  %6 = ptrtoint %struct.musb* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @otg_timer, align 4
  %9 = call %struct.musb* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.musb* %9, %struct.musb** %3, align 8
  %10 = load %struct.musb*, %struct.musb** %3, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.musb*, %struct.musb** %3, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %55 [
    i32 128, label %21
    i32 130, label %35
    i32 129, label %35
  ]

21:                                               ; preds = %1
  %22 = load %struct.musb*, %struct.musb** %3, align 8
  %23 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.musb*, %struct.musb** %3, align 8
  %25 = call i32 @musb_g_disconnect(%struct.musb* %24)
  %26 = load i32, i32* @OTG_STATE_B_PERIPHERAL, align 4
  %27 = load %struct.musb*, %struct.musb** %3, align 8
  %28 = getelementptr inbounds %struct.musb, %struct.musb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %26, i32* %32, align 4
  %33 = load %struct.musb*, %struct.musb** %3, align 8
  %34 = getelementptr inbounds %struct.musb, %struct.musb* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  br label %66

35:                                               ; preds = %1, %1
  %36 = load %struct.musb*, %struct.musb** %3, align 8
  %37 = load %struct.musb*, %struct.musb** %3, align 8
  %38 = getelementptr inbounds %struct.musb, %struct.musb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_otg_state_string(i32 %43)
  %45 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.musb*, %struct.musb** %3, align 8
  %47 = call i32 @musb_platform_set_vbus(%struct.musb* %46, i32 0)
  %48 = load i32, i32* @OTG_STATE_A_WAIT_VFALL, align 4
  %49 = load %struct.musb*, %struct.musb** %3, align 8
  %50 = getelementptr inbounds %struct.musb, %struct.musb* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 4
  br label %66

55:                                               ; preds = %1
  %56 = load %struct.musb*, %struct.musb** %3, align 8
  %57 = load %struct.musb*, %struct.musb** %3, align 8
  %58 = getelementptr inbounds %struct.musb, %struct.musb* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_otg_state_string(i32 %63)
  %65 = call i32 (%struct.musb*, i8*, ...) @musb_dbg(%struct.musb* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %55, %35, %21
  %67 = load %struct.musb*, %struct.musb** %3, align 8
  %68 = getelementptr inbounds %struct.musb, %struct.musb* %67, i32 0, i32 0
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret void
}

declare dso_local %struct.musb* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, ...) #1

declare dso_local i32 @musb_g_disconnect(%struct.musb*) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i32 @musb_platform_set_vbus(%struct.musb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
