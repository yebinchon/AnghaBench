; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lockspace.c_do_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lockspace.c_do_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32, i32 }

@KOBJ_ONLINE = common dso_local global i32 0, align 4
@KOBJ_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s the lockspace group...\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"joining\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@LSFL_UEVENT_WAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"group event done %d %d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"group %s failed %d %d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i32)* @do_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_uevent(%struct.dlm_ls* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %10 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %9, i32 0, i32 3
  %11 = load i32, i32* @KOBJ_ONLINE, align 4
  %12 = call i32 @kobject_uevent(i32* %10, i32 %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 3
  %16 = load i32, i32* @KOBJ_OFFLINE, align 4
  %17 = call i32 @kobject_uevent(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (%struct.dlm_ls*, i8*, ...) @log_rinfo(%struct.dlm_ls* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %26 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LSFL_UEVENT_WAIT, align 4
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %30 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %29, i32 0, i32 1
  %31 = call i32 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = call i32 @wait_event_interruptible(i32 %27, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.dlm_ls*, i8*, ...) @log_rinfo(%struct.dlm_ls* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  br label %46

42:                                               ; preds = %18
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %44 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %57 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @log_error(%struct.dlm_ls* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %46
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @log_rinfo(%struct.dlm_ls*, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
