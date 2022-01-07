; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_scsi_devreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_scsi_devreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.zfcp_fsf_req = type { i32 }
%struct.zfcp_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@zfcp_dbf_scsi_devreset.level = internal constant i32 1, align 4
@FCP_TMF_TGT_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"tr_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lr_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.scsi_device*, i64, %struct.zfcp_fsf_req*)* @zfcp_dbf_scsi_devreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_scsi_devreset(i8* %0, %struct.scsi_device* %1, i64 %2, %struct.zfcp_fsf_req* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zfcp_fsf_req*, align 8
  %9 = alloca %struct.zfcp_adapter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.zfcp_fsf_req* %3, %struct.zfcp_fsf_req** %8, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %20, %struct.zfcp_adapter** %9, align 8
  %21 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  %26 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debug_level_enabled(i32 %29, i32 1)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %52

37:                                               ; preds = %4
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @FCP_TMF_TGT_RESET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @memcpy(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %45

43:                                               ; preds = %37
  %44 = call i32 @memcpy(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %45

45:                                               ; preds = %43, %41
  %46 = getelementptr inbounds i8, i8* %24, i64 3
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @memcpy(i8* %46, i8* %47, i32 4)
  %49 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %51 = call i32 @zfcp_dbf_scsi_common(i8* %24, i32 1, %struct.scsi_device* %49, i32* null, %struct.zfcp_fsf_req* %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %45, %36
  %53 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %56 [
    i32 0, label %55
    i32 1, label %55
  ]

55:                                               ; preds = %52, %52
  ret void

56:                                               ; preds = %52
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @debug_level_enabled(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @zfcp_dbf_scsi_common(i8*, i32, %struct.scsi_device*, i32*, %struct.zfcp_fsf_req*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
