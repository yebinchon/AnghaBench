; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vcs_poll_data* }
%struct.vcs_poll_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @vcs_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcs_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vcs_poll_data*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %6, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %10, align 8
  store %struct.vcs_poll_data* %11, %struct.vcs_poll_data** %8, align 8
  %12 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %8, align 8
  %13 = icmp ne %struct.vcs_poll_data* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %34

18:                                               ; preds = %14
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = call %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* %19)
  store %struct.vcs_poll_data* %20, %struct.vcs_poll_data** %8, align 8
  %21 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %8, align 8
  %22 = icmp ne %struct.vcs_poll_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %8, align 8
  %32 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %31, i32 0, i32 0
  %33 = call i32 @fasync_helper(i32 %28, %struct.file* %29, i32 %30, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %23, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
