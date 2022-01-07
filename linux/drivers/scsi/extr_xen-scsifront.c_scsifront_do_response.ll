; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_do_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_do_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsifrnt_info = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.vscsiif_response = type { i64 }

@VSCSIIF_MAX_REQS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"illegal rqid %u returned by backend!\0A\00", align 1
@VSCSIIF_ACT_SCSI_CDB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscsifrnt_info*, %struct.vscsiif_response*)* @scsifront_do_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsifront_do_response(%struct.vscsifrnt_info* %0, %struct.vscsiif_response* %1) #0 {
  %3 = alloca %struct.vscsifrnt_info*, align 8
  %4 = alloca %struct.vscsiif_response*, align 8
  store %struct.vscsifrnt_info* %0, %struct.vscsifrnt_info** %3, align 8
  store %struct.vscsiif_response* %1, %struct.vscsiif_response** %4, align 8
  %5 = load %struct.vscsiif_response*, %struct.vscsiif_response** %4, align 8
  %6 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VSCSIIF_MAX_REQS, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load %struct.vscsiif_response*, %struct.vscsiif_response** %4, align 8
  %12 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %15 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @test_bit(i64 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %2
  %20 = phi i1 [ true, %2 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.vscsiif_response*, %struct.vscsiif_response** %4, align 8
  %23 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @WARN(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %30 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load %struct.vscsiif_response*, %struct.vscsiif_response** %4, align 8
  %33 = getelementptr inbounds %struct.vscsiif_response, %struct.vscsiif_response* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VSCSIIF_ACT_SCSI_CDB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %43 = load %struct.vscsiif_response*, %struct.vscsiif_response** %4, align 8
  %44 = call i32 @scsifront_cdb_cmd_done(%struct.vscsifrnt_info* %42, %struct.vscsiif_response* %43)
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %3, align 8
  %47 = load %struct.vscsiif_response*, %struct.vscsiif_response** %4, align 8
  %48 = call i32 @scsifront_sync_cmd_done(%struct.vscsifrnt_info* %46, %struct.vscsiif_response* %47)
  br label %49

49:                                               ; preds = %27, %45, %41
  ret void
}

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @scsifront_cdb_cmd_done(%struct.vscsifrnt_info*, %struct.vscsiif_response*) #1

declare dso_local i32 @scsifront_sync_cmd_done(%struct.vscsifrnt_info*, %struct.vscsiif_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
