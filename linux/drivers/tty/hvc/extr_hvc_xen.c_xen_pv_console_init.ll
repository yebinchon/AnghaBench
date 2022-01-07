; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_pv_console_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_pv_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xencons_info = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@xen_start_info = common dso_local global %struct.TYPE_6__* null, align 8
@HVC_COOKIE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xencons_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xen_pv_console_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pv_console_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xencons_info*, align 8
  %3 = call i32 (...) @xen_pv_domain()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %45

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @xen_start_info, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %45

18:                                               ; preds = %8
  %19 = load i32, i32* @HVC_COOKIE, align 4
  %20 = call %struct.xencons_info* @vtermno_to_xencons(i32 %19)
  store %struct.xencons_info* %20, %struct.xencons_info** %2, align 8
  %21 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %22 = icmp ne %struct.xencons_info* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.xencons_info* @kzalloc(i32 8, i32 %24)
  store %struct.xencons_info* %25, %struct.xencons_info** %2, align 8
  %26 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %27 = icmp ne %struct.xencons_info* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %45

31:                                               ; preds = %23
  br label %39

32:                                               ; preds = %18
  %33 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %34 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %45

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %31
  %40 = call i32 @spin_lock(i32* @xencons_lock)
  %41 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %42 = load i32, i32* @HVC_COOKIE, align 4
  %43 = call i32 @xencons_info_pv_init(%struct.xencons_info* %41, i32 %42)
  %44 = call i32 @spin_unlock(i32* @xencons_lock)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %39, %37, %28, %15, %5
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @xen_pv_domain(...) #1

declare dso_local %struct.xencons_info* @vtermno_to_xencons(i32) #1

declare dso_local %struct.xencons_info* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xencons_info_pv_init(%struct.xencons_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
