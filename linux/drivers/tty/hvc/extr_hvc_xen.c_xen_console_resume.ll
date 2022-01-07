; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_console_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_console_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_info = type { i64, i32 }

@HVC_COOKIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_console_resume() #0 {
  %1 = alloca %struct.xencons_info*, align 8
  %2 = load i32, i32* @HVC_COOKIE, align 4
  %3 = call %struct.xencons_info* @vtermno_to_xencons(i32 %2)
  store %struct.xencons_info* %3, %struct.xencons_info** %1, align 8
  %4 = load %struct.xencons_info*, %struct.xencons_info** %1, align 8
  %5 = icmp ne %struct.xencons_info* %4, null
  br i1 %5, label %6, label %25

6:                                                ; preds = %0
  %7 = load %struct.xencons_info*, %struct.xencons_info** %1, align 8
  %8 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = call i32 (...) @xen_initial_domain()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.xencons_info*, %struct.xencons_info** %1, align 8
  %16 = call i32 @xen_console_update_evtchn(%struct.xencons_info* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.xencons_info*, %struct.xencons_info** %1, align 8
  %19 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.xencons_info*, %struct.xencons_info** %1, align 8
  %22 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @rebind_evtchn_irq(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %17, %6, %0
  ret void
}

declare dso_local %struct.xencons_info* @vtermno_to_xencons(i32) #1

declare dso_local i32 @xen_initial_domain(...) #1

declare dso_local i32 @xen_console_update_evtchn(%struct.xencons_info*) #1

declare dso_local i32 @rebind_evtchn_irq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
