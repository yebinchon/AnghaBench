; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_alloc_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_alloc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32, i32, i32, %struct.iscsi_cls_session*, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.iscsi_transport* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_transport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_SESSION_FREE = common dso_local global i32 0, align 4
@session_recovery_timedout = common dso_local global i32 0, align 4
@__iscsi_unblock_session = common dso_local global i32 0, align 4
@__iscsi_block_session = common dso_local global i32 0, align 4
@__iscsi_unbind_session = common dso_local global i32 0, align 4
@iscsi_scan_session = common dso_local global i32 0, align 4
@iscsi_session_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Completed session allocation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_session* @iscsi_alloc_session(%struct.Scsi_Host* %0, %struct.iscsi_transport* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.iscsi_transport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_cls_session*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.iscsi_transport* %1, %struct.iscsi_transport** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 80, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.iscsi_cls_session* @kzalloc(i32 %12, i32 %13)
  store %struct.iscsi_cls_session* %14, %struct.iscsi_cls_session** %8, align 8
  %15 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %16 = icmp ne %struct.iscsi_cls_session* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.iscsi_cls_session* null, %struct.iscsi_cls_session** %4, align 8
  br label %82

18:                                               ; preds = %3
  %19 = load %struct.iscsi_transport*, %struct.iscsi_transport** %6, align 8
  %20 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %21 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %20, i32 0, i32 13
  store %struct.iscsi_transport* %19, %struct.iscsi_transport** %21, align 8
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %23 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %25 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %24, i32 0, i32 1
  store i32 120, i32* %25, align 4
  %26 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %27 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @ISCSI_SESSION_FREE, align 4
  %29 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %32 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %31, i32 0, i32 11
  %33 = load i32, i32* @session_recovery_timedout, align 4
  %34 = call i32 @INIT_DELAYED_WORK(i32* %32, i32 %33)
  %35 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %36 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %35, i32 0, i32 10
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %39 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %38, i32 0, i32 9
  %40 = load i32, i32* @__iscsi_unblock_session, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %43 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %42, i32 0, i32 8
  %44 = load i32, i32* @__iscsi_block_session, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %47 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %46, i32 0, i32 7
  %48 = load i32, i32* @__iscsi_unbind_session, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  %50 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %51 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %50, i32 0, i32 6
  %52 = load i32, i32* @iscsi_scan_session, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %55 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %54, i32 0, i32 5
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %58 = call i32 @scsi_host_get(%struct.Scsi_Host* %57)
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 0
  %61 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %62 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  %64 = load i32, i32* @iscsi_session_release, align 4
  %65 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %66 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %69 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %68, i32 0, i32 4
  %70 = call i32 @device_initialize(%struct.TYPE_2__* %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %18
  %74 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %75 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %74, i64 1
  %76 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %77 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %76, i32 0, i32 3
  store %struct.iscsi_cls_session* %75, %struct.iscsi_cls_session** %77, align 8
  br label %78

78:                                               ; preds = %73, %18
  %79 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  %80 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %8, align 8
  store %struct.iscsi_cls_session* %81, %struct.iscsi_cls_session** %4, align 8
  br label %82

82:                                               ; preds = %78, %17
  %83 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  ret %struct.iscsi_cls_session* %83
}

declare dso_local %struct.iscsi_cls_session* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @scsi_host_get(%struct.Scsi_Host*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
