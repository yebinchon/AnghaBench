; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_add_ballooned_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_balloon.c_add_ballooned_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xen_hotplug_unpopulated = common dso_local global i64 0, align 8
@BP_ECANCELED = common dso_local global i32 0, align 4
@balloon_mutex = common dso_local global i32 0, align 4
@balloon_wq = common dso_local global i32 0, align 4
@ballooned_pages = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@BP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @add_ballooned_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ballooned_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @xen_hotplug_unpopulated, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = call i32 (...) @reserve_additional_memory()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BP_ECANCELED, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = call i32 @mutex_unlock(i32* @balloon_mutex)
  %14 = load i32, i32* @balloon_wq, align 4
  %15 = call i32 @list_empty(i32* @ballooned_pages)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @wait_event(i32 %14, i32 %18)
  %20 = call i32 @mutex_lock(i32* @balloon_mutex)
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21, %1
  %23 = call i32 (...) @si_mem_available()
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @GFP_USER, align 4
  %32 = call i32 @decrease_reservation(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @BP_DONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36, %26, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @reserve_additional_memory(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si_mem_available(...) #1

declare dso_local i32 @decrease_reservation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
