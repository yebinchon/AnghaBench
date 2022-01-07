; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_stpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_stpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@SCSI_ACCESS_STATE_OPTIMAL = common dso_local global i8 0, align 1
@MAINTENANCE_OUT = common dso_local global i8 0, align 1
@MO_SET_TARGET_PGS = common dso_local global i8 0, align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ALUA_FAILOVER_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ALUA_FAILOVER_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, %struct.scsi_sense_hdr*)* @submit_stpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_stpg(%struct.scsi_device* %0, i32 %1, %struct.scsi_sense_hdr* %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_sense_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %6, align 8
  %12 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 8, i32* %10, align 4
  %16 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %17 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @memset(i8* %21, i32 0, i32 %22)
  %24 = load i8, i8* @SCSI_ACCESS_STATE_OPTIMAL, align 1
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 4
  store i8 %24, i8* %25, align 1
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 6
  %28 = call i32 @put_unaligned_be16(i32 %26, i8* %27)
  %29 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %30 = call i32 @memset(i8* %15, i32 0, i32 %29)
  %31 = load i8, i8* @MAINTENANCE_OUT, align 1
  %32 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %31, i8* %32, align 16
  %33 = load i8, i8* @MO_SET_TARGET_PGS, align 1
  %34 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds i8, i8* %15, i64 6
  %37 = call i32 @put_unaligned_be32(i32 %35, i8* %36)
  %38 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %6, align 8
  %43 = load i32, i32* @ALUA_FAILOVER_TIMEOUT, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @ALUA_FAILOVER_RETRIES, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @scsi_execute(%struct.scsi_device* %38, i8* %15, i32 %39, i8* %40, i32 %41, i32* null, %struct.scsi_sense_hdr* %42, i32 %45, i32 %46, i32 %47, i32 0, i32* null)
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @put_unaligned_be16(i32, i8*) #2

declare dso_local i32 @put_unaligned_be32(i32, i8*) #2

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
