; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_show_configfs_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_show_configfs_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.fd_dev = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"TCM FILEIO ID: %u\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"        File: %s  Size: %llu  Mode: %s Async: %d\0A\00", align 1
@FDBD_HAS_BUFFERED_IO_WCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Buffered-WCE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"O_DSYNC\00", align 1
@FDBD_HAS_ASYNC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @fd_show_configfs_dev_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_show_configfs_dev_params(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fd_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %7)
  store %struct.fd_dev* %8, %struct.fd_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %14 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %22 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %25 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %28 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FDBD_HAS_BUFFERED_IO_WCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %35 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %36 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FDBD_HAS_ASYNC_IO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %26, i8* %34, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
