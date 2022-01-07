; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_scsi_eh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_scsi_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_scsi }
%struct.zfcp_dbf_scsi = type { i32, i32, %struct.zfcp_dbf_scsi*, i32, i8*, i8*, i32, i32, i32, i32, i32 }

@zfcp_dbf_scsi_eh.level = internal constant i32 1, align 4
@ZFCP_DBF_TAG_LEN = common dso_local global i32 0, align 4
@ZFCP_DBF_SCSI_CMND = common dso_local global i32 0, align 4
@ZFCP_DBF_INVALID_LUN = common dso_local global i32 0, align 4
@ZFCP_DBF_SCSI_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_scsi_eh(i8* %0, %struct.zfcp_adapter* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zfcp_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.zfcp_dbf*, align 8
  %10 = alloca %struct.zfcp_dbf_scsi*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 0
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %13, align 8
  store %struct.zfcp_dbf* %14, %struct.zfcp_dbf** %9, align 8
  %15 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %16 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %15, i32 0, i32 2
  store %struct.zfcp_dbf_scsi* %16, %struct.zfcp_dbf_scsi** %10, align 8
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 0
  %19 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %18, align 8
  %20 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debug_level_enabled(i32 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %84

29:                                               ; preds = %4
  %30 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %31 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %30, i32 0, i32 0
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %35 = call i32 @memset(%struct.zfcp_dbf_scsi* %34, i32 0, i32 64)
  %36 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %37 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @ZFCP_DBF_TAG_LEN, align 4
  %41 = call i32 @memcpy(i32 %38, i8* %39, i32 %40)
  %42 = load i32, i32* @ZFCP_DBF_SCSI_CMND, align 4
  %43 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %44 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %49 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %48, i32 0, i32 8
  store i32 -1, i32* %49, align 8
  %50 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %51 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %50, i32 0, i32 7
  store i32 -1, i32* %51, align 4
  %52 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %53 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %52, i32 0, i32 6
  store i32 -1, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %56 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ZFCP_DBF_INVALID_LUN, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %61 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @ZFCP_DBF_INVALID_LUN, align 4
  %63 = ashr i32 %62, 32
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %67 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %69 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %68, i32 0, i32 3
  store i32 -1, i32* %69, align 8
  %70 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %71 = getelementptr inbounds %struct.zfcp_dbf_scsi, %struct.zfcp_dbf_scsi* %70, i32 0, i32 2
  %72 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %71, align 8
  %73 = load i32, i32* @ZFCP_DBF_SCSI_OPCODE, align 4
  %74 = call i32 @memset(%struct.zfcp_dbf_scsi* %72, i32 255, i32 %73)
  %75 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %76 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.zfcp_dbf_scsi*, %struct.zfcp_dbf_scsi** %10, align 8
  %79 = call i32 @debug_event(i32 %77, i32 1, %struct.zfcp_dbf_scsi* %78, i32 64)
  %80 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %9, align 8
  %81 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %80, i32 0, i32 0
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %29, %28
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_level_enabled(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_scsi*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_scsi*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
