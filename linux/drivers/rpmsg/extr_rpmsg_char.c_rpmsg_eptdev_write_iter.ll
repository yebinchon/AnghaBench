; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.rpmsg_eptdev* }
%struct.rpmsg_eptdev = type { i32, i32 }
%struct.iov_iter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @rpmsg_eptdev_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_eptdev_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.rpmsg_eptdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %11 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %6, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %15, align 8
  store %struct.rpmsg_eptdev* %16, %struct.rpmsg_eptdev** %7, align 8
  %17 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %18 = call i64 @iov_iter_count(%struct.iov_iter* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i64 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %91

27:                                               ; preds = %2
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %31 = call i32 @copy_from_iter_full(i8* %28, i64 %29, %struct.iov_iter* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EFAULT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %27
  %37 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %38 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %37, i32 0, i32 0
  %39 = call i64 @mutex_lock_interruptible(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @ERESTARTSYS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %78

44:                                               ; preds = %36
  %45 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %46 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @EPIPE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %74

52:                                               ; preds = %44
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %61 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @rpmsg_trysend(i32 %62, i8* %63, i64 %64)
  store i32 %65, i32* %10, align 4
  br label %73

66:                                               ; preds = %52
  %67 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %68 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @rpmsg_send(i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %7, align 8
  %76 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %41
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  br label %88

86:                                               ; preds = %78
  %87 = load i64, i64* %8, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i64 [ %85, %83 ], [ %87, %86 ]
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %33, %24
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @copy_from_iter_full(i8*, i64, %struct.iov_iter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @rpmsg_trysend(i32, i8*, i64) #1

declare dso_local i32 @rpmsg_send(i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
