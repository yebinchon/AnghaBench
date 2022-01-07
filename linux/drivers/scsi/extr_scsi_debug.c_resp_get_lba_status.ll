; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_get_lba_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_get_lba_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_GET_LBA_STATUS_LEN = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_get_lba_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_get_lba_status(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* @SDEBUG_GET_LBA_STATUS_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = call i32 @get_unaligned_be64(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 10
  %27 = call i32 @get_unaligned_be32(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 24
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

31:                                               ; preds = %2
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @check_device_access_params(%struct.scsi_cmnd* %32, i32 %33, i32 1, i32 0)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

39:                                               ; preds = %31
  %40 = call i64 (...) @scsi_debug_lbp()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @map_state(i32 %43, i32* %10)
  store i32 %44, i32* %9, align 4
  br label %57

45:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  %46 = call i32 (...) @get_sdebug_capacity()
  store i32 %46, i32* @sdebug_capacity, align 4
  %47 = load i32, i32* @sdebug_capacity, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp ule i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @sdebug_capacity, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  br label %56

55:                                               ; preds = %45
  store i32 -1, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %51
  br label %57

57:                                               ; preds = %56, %42
  %58 = load i32, i32* @SDEBUG_GET_LBA_STATUS_LEN, align 4
  %59 = call i32 @memset(i32* %21, i32 0, i32 %58)
  %60 = call i32 @put_unaligned_be32(i32 20, i32* %21)
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds i32, i32* %21, i64 8
  %63 = call i32 @put_unaligned_be64(i32 %61, i32* %62)
  %64 = load i32, i32* %10, align 4
  %65 = getelementptr inbounds i32, i32* %21, i64 16
  %66 = call i32 @put_unaligned_be32(i32 %64, i32* %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds i32, i32* %21, i64 20
  store i32 %70, i32* %71, align 16
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %73 = load i32, i32* @SDEBUG_GET_LBA_STATUS_LEN, align 4
  %74 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %72, i32* %21, i32 %73)
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

75:                                               ; preds = %57, %37, %30
  %76 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_unaligned_be64(i32*) #2

declare dso_local i32 @get_unaligned_be32(i32*) #2

declare dso_local i32 @check_device_access_params(%struct.scsi_cmnd*, i32, i32, i32) #2

declare dso_local i64 @scsi_debug_lbp(...) #2

declare dso_local i32 @map_state(i32, i32*) #2

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @put_unaligned_be32(i32, i32*) #2

declare dso_local i32 @put_unaligned_be64(i32, i32*) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
