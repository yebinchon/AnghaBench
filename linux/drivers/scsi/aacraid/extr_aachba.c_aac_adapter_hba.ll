; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_adapter_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_adapter_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32, i64 }
%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.aac_hba_cmd_req = type { i32 }
%struct.aac_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HBA_IU_TYPE_SCSI_CMD_REQ = common dso_local global i32 0, align 4
@aac_hba_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*)* @aac_adapter_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_adapter_hba(%struct.fib* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.aac_hba_cmd_req*, align 8
  %7 = alloca %struct.aac_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.fib*, %struct.fib** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call %struct.aac_hba_cmd_req* @aac_construct_hbacmd(%struct.fib* %9, %struct.scsi_cmnd* %10)
  store %struct.aac_hba_cmd_req* %11, %struct.aac_hba_cmd_req** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.aac_dev*
  store %struct.aac_dev* %19, %struct.aac_dev** %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %6, align 8
  %22 = load %struct.aac_dev*, %struct.aac_dev** %7, align 8
  %23 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fib*, %struct.fib** %4, align 8
  %28 = getelementptr inbounds %struct.fib, %struct.fib* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @aac_build_sghba(%struct.scsi_cmnd* %20, %struct.aac_hba_cmd_req* %21, i32 %26, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %6, align 8
  %39 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = add i64 64, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.fib*, %struct.fib** %4, align 8
  %47 = getelementptr inbounds %struct.fib, %struct.fib* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @HBA_IU_TYPE_SCSI_CMD_REQ, align 4
  %49 = load %struct.fib*, %struct.fib** %4, align 8
  %50 = load i64, i64* @aac_hba_callback, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %53 = bitcast %struct.scsi_cmnd* %52 to i8*
  %54 = call i32 @aac_hba_send(i32 %48, %struct.fib* %49, i32 %51, i8* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %37, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.aac_hba_cmd_req* @aac_construct_hbacmd(%struct.fib*, %struct.scsi_cmnd*) #1

declare dso_local i64 @aac_build_sghba(%struct.scsi_cmnd*, %struct.aac_hba_cmd_req*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @aac_hba_send(i32, %struct.fib*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
