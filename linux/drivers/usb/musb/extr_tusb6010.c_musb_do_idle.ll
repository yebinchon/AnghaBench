; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010.c_musb_do_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010.c_musb_do_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@dev_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Nothing connected %s, turning off VBUS\0A\00", align 1
@TUSB_PRCM_WHOSTDISCON = common dso_local global i32 0, align 4
@TUSB_PRCM_WBUS = common dso_local global i32 0, align 4
@TUSB_PRCM_WVBUS = common dso_local global i32 0, align 4
@TUSB_PRCM_WID = common dso_local global i32 0, align 4
@musb = common dso_local global %struct.musb* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @musb_do_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_do_idle(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.musb*, %struct.musb** %3, align 8
  %7 = ptrtoint %struct.musb* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @dev_timer, align 4
  %10 = call %struct.musb* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.musb* %10, %struct.musb** %3, align 8
  %11 = load %struct.musb*, %struct.musb** %3, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.musb*, %struct.musb** %3, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %56 [
    i32 128, label %22
    i32 129, label %53
  ]

22:                                               ; preds = %1
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.musb*, %struct.musb** %3, align 8
  %29 = getelementptr inbounds %struct.musb, %struct.musb* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.musb*, %struct.musb** %3, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @time_after(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32, %27
  %40 = load %struct.musb*, %struct.musb** %3, align 8
  %41 = getelementptr inbounds %struct.musb, %struct.musb* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.musb*, %struct.musb** %3, align 8
  %44 = getelementptr inbounds %struct.musb, %struct.musb* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_otg_state_string(i32 %49)
  %51 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %39, %32, %22
  br label %53

53:                                               ; preds = %1, %52
  %54 = load %struct.musb*, %struct.musb** %3, align 8
  %55 = call i32 @tusb_musb_set_vbus(%struct.musb* %54, i32 0)
  br label %56

56:                                               ; preds = %1, %53
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.musb*, %struct.musb** %3, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = load %struct.musb*, %struct.musb** %3, align 8
  %64 = call i64 @is_host_active(%struct.musb* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.musb*, %struct.musb** %3, align 8
  %68 = getelementptr inbounds %struct.musb, %struct.musb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 16
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %93

73:                                               ; preds = %66, %62
  %74 = load %struct.musb*, %struct.musb** %3, align 8
  %75 = getelementptr inbounds %struct.musb, %struct.musb* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %88

79:                                               ; preds = %73
  %80 = load i32, i32* @TUSB_PRCM_WHOSTDISCON, align 4
  %81 = load i32, i32* @TUSB_PRCM_WBUS, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @TUSB_PRCM_WVBUS, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @TUSB_PRCM_WID, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %79, %78
  %89 = load %struct.musb*, %struct.musb** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @tusb_allow_idle(%struct.musb* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %57
  br label %93

93:                                               ; preds = %92, %72
  %94 = load %struct.musb*, %struct.musb** %3, align 8
  %95 = getelementptr inbounds %struct.musb, %struct.musb* %94, i32 0, i32 1
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  ret void
}

declare dso_local %struct.musb* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @time_after(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_otg_state_string(i32) #1

declare dso_local i32 @tusb_musb_set_vbus(%struct.musb*, i32) #1

declare dso_local i64 @is_host_active(%struct.musb*) #1

declare dso_local i32 @tusb_allow_idle(%struct.musb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
