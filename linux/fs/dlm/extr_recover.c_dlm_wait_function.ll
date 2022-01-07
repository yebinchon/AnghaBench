; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_dlm_wait_function.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recover.c_dlm_wait_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dlm_ls = type { i32, i32 }

@dlm_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4
@LSFL_RCOM_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dlm_wait_function timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"dlm_wait_function aborted\00", align 1
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_wait_function(%struct.dlm_ls* %0, i32 (%struct.dlm_ls*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i32 (%struct.dlm_ls*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i32 (%struct.dlm_ls*)* %1, i32 (%struct.dlm_ls*)** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %2, %41
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32 (%struct.dlm_ls*)*, i32 (%struct.dlm_ls*)** %5, align 8
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %14 = call i32 %12(%struct.dlm_ls* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %18 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i1 [ true, %8 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dlm_config, i32 0, i32 0), align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @wait_event_timeout(i32 %11, i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %42

30:                                               ; preds = %20
  %31 = load i32, i32* @LSFL_RCOM_WAIT, align 4
  %32 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %38 = call i32 @log_debug(%struct.dlm_ls* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %30
  br label %8

42:                                               ; preds = %29
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %44 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %48 = call i32 @log_debug(%struct.dlm_ls* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %36
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
