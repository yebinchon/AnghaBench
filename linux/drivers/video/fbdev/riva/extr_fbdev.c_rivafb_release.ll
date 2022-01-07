; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_fbdev.c_rivafb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.riva_par* }
%struct.riva_par = type { i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32*)* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @rivafb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rivafb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.riva_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.riva_par*, %struct.riva_par** %8, align 8
  store %struct.riva_par* %9, %struct.riva_par** %6, align 8
  %10 = call i32 (...) @NVTRACE_ENTER()
  %11 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %12 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %15 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %20 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %26 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %58

29:                                               ; preds = %24
  %30 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %31 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %32, align 8
  %34 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %35 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %34, i32 0, i32 2
  %36 = call i32 %33(%struct.TYPE_5__* %35, i32 0)
  %37 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %38 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32 (%struct.TYPE_5__*, i32*)*, i32 (%struct.TYPE_5__*, i32*)** %39, align 8
  %41 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %42 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %41, i32 0, i32 2
  %43 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %44 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 %40(%struct.TYPE_5__* %42, i32* %45)
  %47 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %48 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %49 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %48, i32 0, i32 4
  %50 = call i32 @riva_load_state(%struct.riva_par* %47, %struct.TYPE_6__* %49)
  %51 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %52 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %53, align 8
  %55 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %56 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %55, i32 0, i32 2
  %57 = call i32 %54(%struct.TYPE_5__* %56, i32 1)
  br label %58

58:                                               ; preds = %29, %24
  %59 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %60 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %64 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = call i32 (...) @NVTRACE_LEAVE()
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @NVTRACE_ENTER(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @riva_load_state(%struct.riva_par*, %struct.TYPE_6__*) #1

declare dso_local i32 @NVTRACE_LEAVE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
