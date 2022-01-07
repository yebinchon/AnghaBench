; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_internal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fc_host_statistics* (%struct.Scsi_Host*)* }
%struct.fc_host_statistics = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64)* @fc_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_stat_show(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.fc_internal*, align 8
  %9 = alloca %struct.fc_host_statistics*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.Scsi_Host* @transport_class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.fc_internal* @to_fc_internal(i32 %15)
  store %struct.fc_internal* %16, %struct.fc_internal** %8, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %19, 4
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = urem i64 %22, 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %3
  %26 = call i32 @WARN_ON(i32 1)
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.fc_internal*, %struct.fc_internal** %8, align 8
  %29 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.fc_host_statistics* (%struct.Scsi_Host*)*, %struct.fc_host_statistics* (%struct.Scsi_Host*)** %31, align 8
  %33 = icmp ne %struct.fc_host_statistics* (%struct.Scsi_Host*)* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.fc_internal*, %struct.fc_internal** %8, align 8
  %36 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.fc_host_statistics* (%struct.Scsi_Host*)*, %struct.fc_host_statistics* (%struct.Scsi_Host*)** %38, align 8
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %41 = call %struct.fc_host_statistics* %39(%struct.Scsi_Host* %40)
  store %struct.fc_host_statistics* %41, %struct.fc_host_statistics** %9, align 8
  %42 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %43 = icmp ne %struct.fc_host_statistics* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %9, align 8
  %47 = bitcast %struct.fc_host_statistics* %46 to i32*
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = bitcast i32* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @snprintf(i8* %45, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %44, %34
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local %struct.Scsi_Host* @transport_class_to_shost(%struct.device*) #1

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
