; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_check_mpio_paths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_check_mpio_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64 }
%struct.scsi_cmnd = type { i32 }

@DID_REQUEUE = common dso_local global i32 0, align 4
@MEGASAS_HBA_OPERATIONAL = common dso_local global i64 0, align 8
@DID_NO_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_check_mpio_paths(%struct.megasas_instance* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  store %struct.megasas_instance* null, %struct.megasas_instance** %5, align 8
  %7 = load i32, i32* @DID_REQUEUE, align 4
  %8 = shl i32 %7, 16
  store i32 %8, i32* %6, align 4
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %15 = call %struct.megasas_instance* @megasas_get_peer_instance(%struct.megasas_instance* %14)
  store %struct.megasas_instance* %15, %struct.megasas_instance** %5, align 8
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %17 = icmp ne %struct.megasas_instance* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 0
  %21 = call i64 @atomic_read(i32* %20)
  %22 = load i64, i64* @MEGASAS_HBA_OPERATIONAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @DID_NO_CONNECT, align 4
  %26 = shl i32 %25, 16
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %18, %13
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.megasas_instance* @megasas_get_peer_instance(%struct.megasas_instance*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
