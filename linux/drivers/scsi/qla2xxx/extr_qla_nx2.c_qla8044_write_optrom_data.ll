; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_write_optrom_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_write_optrom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QLA8044_MAX_OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@QLA8044_SECTOR_SIZE = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Done erase of sector=0x%x.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to erase the sector having address: 0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Got write for addr = 0x%x length=0x%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Failed to write flash in buffer mode, Reverting to slow-write.\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Done writing.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla8044_write_optrom_data(%struct.scsi_qla_host* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kcalloc(i32 %20, i32 4, i32 %21)
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %26, i32* %5, align 4
  br label %136

27:                                               ; preds = %4
  %28 = load i32*, i32** %16, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @memcpy(i32* %28, i8* %29, i32 %30)
  %32 = load i32*, i32** %16, align 8
  store i32* %32, i32** %17, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @QLA8044_MAX_OPTROM_BURST_DWORDS, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @QLA8044_SECTOR_SIZE, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @scsi_block_requests(i32 %45)
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %48 = call i32 @qla8044_flash_lock(%struct.scsi_qla_host* %47)
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %50 = call i32 @qla8044_unprotect_flash(%struct.scsi_qla_host* %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %74, %27
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @qla8044_erase_flash_sector(%struct.scsi_qla_host* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @ql_dbg_user, align 4
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %59, %struct.scsi_qla_host* %60, i32 45368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i32, i32* @ql_log_warn, align 4
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %66, %struct.scsi_qla_host* %67, i32 45345, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %124

70:                                               ; preds = %55
  %71 = load i32, i32* @QLA8044_SECTOR_SIZE, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load i32, i32* @ql_dbg_user, align 4
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %78, %struct.scsi_qla_host* %79, i32 45375, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %117, %77
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %120

87:                                               ; preds = %83
  %88 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @QLA8044_MAX_OPTROM_BURST_DWORDS, align 4
  %92 = call i32 @qla8044_write_flash_buffer_mode(%struct.scsi_qla_host* %88, i32* %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load i32, i32* @ql_log_warn, align 4
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %98 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %96, %struct.scsi_qla_host* %97, i32 45346, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @QLA8044_MAX_OPTROM_BURST_DWORDS, align 4
  %103 = call i32 @qla8044_write_flash_dword_mode(%struct.scsi_qla_host* %99, i32* %100, i32 %101, i32 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %95, %87
  %105 = load i32, i32* @QLA8044_MAX_OPTROM_BURST_DWORDS, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = load i32*, i32** %17, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 %107
  store i32* %109, i32** %17, align 8
  %110 = load i32, i32* @QLA8044_MAX_OPTROM_BURST_DWORDS, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %83

120:                                              ; preds = %83
  %121 = load i32, i32* @ql_dbg_user, align 4
  %122 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %123 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_dbg(i32 %121, %struct.scsi_qla_host* %122, i32 45363, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %65
  %125 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %126 = call i32 @qla8044_protect_flash(%struct.scsi_qla_host* %125)
  %127 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %128 = call i32 @qla8044_flash_unlock(%struct.scsi_qla_host* %127)
  %129 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %130 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @scsi_unblock_requests(i32 %131)
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @kfree(i32* %133)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %124, %25
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @qla8044_flash_lock(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_unprotect_flash(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_erase_flash_sector(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @qla8044_write_flash_buffer_mode(%struct.scsi_qla_host*, i32*, i32, i32) #1

declare dso_local i32 @qla8044_write_flash_dword_mode(%struct.scsi_qla_host*, i32*, i32, i32) #1

declare dso_local i32 @qla8044_protect_flash(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla8044_flash_unlock(%struct.scsi_qla_host*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
