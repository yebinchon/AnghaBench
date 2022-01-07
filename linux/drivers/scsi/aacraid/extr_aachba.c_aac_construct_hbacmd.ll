; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_construct_hbacmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_construct_hbacmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_hba_cmd_req = type { i32, i8*, i8*, i8*, i8*, i32, i32, i8** }
%struct.fib = type { i64, i64 }
%struct.scsi_cmnd = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.aac_dev = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@FW_ERROR_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aac_hba_cmd_req* (%struct.fib*, %struct.scsi_cmnd*)* @aac_construct_hbacmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aac_hba_cmd_req* @aac_construct_hbacmd(%struct.fib* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fib*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.aac_hba_cmd_req*, align 8
  %6 = alloca %struct.aac_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fib* %0, %struct.fib** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.aac_dev*
  store %struct.aac_dev* %17, %struct.aac_dev** %6, align 8
  %18 = load %struct.fib*, %struct.fib** %3, align 8
  %19 = getelementptr inbounds %struct.fib, %struct.fib* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.aac_hba_cmd_req*
  store %struct.aac_hba_cmd_req* %21, %struct.aac_hba_cmd_req** %5, align 8
  %22 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %23 = call i32 @memset(%struct.aac_hba_cmd_req* %22, i32 0, i32 96)
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %34 [
    i32 128, label %27
    i32 130, label %30
    i32 131, label %30
    i32 129, label %33
  ]

27:                                               ; preds = %2
  %28 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %29 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  br label %35

30:                                               ; preds = %2, %2
  %31 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %32 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %35

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %2, %33
  br label %35

35:                                               ; preds = %34, %30, %27
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %43 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %42, i32 0, i32 7
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %41, i8** %45, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %47 = call i32 @scmd_channel(%struct.scsi_cmnd* %46)
  %48 = call i32 @aac_logical_to_phys(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = call i32 @scmd_id(%struct.scsi_cmnd* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %52 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %64 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %66 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32 %67, i32 %70, i32 %73)
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %75)
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %79 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.fib*, %struct.fib** %3, align 8
  %81 = getelementptr inbounds %struct.fib, %struct.fib* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = ashr i32 %84, 32
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %88 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %92 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @FW_ERROR_BUFFER_SIZE, align 4
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  %96 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %5, align 8
  ret %struct.aac_hba_cmd_req* %97
}

declare dso_local i32 @memset(%struct.aac_hba_cmd_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @aac_logical_to_phys(i32) #1

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
