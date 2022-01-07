; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_init_genl_cmd_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_init_genl_cmd_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i64, i32, %struct.tcmu_nl_cmd }
%struct.tcmu_nl_cmd = type { i32, i32, i32, %struct.tcmu_dev* }

@tcmu_kern_cmd_reply_supported = common dso_local global i32 0, align 4
@tcmu_nl_cmd_mutex = common dso_local global i32 0, align 4
@tcmu_netlink_blocked = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Failing nl cmd %d on %s. Interface is blocked.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@TCMU_CMD_UNSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"netlink cmd %d already executing on %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@tcmu_nl_cmd_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, i32)* @tcmu_init_genl_cmd_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_init_genl_cmd_reply(%struct.tcmu_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcmu_nl_cmd*, align 8
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %8 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %7, i32 0, i32 2
  store %struct.tcmu_nl_cmd* %8, %struct.tcmu_nl_cmd** %6, align 8
  %9 = load i32, i32* @tcmu_kern_cmd_reply_supported, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

12:                                               ; preds = %2
  %13 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %14 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %67

18:                                               ; preds = %12
  %19 = call i32 @mutex_lock(i32* @tcmu_nl_cmd_mutex)
  %20 = load i64, i64* @tcmu_netlink_blocked, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = call i32 @mutex_unlock(i32* @tcmu_nl_cmd_mutex)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %26 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %67

31:                                               ; preds = %18
  %32 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TCMU_CMD_UNSPEC, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = call i32 @mutex_unlock(i32* @tcmu_nl_cmd_mutex)
  %39 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %43 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %67

48:                                               ; preds = %31
  %49 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %50 = call i32 @memset(%struct.tcmu_nl_cmd* %49, i32 0, i32 24)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %55 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %55, i32 0, i32 3
  store %struct.tcmu_dev* %54, %struct.tcmu_dev** %56, align 8
  %57 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %57, i32 0, i32 2
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.tcmu_nl_cmd*, %struct.tcmu_nl_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.tcmu_nl_cmd, %struct.tcmu_nl_cmd* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %64, i32* @tcmu_nl_cmd_list)
  %66 = call i32 @mutex_unlock(i32* @tcmu_nl_cmd_mutex)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %48, %37, %22, %17, %11
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.tcmu_nl_cmd*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
