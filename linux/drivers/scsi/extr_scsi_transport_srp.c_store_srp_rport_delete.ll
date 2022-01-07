; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_store_srp_rport_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_srp.c_store_srp_rport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.srp_rport = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.srp_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.srp_rport*)* }

@ENOSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_srp_rport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_srp_rport_delete(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.srp_rport*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.srp_internal*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.srp_rport* @transport_class_to_srp_rport(%struct.device* %13)
  store %struct.srp_rport* %14, %struct.srp_rport** %10, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %11, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.srp_internal* @to_srp_internal(i32 %19)
  store %struct.srp_internal* %20, %struct.srp_internal** %12, align 8
  %21 = load %struct.srp_internal*, %struct.srp_internal** %12, align 8
  %22 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.srp_rport*)*, i32 (%struct.srp_rport*)** %24, align 8
  %26 = icmp ne i32 (%struct.srp_rport*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load %struct.srp_internal*, %struct.srp_internal** %12, align 8
  %29 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.srp_rport*)*, i32 (%struct.srp_rport*)** %31, align 8
  %33 = load %struct.srp_rport*, %struct.srp_rport** %10, align 8
  %34 = call i32 %32(%struct.srp_rport* %33)
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %5, align 8
  br label %39

36:                                               ; preds = %4
  %37 = load i64, i64* @ENOSYS, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local %struct.srp_rport* @transport_class_to_srp_rport(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.srp_internal* @to_srp_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
