; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_uwb_rc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-rc.c_uwb_rc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_rc* @uwb_rc_alloc() #0 {
  %1 = alloca %struct.uwb_rc*, align 8
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.uwb_rc* @kzalloc(i32 4, i32 %3)
  store %struct.uwb_rc* %4, %struct.uwb_rc** %2, align 8
  %5 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %6 = icmp eq %struct.uwb_rc* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.uwb_rc* null, %struct.uwb_rc** %1, align 8
  br label %12

8:                                                ; preds = %0
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %10 = call i32 @uwb_rc_init(%struct.uwb_rc* %9)
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  store %struct.uwb_rc* %11, %struct.uwb_rc** %1, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load %struct.uwb_rc*, %struct.uwb_rc** %1, align 8
  ret %struct.uwb_rc* %13
}

declare dso_local %struct.uwb_rc* @kzalloc(i32, i32) #1

declare dso_local i32 @uwb_rc_init(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
