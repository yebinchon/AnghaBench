; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_init_fc_host_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_init_fc_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32 }
%struct.zfcp_adapter = type { %struct.fc_host_statistics* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.zfcp_adapter*)* @zfcp_scsi_init_fc_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @zfcp_scsi_init_fc_host_stats(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.fc_host_statistics*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.fc_host_statistics*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 0
  %7 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %6, align 8
  %8 = icmp ne %struct.fc_host_statistics* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fc_host_statistics* @kmalloc(i32 4, i32 %10)
  store %struct.fc_host_statistics* %11, %struct.fc_host_statistics** %4, align 8
  %12 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %13 = icmp ne %struct.fc_host_statistics* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %27

15:                                               ; preds = %9
  %16 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 0
  store %struct.fc_host_statistics* %16, %struct.fc_host_statistics** %18, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %21, align 8
  %23 = call i32 @memset(%struct.fc_host_statistics* %22, i32 0, i32 4)
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %24, i32 0, i32 0
  %26 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %25, align 8
  store %struct.fc_host_statistics* %26, %struct.fc_host_statistics** %2, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %2, align 8
  ret %struct.fc_host_statistics* %28
}

declare dso_local %struct.fc_host_statistics* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.fc_host_statistics*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
