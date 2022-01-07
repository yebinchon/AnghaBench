; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/extr_core.c_mmp_unregister_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/extr_core.c_mmp_unregister_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_path = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@disp_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmp_unregister_path(%struct.mmp_path* %0) #0 {
  %2 = alloca %struct.mmp_path*, align 8
  %3 = alloca i32, align 4
  store %struct.mmp_path* %0, %struct.mmp_path** %2, align 8
  %4 = load %struct.mmp_path*, %struct.mmp_path** %2, align 8
  %5 = icmp ne %struct.mmp_path* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %37

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @disp_lock)
  %9 = load %struct.mmp_path*, %struct.mmp_path** %2, align 8
  %10 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %9, i32 0, i32 3
  %11 = call i32 @list_del(i32* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %7
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mmp_path*, %struct.mmp_path** %2, align 8
  %15 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.mmp_path*, %struct.mmp_path** %2, align 8
  %20 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_destroy(i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.mmp_path*, %struct.mmp_path** %2, align 8
  %32 = getelementptr inbounds %struct.mmp_path, %struct.mmp_path* %31, i32 0, i32 1
  %33 = call i32 @mutex_destroy(i32* %32)
  %34 = load %struct.mmp_path*, %struct.mmp_path** %2, align 8
  %35 = call i32 @kfree(%struct.mmp_path* %34)
  %36 = call i32 @mutex_unlock(i32* @disp_lock)
  br label %37

37:                                               ; preds = %30, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mmp_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
