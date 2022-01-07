; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c___put_lkb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c___put_lkb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32 }
%struct.dlm_lkb = type { i64, i32, i32 }

@kill_lkb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*)* @__put_lkb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__put_lkb(%struct.dlm_ls* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %8 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %14 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %13, i32 0, i32 1
  %15 = load i32, i32* @kill_lkb, align 4
  %16 = call i64 @kref_put(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 1
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @idr_remove(i32* %20, i32 %21)
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %24 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %27 = call i32 @detach_lkb(%struct.dlm_lkb* %26)
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %34 = call i64 @is_master_copy(%struct.dlm_lkb* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dlm_free_lvb(i64 %39)
  br label %41

41:                                               ; preds = %36, %32, %18
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %43 = call i32 @dlm_free_lkb(%struct.dlm_lkb* %42)
  store i32 1, i32* %3, align 4
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kref_put(i32*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @detach_lkb(%struct.dlm_lkb*) #1

declare dso_local i64 @is_master_copy(%struct.dlm_lkb*) #1

declare dso_local i32 @dlm_free_lvb(i64) #1

declare dso_local i32 @dlm_free_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
