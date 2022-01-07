; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_request_free_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_grant-table.c_gnttab_request_free_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnttab_free_callback = type { void (i8*)*, %struct.gnttab_free_callback*, i32, i8* }

@gnttab_list_lock = common dso_local global i32 0, align 4
@gnttab_free_callback_list = common dso_local global %struct.gnttab_free_callback* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnttab_request_free_callback(%struct.gnttab_free_callback* %0, void (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gnttab_free_callback*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gnttab_free_callback*, align 8
  store %struct.gnttab_free_callback* %0, %struct.gnttab_free_callback** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @gnttab_list_lock, i64 %11)
  %13 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  store %struct.gnttab_free_callback* %13, %struct.gnttab_free_callback** %10, align 8
  br label %14

14:                                               ; preds = %22, %4
  %15 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %10, align 8
  %16 = icmp ne %struct.gnttab_free_callback* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %10, align 8
  %19 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %20 = icmp eq %struct.gnttab_free_callback* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %41

22:                                               ; preds = %17
  %23 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %10, align 8
  %24 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %23, i32 0, i32 1
  %25 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %24, align 8
  store %struct.gnttab_free_callback* %25, %struct.gnttab_free_callback** %10, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load void (i8*)*, void (i8*)** %6, align 8
  %28 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %29 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %28, i32 0, i32 0
  store void (i8*)* %27, void (i8*)** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %32 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %35 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  %37 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  %38 = getelementptr inbounds %struct.gnttab_free_callback, %struct.gnttab_free_callback* %37, i32 0, i32 1
  store %struct.gnttab_free_callback* %36, %struct.gnttab_free_callback** %38, align 8
  %39 = load %struct.gnttab_free_callback*, %struct.gnttab_free_callback** %5, align 8
  store %struct.gnttab_free_callback* %39, %struct.gnttab_free_callback** @gnttab_free_callback_list, align 8
  %40 = call i32 (...) @check_free_callbacks()
  br label %41

41:                                               ; preds = %26, %21
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @gnttab_list_lock, i64 %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @check_free_callbacks(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
