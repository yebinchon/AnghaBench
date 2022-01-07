; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.c_v9fs_session_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.c_v9fs_session_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32, i32, i32, i32, i64, i32* }

@v9fs_sessionlist_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v9fs_session_close(%struct.v9fs_session_info* %0) #0 {
  %2 = alloca %struct.v9fs_session_info*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %2, align 8
  %3 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %2, align 8
  %4 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %2, align 8
  %9 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @p9_client_destroy(i32* %10)
  %12 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %2, align 8
  %13 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %2, align 8
  %16 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kfree(i32 %17)
  %19 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %2, align 8
  %20 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = call i32 @spin_lock(i32* @v9fs_sessionlist_lock)
  %24 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %2, align 8
  %25 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = call i32 @spin_unlock(i32* @v9fs_sessionlist_lock)
  ret void
}

declare dso_local i32 @p9_client_destroy(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
