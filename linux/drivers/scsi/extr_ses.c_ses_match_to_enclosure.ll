; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_match_to_enclosure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ses.c_ses_match_to_enclosure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.efd = type { i32*, i64 }

@ses_enclosure_find_by_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_device*, %struct.scsi_device*, i32)* @ses_match_to_enclosure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_match_to_enclosure(%struct.enclosure_device* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.efd, align 8
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %10 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.scsi_device* @to_scsi_device(i32 %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %7, align 8
  %14 = bitcast %struct.efd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %20 = call i32 @ses_enclosure_data_process(%struct.enclosure_device* %18, %struct.scsi_device* %19, i32 0)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @scsi_is_sas_rphy(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %32 = call i64 @sas_get_address(%struct.scsi_device* %31)
  %33 = getelementptr inbounds %struct.efd, %struct.efd* %8, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %21
  %35 = getelementptr inbounds %struct.efd, %struct.efd* %8, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.efd, %struct.efd* %8, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  %42 = load i32, i32* @ses_enclosure_find_by_addr, align 4
  %43 = call i32 @enclosure_for_each_device(i32 %42, %struct.efd* %8)
  br label %44

44:                                               ; preds = %38, %34
  ret void
}

declare dso_local %struct.scsi_device* @to_scsi_device(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ses_enclosure_data_process(%struct.enclosure_device*, %struct.scsi_device*, i32) #1

declare dso_local i64 @scsi_is_sas_rphy(i32) #1

declare dso_local i64 @sas_get_address(%struct.scsi_device*) #1

declare dso_local i32 @enclosure_for_each_device(i32, %struct.efd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
