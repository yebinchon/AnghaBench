; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_mkdirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fbtft-core.c_fbtft_mkdirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__, %struct.fb_deferred_io*, %struct.fbtft_par* }
%struct.TYPE_2__ = type { i32 }
%struct.fb_deferred_io = type { i32 }
%struct.fbtft_par = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32, i32)* @fbtft_mkdirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbtft_mkdirty(%struct.fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fbtft_par*, align 8
  %8 = alloca %struct.fb_deferred_io*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 3
  %11 = load %struct.fbtft_par*, %struct.fbtft_par** %10, align 8
  store %struct.fbtft_par* %11, %struct.fbtft_par** %7, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 2
  %14 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %13, align 8
  store %struct.fb_deferred_io* %14, %struct.fb_deferred_io** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %25 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %29 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %35 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %42 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %51 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.fbtft_par*, %struct.fbtft_par** %7, align 8
  %54 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %53, i32 0, i32 2
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %8, align 8
  %59 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @schedule_delayed_work(i32* %57, i32 %60)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
