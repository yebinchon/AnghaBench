; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_user.c_device_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dlm_user_proc* }
%struct.dlm_user_proc = type { i32, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @device_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dlm_user_proc*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %8, align 8
  store %struct.dlm_user_proc* %9, %struct.dlm_user_proc** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %12 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %11, i32 0, i32 2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  %15 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %16 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %19 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %18, i32 0, i32 1
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %24 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* @EPOLLIN, align 4
  %27 = load i32, i32* @EPOLLRDNORM, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
