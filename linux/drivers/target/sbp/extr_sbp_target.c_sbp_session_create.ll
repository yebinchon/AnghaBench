; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_session = type { i32, i32, i32, i32, i32 }
%struct.sbp_tpg = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%016llx\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@session_maintenance_work = common dso_local global i32 0, align 4
@TARGET_PROT_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to init se_session\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp_session* (%struct.sbp_tpg*, i32)* @sbp_session_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp_session* @sbp_session_create(%struct.sbp_tpg* %0, i32 %1) #0 {
  %3 = alloca %struct.sbp_session*, align 8
  %4 = alloca %struct.sbp_tpg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbp_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [17 x i8], align 16
  store %struct.sbp_tpg* %0, %struct.sbp_tpg** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @snprintf(i8* %9, i32 17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sbp_session* @kmalloc(i32 20, i32 %12)
  store %struct.sbp_session* %13, %struct.sbp_session** %6, align 8
  %14 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %15 = icmp ne %struct.sbp_session* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sbp_session* @ERR_PTR(i32 %18)
  store %struct.sbp_session* %19, %struct.sbp_session** %3, align 8
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %22 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %25 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %28 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %27, i32 0, i32 2
  %29 = load i32, i32* @session_maintenance_work, align 4
  %30 = call i32 @INIT_DELAYED_WORK(i32* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %33 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sbp_tpg*, %struct.sbp_tpg** %4, align 8
  %35 = getelementptr inbounds %struct.sbp_tpg, %struct.sbp_tpg* %34, i32 0, i32 0
  %36 = load i32, i32* @TARGET_PROT_NORMAL, align 4
  %37 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %38 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %39 = call i32 @target_setup_session(i32* %35, i32 128, i32 4, i32 %36, i8* %37, %struct.sbp_session* %38, i32* null)
  %40 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %41 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %43 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %20
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %50 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  %54 = call i32 @kfree(%struct.sbp_session* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.sbp_session* @ERR_PTR(i32 %55)
  store %struct.sbp_session* %56, %struct.sbp_session** %3, align 8
  br label %59

57:                                               ; preds = %20
  %58 = load %struct.sbp_session*, %struct.sbp_session** %6, align 8
  store %struct.sbp_session* %58, %struct.sbp_session** %3, align 8
  br label %59

59:                                               ; preds = %57, %47, %16
  %60 = load %struct.sbp_session*, %struct.sbp_session** %3, align 8
  ret %struct.sbp_session* %60
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sbp_session* @kmalloc(i32, i32) #1

declare dso_local %struct.sbp_session* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @target_setup_session(i32*, i32, i32, i32, i8*, %struct.sbp_session*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.sbp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
