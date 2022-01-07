; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_readcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_readcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_READCAP_ARR_SZ = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i32 0, align 4
@sdebug_sector_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_readcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_readcap(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sdebug_dev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %4, align 8
  %8 = load i32, i32* @SDEBUG_READCAP_ARR_SZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = call i32 (...) @get_sdebug_capacity()
  store i32 %12, i32* @sdebug_capacity, align 4
  %13 = load i32, i32* @SDEBUG_READCAP_ARR_SZ, align 4
  %14 = call i32 @memset(i8* %11, i32 0, i32 %13)
  %15 = load i32, i32* @sdebug_capacity, align 4
  %16 = icmp ult i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @sdebug_capacity, align 4
  %19 = sub i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds i8, i8* %11, i64 0
  %22 = call i32 @put_unaligned_be32(i32 %20, i8* %21)
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds i8, i8* %11, i64 0
  %25 = call i32 @put_unaligned_be32(i32 -1, i8* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @sdebug_sector_size, align 4
  %28 = getelementptr inbounds i8, i8* %11, i64 6
  %29 = call i32 @put_unaligned_be16(i32 %27, i8* %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = load i32, i32* @SDEBUG_READCAP_ARR_SZ, align 4
  %32 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %30, i8* %11, i32 %31)
  %33 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %33)
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @put_unaligned_be32(i32, i8*) #2

declare dso_local i32 @put_unaligned_be16(i32, i8*) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
