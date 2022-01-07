; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_initial_domain_console_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_xen.c_xen_initial_domain_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_info = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@HVC_COOKIE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIRQ_CONSOLE = common dso_local global i32 0, align 4
@xencons_lock = common dso_local global i32 0, align 4
@xenconsoles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xen_initial_domain_console_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_initial_domain_console_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xencons_info*, align 8
  %3 = call i32 (...) @xen_initial_domain()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %35

8:                                                ; preds = %0
  %9 = load i32, i32* @HVC_COOKIE, align 4
  %10 = call %struct.xencons_info* @vtermno_to_xencons(i32 %9)
  store %struct.xencons_info* %10, %struct.xencons_info** %2, align 8
  %11 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %12 = icmp ne %struct.xencons_info* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.xencons_info* @kzalloc(i32 12, i32 %14)
  store %struct.xencons_info* %15, %struct.xencons_info** %2, align 8
  %16 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %17 = icmp ne %struct.xencons_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %35

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %8
  %23 = load i32, i32* @VIRQ_CONSOLE, align 4
  %24 = call i32 @bind_virq_to_irq(i32 %23, i32 0, i32 0)
  %25 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %26 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @HVC_COOKIE, align 4
  %28 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %29 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = call i32 @spin_lock(i32* @xencons_lock)
  %31 = load %struct.xencons_info*, %struct.xencons_info** %2, align 8
  %32 = getelementptr inbounds %struct.xencons_info, %struct.xencons_info* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %32, i32* @xenconsoles)
  %34 = call i32 @spin_unlock(i32* @xencons_lock)
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %22, %18, %5
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @xen_initial_domain(...) #1

declare dso_local %struct.xencons_info* @vtermno_to_xencons(i32) #1

declare dso_local %struct.xencons_info* @kzalloc(i32, i32) #1

declare dso_local i32 @bind_virq_to_irq(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
