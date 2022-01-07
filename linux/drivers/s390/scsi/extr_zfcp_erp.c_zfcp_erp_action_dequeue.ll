; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, i32, %struct.zfcp_adapter*, %struct.TYPE_2__*, i32, i32 }
%struct.zfcp_adapter = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_scsi_dev = type { i32 }

@ZFCP_STATUS_ERP_LOWMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"eractd1\00", align 1
@ZFCP_STATUS_COMMON_ERP_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*)* @zfcp_erp_action_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_action_dequeue(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_scsi_dev*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %5 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %5, i32 0, i32 2
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  store %struct.zfcp_adapter* %7, %struct.zfcp_adapter** %3, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %18, %1
  %30 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %31 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %30, i32 0, i32 5
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %34 = call i32 @zfcp_dbf_rec_run(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_erp_action* %33)
  %35 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %36 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %61 [
    i32 130, label %38
    i32 128, label %47
    i32 129, label %47
    i32 131, label %54
  ]

38:                                               ; preds = %29
  %39 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %40 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32 %41)
  store %struct.zfcp_scsi_dev* %42, %struct.zfcp_scsi_dev** %4, align 8
  %43 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %44 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %4, align 8
  %45 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %44, i32 0, i32 0
  %46 = call i32 @atomic_andnot(i32 %43, i32* %45)
  br label %61

47:                                               ; preds = %29, %29
  %48 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %49 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %50 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @atomic_andnot(i32 %48, i32* %52)
  br label %61

54:                                               ; preds = %29
  %55 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_INUSE, align 4
  %56 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %57 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %56, i32 0, i32 2
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %57, align 8
  %59 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %58, i32 0, i32 0
  %60 = call i32 @atomic_andnot(i32 %55, i32* %59)
  br label %61

61:                                               ; preds = %29, %54, %47, %38
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @zfcp_dbf_rec_run(i8*, %struct.zfcp_erp_action*) #1

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(i32) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
