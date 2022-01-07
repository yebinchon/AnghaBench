; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_execute_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, %struct.se_device* }
%struct.se_device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.fd_dev = type { i32 }

@FD_MAX_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"FILEIO: Not able to process I/O of %u bytes due toFD_MAX_BYTES: %u iovec count limitation\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@FDBD_HAS_ASYNC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, %struct.scatterlist*, i32, i32)* @fd_execute_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_execute_rw(%struct.se_cmd* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca %struct.fd_dev*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 1
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  store %struct.se_device* %14, %struct.se_device** %10, align 8
  %15 = load %struct.se_device*, %struct.se_device** %10, align 8
  %16 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %15)
  store %struct.fd_dev* %16, %struct.fd_dev** %11, align 8
  %17 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FD_MAX_BYTES, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FD_MAX_BYTES, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %28, i32* %5, align 4
  br label %48

29:                                               ; preds = %4
  %30 = load %struct.fd_dev*, %struct.fd_dev** %11, align 8
  %31 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FDBD_HAS_ASYNC_IO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @fd_execute_rw_aio(%struct.se_cmd* %37, %struct.scatterlist* %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %29
  %43 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @fd_execute_rw_buffered(%struct.se_cmd* %43, %struct.scatterlist* %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %36, %22
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @fd_execute_rw_aio(%struct.se_cmd*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @fd_execute_rw_buffered(%struct.se_cmd*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
