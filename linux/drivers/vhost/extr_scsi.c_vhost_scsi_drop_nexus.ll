; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_drop_nexus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_drop_nexus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi_tpg = type { i64, i64, i32, %struct.vhost_scsi_nexus*, i32 }
%struct.vhost_scsi_nexus = type { %struct.se_session* }
%struct.se_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Unable to remove TCM_vhost I_T Nexus with active TPG port count: %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to remove TCM_vhost I_T Nexus with active TPG vhost count: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"TCM_vhost_ConfigFS: Removing I_T Nexus to emulated %s Initiator Port: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_scsi_tpg*)* @vhost_scsi_drop_nexus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_scsi_drop_nexus(%struct.vhost_scsi_tpg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhost_scsi_tpg*, align 8
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca %struct.vhost_scsi_nexus*, align 8
  store %struct.vhost_scsi_tpg* %0, %struct.vhost_scsi_tpg** %3, align 8
  %6 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %7 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %10 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %9, i32 0, i32 3
  %11 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %10, align 8
  store %struct.vhost_scsi_nexus* %11, %struct.vhost_scsi_nexus** %5, align 8
  %12 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %5, align 8
  %13 = icmp ne %struct.vhost_scsi_nexus* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %16 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %15, i32 0, i32 2
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %1
  %21 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %5, align 8
  %22 = getelementptr inbounds %struct.vhost_scsi_nexus, %struct.vhost_scsi_nexus* %21, i32 0, i32 0
  %23 = load %struct.se_session*, %struct.se_session** %22, align 8
  store %struct.se_session* %23, %struct.se_session** %4, align 8
  %24 = load %struct.se_session*, %struct.se_session** %4, align 8
  %25 = icmp ne %struct.se_session* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %28 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %27, i32 0, i32 2
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %20
  %33 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %34 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %39 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %38, i32 0, i32 2
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %42 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %32
  %48 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %49 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %54 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %57 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %86

62:                                               ; preds = %47
  %63 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %64 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @vhost_scsi_dump_proto_id(i32 %65)
  %67 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %5, align 8
  %68 = getelementptr inbounds %struct.vhost_scsi_nexus, %struct.vhost_scsi_nexus* %67, i32 0, i32 0
  %69 = load %struct.se_session*, %struct.se_session** %68, align 8
  %70 = getelementptr inbounds %struct.se_session, %struct.se_session* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %73)
  %75 = load %struct.se_session*, %struct.se_session** %4, align 8
  %76 = call i32 @vhost_scsi_free_cmd_map_res(%struct.se_session* %75)
  %77 = load %struct.se_session*, %struct.se_session** %4, align 8
  %78 = call i32 @target_remove_session(%struct.se_session* %77)
  %79 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %80 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %79, i32 0, i32 3
  store %struct.vhost_scsi_nexus* null, %struct.vhost_scsi_nexus** %80, align 8
  %81 = load %struct.vhost_scsi_tpg*, %struct.vhost_scsi_tpg** %3, align 8
  %82 = getelementptr inbounds %struct.vhost_scsi_tpg, %struct.vhost_scsi_tpg* %81, i32 0, i32 2
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.vhost_scsi_nexus*, %struct.vhost_scsi_nexus** %5, align 8
  %85 = call i32 @kfree(%struct.vhost_scsi_nexus* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %62, %52, %37, %26, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @vhost_scsi_dump_proto_id(i32) #1

declare dso_local i32 @vhost_scsi_free_cmd_map_res(%struct.se_session*) #1

declare dso_local i32 @target_remove_session(%struct.se_session*) #1

declare dso_local i32 @kfree(%struct.vhost_scsi_nexus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
