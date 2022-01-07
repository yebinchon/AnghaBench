; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_poll_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_poll_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcs_poll_data = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32, %struct.vcs_poll_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vcs_notifier = common dso_local global i32 0, align 4
@VT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vcs_poll_data* (%struct.file*)* @vcs_poll_data_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vcs_poll_data* @vcs_poll_data_get(%struct.file* %0) #0 {
  %2 = alloca %struct.vcs_poll_data*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vcs_poll_data*, align 8
  %5 = alloca %struct.vcs_poll_data*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 1
  %8 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %7, align 8
  store %struct.vcs_poll_data* %8, %struct.vcs_poll_data** %4, align 8
  store %struct.vcs_poll_data* null, %struct.vcs_poll_data** %5, align 8
  %9 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %10 = icmp ne %struct.vcs_poll_data* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  store %struct.vcs_poll_data* %12, %struct.vcs_poll_data** %2, align 8
  br label %70

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vcs_poll_data* @kzalloc(i32 16, i32 %14)
  store %struct.vcs_poll_data* %15, %struct.vcs_poll_data** %4, align 8
  %16 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %17 = icmp ne %struct.vcs_poll_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.vcs_poll_data* null, %struct.vcs_poll_data** %2, align 8
  br label %70

19:                                               ; preds = %13
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = call i32 @file_inode(%struct.file* %20)
  %22 = call i32 @console(i32 %21)
  %23 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %24 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %26 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %25, i32 0, i32 2
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load i32, i32* @vcs_notifier, align 4
  %29 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %30 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @VT_UPDATE, align 4
  %33 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %34 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %36 = getelementptr inbounds %struct.vcs_poll_data, %struct.vcs_poll_data* %35, i32 0, i32 0
  %37 = call i64 @register_vt_notifier(%struct.TYPE_2__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %19
  %40 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %41 = call i32 @kfree(%struct.vcs_poll_data* %40)
  store %struct.vcs_poll_data* null, %struct.vcs_poll_data** %2, align 8
  br label %70

42:                                               ; preds = %19
  %43 = load %struct.file*, %struct.file** %3, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.file*, %struct.file** %3, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %47, align 8
  %49 = icmp ne %struct.vcs_poll_data* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  %52 = load %struct.file*, %struct.file** %3, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  store %struct.vcs_poll_data* %51, %struct.vcs_poll_data** %53, align 8
  br label %59

54:                                               ; preds = %42
  %55 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  store %struct.vcs_poll_data* %55, %struct.vcs_poll_data** %5, align 8
  %56 = load %struct.file*, %struct.file** %3, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 1
  %58 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %57, align 8
  store %struct.vcs_poll_data* %58, %struct.vcs_poll_data** %4, align 8
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %5, align 8
  %64 = icmp ne %struct.vcs_poll_data* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %5, align 8
  %67 = call i32 @vcs_poll_data_free(%struct.vcs_poll_data* %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %4, align 8
  store %struct.vcs_poll_data* %69, %struct.vcs_poll_data** %2, align 8
  br label %70

70:                                               ; preds = %68, %39, %18, %11
  %71 = load %struct.vcs_poll_data*, %struct.vcs_poll_data** %2, align 8
  ret %struct.vcs_poll_data* %71
}

declare dso_local %struct.vcs_poll_data* @kzalloc(i32, i32) #1

declare dso_local i32 @console(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @register_vt_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.vcs_poll_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vcs_poll_data_free(%struct.vcs_poll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
