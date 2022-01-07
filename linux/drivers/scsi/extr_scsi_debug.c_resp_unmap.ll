; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32 }
%struct.unmap_block_desc = type { i32, i32 }

@sdebug_unmap_max_desc = common dso_local global i32 0, align 4
@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@INSUFF_RES_ASC = common dso_local global i32 0, align 4
@INSUFF_RES_ASCQ = common dso_local global i32 0, align 4
@atomic_rw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_unmap(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.unmap_block_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %15 = call i32 (...) @scsi_debug_lbp()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 7
  %23 = call i32 @get_unaligned_be16(i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = sub i32 %30, 8
  %32 = udiv i32 %31, 16
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @sdebug_unmap_max_desc, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = load i32, i32* @SDEB_IN_CDB, align 4
  %39 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %37, i32 %38, i32 7, i32 -1)
  %40 = load i32, i32* @check_condition_result, align 4
  store i32 %40, i32* %3, align 4
  br label %120

41:                                               ; preds = %18
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %42)
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i8* @kzalloc(i32 %43, i32 %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %51 = load i32, i32* @INSUFF_RES_ASC, align 4
  %52 = load i32, i32* @INSUFF_RES_ASCQ, align 4
  %53 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @check_condition_result, align 4
  store i32 %54, i32* %3, align 4
  br label %120

55:                                               ; preds = %41
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %58)
  %60 = call i32 @scsi_sg_copy_to_buffer(%struct.scsi_cmnd* %56, i8* %57, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = call i32 @get_unaligned_be16(i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = sub i32 %64, 2
  %66 = icmp ne i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = call i32 @get_unaligned_be16(i8* %70)
  %72 = load i32, i32* %10, align 4
  %73 = mul i32 %72, 16
  %74 = icmp ne i32 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 8
  %79 = bitcast i8* %78 to %struct.unmap_block_desc*
  store %struct.unmap_block_desc* %79, %struct.unmap_block_desc** %7, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @write_lock_irqsave(i32* @atomic_rw, i64 %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %110, %55
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load %struct.unmap_block_desc*, %struct.unmap_block_desc** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %87, i64 %89
  %91 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %90, i32 0, i32 1
  %92 = call i64 @get_unaligned_be64(i32* %91)
  store i64 %92, i64* %13, align 8
  %93 = load %struct.unmap_block_desc*, %struct.unmap_block_desc** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %93, i64 %95
  %97 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %96, i32 0, i32 0
  %98 = call i32 @get_unaligned_be32(i32* %97)
  store i32 %98, i32* %14, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @check_device_access_params(%struct.scsi_cmnd* %99, i64 %100, i32 %101, i32 1)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %86
  br label %114

106:                                              ; preds = %86
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @unmap_region(i64 %107, i32 %108)
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %82

113:                                              ; preds = %82
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %105
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @write_unlock_irqrestore(i32* @atomic_rw, i64 %115)
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @kfree(i8* %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %114, %48, %36, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @scsi_debug_lbp(...) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @scsi_sg_copy_to_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @check_device_access_params(%struct.scsi_cmnd*, i64, i32, i32) #1

declare dso_local i32 @unmap_region(i64, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
