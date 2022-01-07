; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_prepare_req_desc_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_prepare_req_desc_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufshcd_lrb = type { i32, i64, %struct.utp_transfer_req_desc* }
%struct.utp_transfer_req_desc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i64, i8* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@UTP_DEVICE_TO_HOST = common dso_local global i32 0, align 4
@UPIU_CMD_FLAGS_READ = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UTP_HOST_TO_DEVICE = common dso_local global i32 0, align 4
@UPIU_CMD_FLAGS_WRITE = common dso_local global i32 0, align 4
@UTP_NO_DATA_TRANSFER = common dso_local global i32 0, align 4
@UPIU_CMD_FLAGS_NONE = common dso_local global i32 0, align 4
@UPIU_COMMAND_TYPE_OFFSET = common dso_local global i32 0, align 4
@UTP_REQ_DESC_INT_CMD = common dso_local global i32 0, align 4
@OCS_INVALID_COMMAND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufshcd_lrb*, i32*, i32)* @ufshcd_prepare_req_desc_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_prepare_req_desc_hdr(%struct.ufshcd_lrb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ufshcd_lrb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.utp_transfer_req_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufshcd_lrb* %0, %struct.ufshcd_lrb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %11 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %10, i32 0, i32 2
  %12 = load %struct.utp_transfer_req_desc*, %struct.utp_transfer_req_desc** %11, align 8
  store %struct.utp_transfer_req_desc* %12, %struct.utp_transfer_req_desc** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @UTP_DEVICE_TO_HOST, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @UPIU_CMD_FLAGS_READ, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @UTP_HOST_TO_DEVICE, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @UPIU_CMD_FLAGS_WRITE, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @UTP_NO_DATA_TRANSFER, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @UPIU_CMD_FLAGS_NONE, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %36 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UPIU_COMMAND_TYPE_OFFSET, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %34, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ufshcd_lrb*, %struct.ufshcd_lrb** %4, align 8
  %42 = getelementptr inbounds %struct.ufshcd_lrb, %struct.ufshcd_lrb* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load i32, i32* @UTP_REQ_DESC_INT_CMD, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %45, %33
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.utp_transfer_req_desc*, %struct.utp_transfer_req_desc** %7, align 8
  %53 = getelementptr inbounds %struct.utp_transfer_req_desc, %struct.utp_transfer_req_desc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  %55 = load %struct.utp_transfer_req_desc*, %struct.utp_transfer_req_desc** %7, align 8
  %56 = getelementptr inbounds %struct.utp_transfer_req_desc, %struct.utp_transfer_req_desc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @OCS_INVALID_COMMAND_STATUS, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.utp_transfer_req_desc*, %struct.utp_transfer_req_desc** %7, align 8
  %61 = getelementptr inbounds %struct.utp_transfer_req_desc, %struct.utp_transfer_req_desc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.utp_transfer_req_desc*, %struct.utp_transfer_req_desc** %7, align 8
  %64 = getelementptr inbounds %struct.utp_transfer_req_desc, %struct.utp_transfer_req_desc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.utp_transfer_req_desc*, %struct.utp_transfer_req_desc** %7, align 8
  %67 = getelementptr inbounds %struct.utp_transfer_req_desc, %struct.utp_transfer_req_desc* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
