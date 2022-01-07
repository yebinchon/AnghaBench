; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_pr_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_pr_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }
%struct.TYPE_2__ = type { %struct.scsi_device* }

@PERSISTENT_RESERVE_OUT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PR command failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32, i32, i32)* @sd_pr_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_pr_command(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_device*, align 8
  %14 = alloca %struct.scsi_sense_hdr, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i32], align 16
  %17 = alloca [24 x i32], align 16
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.block_device*, %struct.block_device** %7, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @scsi_disk(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.scsi_device*, %struct.scsi_device** %22, align 8
  store %struct.scsi_device* %23, %struct.scsi_device** %13, align 8
  %24 = bitcast [16 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = bitcast [24 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 96, i1 false)
  %26 = load i32, i32* @PERSISTENT_RESERVE_OUT, align 4
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 5
  %33 = call i32 @put_unaligned_be32(i32 96, i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 0
  %36 = call i32 @put_unaligned_be64(i32 %34, i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 8
  %39 = call i32 @put_unaligned_be64(i32 %37, i32* %38)
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds [24 x i32], [24 x i32]* %17, i64 0, i64 20
  store i32 %40, i32* %41, align 16
  %42 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = bitcast [24 x i32]* %17 to i32**
  %46 = load i32, i32* @SD_TIMEOUT, align 4
  %47 = load i32, i32* @SD_MAX_RETRIES, align 4
  %48 = call i32 @scsi_execute_req(%struct.scsi_device* %42, i32* %43, i32 %44, i32** %45, i32 96, %struct.scsi_sense_hdr* %14, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @driver_byte(i32 %49)
  %51 = load i64, i64* @DRIVER_SENSE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %6
  %54 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %14)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @sdev_printk(i32 %57, %struct.scsi_device* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %62 = call i32 @scsi_print_sense_hdr(%struct.scsi_device* %61, i32* null, %struct.scsi_sense_hdr* %14)
  br label %63

63:                                               ; preds = %56, %53, %6
  %64 = load i32, i32* %15, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_2__* @scsi_disk(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i32*, i32, i32**, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @scsi_print_sense_hdr(%struct.scsi_device*, i32*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
