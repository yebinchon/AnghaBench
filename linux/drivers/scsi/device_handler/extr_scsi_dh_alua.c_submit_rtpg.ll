; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_rtpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_submit_rtpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@MAINTENANCE_IN = common dso_local global i32 0, align 4
@ALUA_RTPG_EXT_HDR_UNSUPP = common dso_local global i32 0, align 4
@MI_REPORT_TARGET_PGS = common dso_local global i32 0, align 4
@MI_EXT_HDR_PARAM_FMT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ALUA_FAILOVER_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ALUA_FAILOVER_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*, i32, %struct.scsi_sense_hdr*, i32)* @submit_rtpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_rtpg(%struct.scsi_device* %0, i8* %1, i32 %2, %struct.scsi_sense_hdr* %3, i32 %4) #0 {
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sense_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.scsi_sense_hdr* %3, %struct.scsi_sense_hdr** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %19 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %24 = call i32 @memset(i32* %17, i32 0, i32 %23)
  %25 = load i32, i32* @MAINTENANCE_IN, align 4
  %26 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ALUA_RTPG_EXT_HDR_UNSUPP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @MI_REPORT_TARGET_PGS, align 4
  %33 = load i32, i32* @MI_EXT_HDR_PARAM_FMT, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %34, i32* %35, align 4
  br label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @MI_REPORT_TARGET_PGS, align 4
  %38 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds i32, i32* %17, i64 6
  %42 = call i32 @put_unaligned_be32(i32 %40, i32* %41)
  %43 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %9, align 8
  %48 = load i32, i32* @ALUA_FAILOVER_TIMEOUT, align 4
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* @ALUA_FAILOVER_RETRIES, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @scsi_execute(%struct.scsi_device* %43, i32* %17, i32 %44, i8* %45, i32 %46, i32* null, %struct.scsi_sense_hdr* %47, i32 %50, i32 %51, i32 %52, i32 0, i32* null)
  %54 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @put_unaligned_be32(i32, i32*) #2

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i32*, i32, i8*, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
