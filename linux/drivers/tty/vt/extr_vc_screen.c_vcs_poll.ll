; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vcs_poll_data = type { i32, i32 }

@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @vcs_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcs_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vcs_poll_data*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* %7)
  store %struct.vcs_poll_data* %8, %struct.vcs_poll_data** %5, align 8
  %9 = load i32, i32* @DEFAULT_POLLMASK, align 4
  %10 = load i32, i32* @EPOLLERR, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %5, align 8
  %13 = icmp ne %struct.vcs_poll_data* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %5, align 8
  %17 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, i32* %18)
  %20 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %5, align 8
  %21 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 128, label %23
    i32 129, label %27
    i32 0, label %33
  ]

23:                                               ; preds = %14
  %24 = load i32, i32* @DEFAULT_POLLMASK, align 4
  %25 = load i32, i32* @EPOLLPRI, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %6, align 4
  br label %35

27:                                               ; preds = %14
  %28 = load i32, i32* @DEFAULT_POLLMASK, align 4
  %29 = load i32, i32* @EPOLLHUP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EPOLLERR, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %14
  %34 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %14, %33, %27, %23
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
