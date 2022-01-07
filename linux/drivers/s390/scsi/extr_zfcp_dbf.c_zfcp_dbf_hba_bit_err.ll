; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_bit_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_bit_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, %struct.fsf_status_read_buffer*, %struct.TYPE_4__* }
%struct.fsf_status_read_buffer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8 }
%struct.TYPE_4__ = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba }
%struct.zfcp_dbf_hba = type { %struct.TYPE_5__, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@zfcp_dbf_hba_bit_err.level = internal constant i32 1, align 4
@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_HBA_BIT = common dso_local global i32 0, align 4
@FSF_QTCB_UNSOLICITED_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_bit_err(i8* %0, %struct.zfcp_fsf_req* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.zfcp_dbf*, align 8
  %6 = alloca %struct.zfcp_dbf_hba*, align 8
  %7 = alloca %struct.fsf_status_read_buffer*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.zfcp_fsf_req* %1, %struct.zfcp_fsf_req** %4, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %12, align 8
  store %struct.zfcp_dbf* %13, %struct.zfcp_dbf** %5, align 8
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %15 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %14, i32 0, i32 2
  store %struct.zfcp_dbf_hba* %15, %struct.zfcp_dbf_hba** %6, align 8
  %16 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %16, i32 0, i32 2
  %18 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %17, align 8
  store %struct.fsf_status_read_buffer* %18, %struct.fsf_status_read_buffer** %7, align 8
  %19 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %20 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debug_level_enabled(i32 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %74

29:                                               ; preds = %2
  %30 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %35 = call i32 @memset(%struct.zfcp_dbf_hba* %34, i32 0, i32 32)
  %36 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %37 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %41 = call i32 @memcpy(i32* %38, i8* %39, i32 %40)
  %42 = load i32, i32* @ZFCP_DBF_HBA_BIT, align 4
  %43 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %44 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %49 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %54 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @FSF_QTCB_UNSOLICITED_STATUS, align 4
  %56 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %57 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %59 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.fsf_status_read_buffer*, %struct.fsf_status_read_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.fsf_status_read_buffer, %struct.fsf_status_read_buffer* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @memcpy(i32* %60, i8* %63, i32 4)
  %65 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %69 = call i32 @debug_event(i32 %67, i32 1, %struct.zfcp_dbf_hba* %68, i32 32)
  %70 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %71 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
