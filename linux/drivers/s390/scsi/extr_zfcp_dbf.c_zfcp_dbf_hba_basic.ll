; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba }
%struct.zfcp_dbf_hba = type { i32, i32 }

@zfcp_dbf_hba_basic.level = internal constant i32 1, align 4
@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_HBA_BASIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_basic(i8* %0, %struct.zfcp_adapter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_dbf*, align 8
  %6 = alloca %struct.zfcp_dbf_hba*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %4, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 0
  %10 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  store %struct.zfcp_dbf* %10, %struct.zfcp_dbf** %5, align 8
  %11 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %12 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %11, i32 0, i32 2
  store %struct.zfcp_dbf_hba* %12, %struct.zfcp_dbf_hba** %6, align 8
  %13 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %14 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debug_level_enabled(i32 %15, i32 1)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %25 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %29 = call i32 @memset(%struct.zfcp_dbf_hba* %28, i32 0, i32 8)
  %30 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %35 = call i32 @memcpy(i32 %32, i8* %33, i32 %34)
  %36 = load i32, i32* @ZFCP_DBF_HBA_BASIC, align 4
  %37 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %38 = getelementptr inbounds %struct.zfcp_dbf_hba, %struct.zfcp_dbf_hba* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %40 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.zfcp_dbf_hba*, %struct.zfcp_dbf_hba** %6, align 8
  %43 = call i32 @debug_event(i32 %41, i32 1, %struct.zfcp_dbf_hba* %42, i32 8)
  %44 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %44, i32 0, i32 0
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
