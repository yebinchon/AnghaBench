; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_host_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hosts.c_scsi_host_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.Scsi_Host = type { i64, i32, %struct.Scsi_Host*, %struct.TYPE_2__, i32, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@SHOST_CREATED = common dso_local global i64 0, align 8
@host_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @scsi_host_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_host_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @scsi_proc_hostdir_rm(i32 %12)
  %14 = call i32 (...) @rcu_barrier()
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @destroy_workqueue(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @kthread_stop(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @destroy_workqueue(i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SHOST_CREATED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 4
  %53 = call %struct.Scsi_Host* @dev_name(i32* %52)
  %54 = call i32 @kfree(%struct.Scsi_Host* %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %63 = call i32 @scsi_mq_destroy_tags(%struct.Scsi_Host* %62)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 2
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %66, align 8
  %68 = call i32 @kfree(%struct.Scsi_Host* %67)
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ida_simple_remove(i32* @host_index_ida, i32 %71)
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = icmp ne %struct.device* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @put_device(%struct.device* %76)
  br label %78

78:                                               ; preds = %75, %64
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %80 = call i32 @kfree(%struct.Scsi_Host* %79)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local i32 @scsi_proc_hostdir_rm(i32) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @kfree(%struct.Scsi_Host*) #1

declare dso_local %struct.Scsi_Host* @dev_name(i32*) #1

declare dso_local i32 @scsi_mq_destroy_tags(%struct.Scsi_Host*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
