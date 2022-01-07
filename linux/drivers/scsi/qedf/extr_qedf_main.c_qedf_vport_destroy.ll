; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_vport_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_vport_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { %struct.fc_lport* }
%struct.fc_lport = type { i64, i64, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.qedf_ctx = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"qedf is NULL.\0A\00", align 1
@QEDF_UNLOADING = common dso_local global i32 0, align 4
@LPORT_ST_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*)* @qedf_vport_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_vport_destroy(%struct.fc_vport* %0) #0 {
  %2 = alloca %struct.fc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.qedf_ctx*, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %2, align 8
  %7 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %8 = call %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %3, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %9)
  store %struct.fc_lport* %10, %struct.fc_lport** %4, align 8
  %11 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %12 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %11, i32 0, i32 0
  %13 = load %struct.fc_lport*, %struct.fc_lport** %12, align 8
  store %struct.fc_lport* %13, %struct.fc_lport** %5, align 8
  %14 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %15 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %14)
  store %struct.qedf_ctx* %15, %struct.qedf_ctx** %6, align 8
  %16 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %17 = icmp ne %struct.qedf_ctx* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = call i32 @QEDF_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %67

20:                                               ; preds = %1
  %21 = load i32, i32* @QEDF_UNLOADING, align 4
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %26 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 3
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %35 = call i32 @fc_fabric_logoff(%struct.fc_lport* %34)
  %36 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %37 = call i32 @fc_lport_destroy(%struct.fc_lport* %36)
  %38 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @fc_remove_host(i64 %40)
  %42 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %43 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @scsi_remove_host(i64 %44)
  %46 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LPORT_ST_READY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %20
  %52 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %53 = call i32 @fc_exch_mgr_free(%struct.fc_lport* %52)
  br label %54

54:                                               ; preds = %51, %20
  %55 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %56 = call i32 @fc_lport_free_stats(%struct.fc_lport* %55)
  %57 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %58 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %63 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @scsi_host_put(i64 %64)
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %18
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport*) #1

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_fabric_logoff(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_destroy(%struct.fc_lport*) #1

declare dso_local i32 @fc_remove_host(i64) #1

declare dso_local i32 @scsi_remove_host(i64) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_free_stats(%struct.fc_lport*) #1

declare dso_local i32 @scsi_host_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
