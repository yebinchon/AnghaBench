; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_validate_master_nodeid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_validate_master_nodeid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rsb = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"find_rsb keep from_nodeid %d master %d dir %d\00", align 1
@ENOTBLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"validate master from_other %d master %d dir %d first %x %s\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"validate master from_dir %d master %d first %x %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_rsb*, i32)* @validate_master_nodeid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_master_nodeid(%struct.dlm_ls* %0, %struct.dlm_rsb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store %struct.dlm_rsb* %1, %struct.dlm_rsb** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %9 = call i64 @dlm_no_directory(%struct.dlm_ls* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %15 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %18 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (%struct.dlm_ls*, i8*, i32, i64, i32, ...) @log_error(%struct.dlm_ls* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i32 %19)
  %21 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %22 = call i32 @dlm_print_rsb(%struct.dlm_rsb* %21)
  %23 = load i32, i32* @ENOTBLK, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %40 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %43 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %46 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %49 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @log_debug(%struct.dlm_ls* %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %41, i32 %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %36, %31
  %53 = load i32, i32* @ENOTBLK, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %79

55:                                               ; preds = %25
  %56 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %57 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %64 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %67 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %70 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.dlm_ls*, i8*, i32, i64, i32, ...) @log_error(%struct.dlm_ls* %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %65, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %60, %55
  %74 = call i64 (...) @dlm_our_nodeid()
  %75 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %76 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %78 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %52, %11
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @dlm_no_directory(%struct.dlm_ls*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @dlm_print_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @dlm_our_nodeid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
