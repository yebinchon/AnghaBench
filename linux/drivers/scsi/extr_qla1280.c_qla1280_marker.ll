; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_marker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.mrk_entry = type { i64, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"qla1280_marker\00", align 1
@MARKER_TYPE = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i32, i32, i32, i32)* @qla1280_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla1280_marker(%struct.scsi_qla_host* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mrk_entry*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @ENTER(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %14 = call i64 @qla1280_req_pkt(%struct.scsi_qla_host* %13)
  %15 = inttoptr i64 %14 to %struct.mrk_entry*
  store %struct.mrk_entry* %15, %struct.mrk_entry** %11, align 8
  %16 = icmp ne %struct.mrk_entry* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %5
  %18 = load i32, i32* @MARKER_TYPE, align 4
  %19 = load %struct.mrk_entry*, %struct.mrk_entry** %11, align 8
  %20 = getelementptr inbounds %struct.mrk_entry, %struct.mrk_entry* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.mrk_entry*, %struct.mrk_entry** %11, align 8
  %25 = getelementptr inbounds %struct.mrk_entry, %struct.mrk_entry* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BIT_7, align 4
  %31 = or i32 %29, %30
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %33, %32 ]
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.mrk_entry*, %struct.mrk_entry** %11, align 8
  %39 = getelementptr inbounds %struct.mrk_entry, %struct.mrk_entry* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.mrk_entry*, %struct.mrk_entry** %11, align 8
  %42 = getelementptr inbounds %struct.mrk_entry, %struct.mrk_entry* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mrk_entry*, %struct.mrk_entry** %11, align 8
  %44 = getelementptr inbounds %struct.mrk_entry, %struct.mrk_entry* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %46 = call i32 @qla1280_isp_cmd(%struct.scsi_qla_host* %45)
  br label %47

47:                                               ; preds = %34, %5
  %48 = call i32 @LEAVE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i64 @qla1280_req_pkt(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla1280_isp_cmd(%struct.scsi_qla_host*) #1

declare dso_local i32 @LEAVE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
