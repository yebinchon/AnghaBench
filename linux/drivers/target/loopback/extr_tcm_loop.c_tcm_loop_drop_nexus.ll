; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_drop_nexus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_drop_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcm_loop_tpg = type { %struct.tcm_loop_nexus*, i32, i32 }
%struct.tcm_loop_nexus = type { %struct.se_session* }
%struct.se_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Unable to remove TCM_Loop I_T Nexus with active TPG port count: %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"TCM_Loop_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcm_loop_tpg*)* @tcm_loop_drop_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_drop_nexus(%struct.tcm_loop_tpg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcm_loop_tpg*, align 8
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca %struct.tcm_loop_nexus*, align 8
  store %struct.tcm_loop_tpg* %0, %struct.tcm_loop_tpg** %3, align 8
  %6 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %7 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %6, i32 0, i32 0
  %8 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %7, align 8
  store %struct.tcm_loop_nexus* %8, %struct.tcm_loop_nexus** %5, align 8
  %9 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %10 = icmp ne %struct.tcm_loop_nexus* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %16 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %15, i32 0, i32 0
  %17 = load %struct.se_session*, %struct.se_session** %16, align 8
  store %struct.se_session* %17, %struct.se_session** %4, align 8
  %18 = load %struct.se_session*, %struct.se_session** %4, align 8
  %19 = icmp ne %struct.se_session* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %14
  %24 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %25 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %30 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %29, i32 0, i32 2
  %31 = call i64 @atomic_read(i32* %30)
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %23
  %36 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %37 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @tcm_loop_dump_proto_id(i32 %38)
  %40 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %41 = getelementptr inbounds %struct.tcm_loop_nexus, %struct.tcm_loop_nexus* %40, i32 0, i32 0
  %42 = load %struct.se_session*, %struct.se_session** %41, align 8
  %43 = getelementptr inbounds %struct.se_session, %struct.se_session* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %46)
  %48 = load %struct.se_session*, %struct.se_session** %4, align 8
  %49 = call i32 @target_remove_session(%struct.se_session* %48)
  %50 = load %struct.tcm_loop_tpg*, %struct.tcm_loop_tpg** %3, align 8
  %51 = getelementptr inbounds %struct.tcm_loop_tpg, %struct.tcm_loop_tpg* %50, i32 0, i32 0
  store %struct.tcm_loop_nexus* null, %struct.tcm_loop_nexus** %51, align 8
  %52 = load %struct.tcm_loop_nexus*, %struct.tcm_loop_nexus** %5, align 8
  %53 = call i32 @kfree(%struct.tcm_loop_nexus* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %35, %28, %20, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @tcm_loop_dump_proto_id(i32) #1

declare dso_local i32 @target_remove_session(%struct.se_session*) #1

declare dso_local i32 @kfree(%struct.tcm_loop_nexus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
