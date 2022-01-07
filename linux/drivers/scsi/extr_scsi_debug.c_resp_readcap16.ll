; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_readcap16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_readcap16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_READCAP16_ARR_SZ = common dso_local global i32 0, align 4
@sdebug_capacity = common dso_local global i32 0, align 4
@sdebug_sector_size = common dso_local global i32 0, align 4
@sdebug_physblk_exp = common dso_local global i32 0, align 4
@sdebug_lowest_aligned = common dso_local global i32 0, align 4
@sdebug_lbprz = common dso_local global i32 0, align 4
@have_dif_prot = common dso_local global i64 0, align 8
@sdebug_dif = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_readcap16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_readcap16(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sdebug_dev_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %4, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @SDEBUG_READCAP16_ARR_SZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 10
  %18 = call i32 @get_unaligned_be32(i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = call i32 (...) @get_sdebug_capacity()
  store i32 %19, i32* @sdebug_capacity, align 4
  %20 = load i32, i32* @SDEBUG_READCAP16_ARR_SZ, align 4
  %21 = call i32 @memset(i8* %15, i32 0, i32 %20)
  %22 = load i32, i32* @sdebug_capacity, align 4
  %23 = sub nsw i32 %22, 1
  %24 = getelementptr inbounds i8, i8* %15, i64 0
  %25 = call i32 @put_unaligned_be64(i32 %23, i8* %24)
  %26 = load i32, i32* @sdebug_sector_size, align 4
  %27 = getelementptr inbounds i8, i8* %15, i64 8
  %28 = call i32 @put_unaligned_be32(i32 %26, i8* %27)
  %29 = load i32, i32* @sdebug_physblk_exp, align 4
  %30 = and i32 %29, 15
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, i8* %15, i64 13
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* @sdebug_lowest_aligned, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 63
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, i8* %15, i64 14
  store i8 %36, i8* %37, align 2
  %38 = call i64 (...) @scsi_debug_lbp()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %2
  %41 = getelementptr inbounds i8, i8* %15, i64 14
  %42 = load i8, i8* %41, align 2
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, 128
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 2
  %46 = load i32, i32* @sdebug_lbprz, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = getelementptr inbounds i8, i8* %15, i64 14
  %51 = load i8, i8* %50, align 2
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, 64
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 2
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55, %2
  %57 = load i32, i32* @sdebug_lowest_aligned, align 4
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, i8* %15, i64 15
  store i8 %59, i8* %60, align 1
  %61 = load i64, i64* @have_dif_prot, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* @sdebug_dif, align 4
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 %65, 1
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds i8, i8* %15, i64 12
  store i8 %67, i8* %68, align 4
  %69 = getelementptr inbounds i8, i8* %15, i64 12
  %70 = load i8, i8* %69, align 4
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, 1
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %69, align 4
  br label %74

74:                                               ; preds = %63, %56
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @SDEBUG_READCAP16_ARR_SZ, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  %79 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %75, i8* %15, i32 %78)
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_unaligned_be32(i8*) #2

declare dso_local i32 @get_sdebug_capacity(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @put_unaligned_be64(i32, i8*) #2

declare dso_local i32 @put_unaligned_be32(i32, i8*) #2

declare dso_local i64 @scsi_debug_lbp(...) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
