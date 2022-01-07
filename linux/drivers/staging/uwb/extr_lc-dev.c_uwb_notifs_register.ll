; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-dev.c_uwb_notifs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_lc-dev.c_uwb_notifs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uwb_notifs_handler = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_notifs_register(%struct.uwb_rc* %0, %struct.uwb_notifs_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_notifs_handler*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_notifs_handler* %1, %struct.uwb_notifs_handler** %5, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i64 @mutex_lock_interruptible(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ERESTARTSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.uwb_notifs_handler*, %struct.uwb_notifs_handler** %5, align 8
  %16 = getelementptr inbounds %struct.uwb_notifs_handler, %struct.uwb_notifs_handler* %15, i32 0, i32 0
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %18 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @list_add(i32* %16, i32* %19)
  %21 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %22 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
