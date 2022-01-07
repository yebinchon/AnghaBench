; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_psdev.c_coda_psdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_psdev.c_coda_psdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_comm = type { i32, i64, i32*, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.venus_comm* }

@current = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@MAX_CODADEVS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@coda_comms = common dso_local global %struct.venus_comm* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @coda_psdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_psdev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.venus_comm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @current, align 4
  %10 = call i32* @task_active_pid_ns(i32 %9)
  %11 = icmp ne i32* %10, @init_pid_ns
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = call i32* (...) @current_user_ns()
  %17 = icmp ne i32* %16, @init_user_ns
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @iminor(%struct.inode* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MAX_CODADEVS, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %26
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.venus_comm*, %struct.venus_comm** @coda_comms, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %36, i64 %38
  store %struct.venus_comm* %39, %struct.venus_comm** %6, align 8
  %40 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %41 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %44 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %33
  %48 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %49 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %53 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %52, i32 0, i32 5
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %56 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %55, i32 0, i32 4
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %59 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %58, i32 0, i32 3
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %62 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %64 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  store %struct.venus_comm* %65, %struct.venus_comm** %67, align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %47, %33
  %69 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %70 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %30, %18, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @task_active_pid_ns(i32) #1

declare dso_local i32* @current_user_ns(...) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
