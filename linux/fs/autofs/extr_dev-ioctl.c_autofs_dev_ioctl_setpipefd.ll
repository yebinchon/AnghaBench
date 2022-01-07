; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_setpipefd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_autofs_dev_ioctl_setpipefd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { i32, i32, i32, %struct.file*, %struct.pid* }
%struct.pid = type { i32 }
%struct.autofs_dev_ioctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"not allowed to change PID namespace\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_setpipefd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_setpipefd(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_dev_ioctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pid*, align 8
  %11 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %6, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.pid* null, %struct.pid** %10, align 8
  %12 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %13 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %98

20:                                               ; preds = %3
  %21 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %7, align 8
  %22 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %26 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %20
  %35 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %36 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %98

40:                                               ; preds = %20
  %41 = load i32, i32* @current, align 4
  %42 = load i32, i32* @PIDTYPE_PGID, align 4
  %43 = call %struct.pid* @get_task_pid(i32 %41, i32 %42)
  store %struct.pid* %43, %struct.pid** %10, align 8
  %44 = load %struct.pid*, %struct.pid** %10, align 8
  %45 = call i64 @ns_of_pid(%struct.pid* %44)
  %46 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %47 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %46, i32 0, i32 4
  %48 = load %struct.pid*, %struct.pid** %47, align 8
  %49 = call i64 @ns_of_pid(%struct.pid* %48)
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %91

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.file* @fget(i32 %56)
  store %struct.file* %57, %struct.file** %11, align 8
  %58 = load %struct.file*, %struct.file** %11, align 8
  %59 = icmp ne %struct.file* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @EBADF, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %91

63:                                               ; preds = %55
  %64 = load %struct.file*, %struct.file** %11, align 8
  %65 = call i64 @autofs_prepare_pipe(%struct.file* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @EPIPE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.file*, %struct.file** %11, align 8
  %71 = call i32 @fput(%struct.file* %70)
  br label %91

72:                                               ; preds = %63
  %73 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %73, i32 0, i32 4
  %75 = load %struct.pid*, %struct.pid** %74, align 8
  %76 = load %struct.pid*, %struct.pid** %10, align 8
  %77 = call i32 @swap(%struct.pid* %75, %struct.pid* %76)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %80 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.file*, %struct.file** %11, align 8
  %82 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %83 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %82, i32 0, i32 3
  store %struct.file* %81, %struct.file** %83, align 8
  %84 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %87 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %67, %60, %51
  %92 = load %struct.pid*, %struct.pid** %10, align 8
  %93 = call i32 @put_pid(%struct.pid* %92)
  %94 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %95 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %94, i32 0, i32 2
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %91, %34, %17
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.pid* @get_task_pid(i32, i32) #1

declare dso_local i64 @ns_of_pid(%struct.pid*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i64 @autofs_prepare_pipe(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @swap(%struct.pid*, %struct.pid*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
