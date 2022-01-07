; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_flash_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for optrom burst write (%x KB).\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to unprotect flash for update.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to erase sector: address=%x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to burst-write optrom segment (%x/%x/%llx).\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Reverting to slow-write.\0A\00", align 1
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Unable to program flash address=%x data=%x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unable to protect flash after update.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*, i32, i32)* @qla82xx_write_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_write_flash_data(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 0
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %15, align 8
  store i32 -1, i32* %9, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 4095
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @dma_alloc_coherent(i32* %33, i32 %34, i64* %12, i32 %35)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ql_log_warn, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %42 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %43 = sdiv i32 %42, 1024
  %44 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %40, %struct.scsi_qla_host* %41, i32 45083, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %29
  br label %46

46:                                               ; preds = %45, %25, %21, %4
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %52 = call i32 @qla82xx_unprotect_flash(%struct.qla_hw_data* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @ql_log_warn, align 4
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %58 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %56, %struct.scsi_qla_host* %57, i32 45084, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %178

59:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %161, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %168

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @qla82xx_erase_sector(%struct.qla_hw_data* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @ql_log_warn, align 4
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %76, %struct.scsi_qla_host* %77, i32 45085, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %168

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %144

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %144

90:                                               ; preds = %84
  %91 = load i8*, i8** %13, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %94 = call i32 @memcpy(i8* %91, i32* %92, i32 %93)
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %103 = call i32 @qla2x00_load_ram(%struct.scsi_qla_host* %95, i64 %96, i32 %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @QLA_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %90
  %108 = load i32, i32* @ql_log_warn, align 4
  %109 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %112 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %113, %114
  %116 = load i64, i64* %12, align 8
  %117 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %108, %struct.scsi_qla_host* %109, i32 45086, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %115, i64 %116)
  %118 = load i32, i32* @ql_log_warn, align 4
  %119 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %120 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %118, %struct.scsi_qla_host* %119, i32 45087, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @dma_free_coherent(i32* %124, i32 %125, i8* %126, i64 %127)
  store i8* null, i8** %13, align 8
  br label %143

129:                                              ; preds = %90
  %130 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load i32*, i32** %6, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %6, align 8
  br label %161

143:                                              ; preds = %107
  br label %144

144:                                              ; preds = %143, %84, %81
  %145 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = call i32 @qla82xx_write_flash_dword(%struct.qla_hw_data* %145, i32 %146, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load i32, i32* @ql_dbg_p3p, align 4
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ql_dbg(i32 %154, %struct.scsi_qla_host* %155, i32 45088, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %158)
  br label %168

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %160, %129
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 4
  store i32 %165, i32* %7, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %6, align 8
  br label %60

168:                                              ; preds = %153, %75, %60
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %170 = call i32 @qla82xx_protect_flash(%struct.qla_hw_data* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @ql_log_warn, align 4
  %175 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %176 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %174, %struct.scsi_qla_host* %175, i32 45089, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %177

177:                                              ; preds = %173, %168
  br label %178

178:                                              ; preds = %177, %55
  %179 = load i8*, i8** %13, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %183 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %187 = load i8*, i8** %13, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i32 @dma_free_coherent(i32* %185, i32 %186, i8* %187, i64 %188)
  br label %190

190:                                              ; preds = %181, %178
  %191 = load i32, i32* %9, align 4
  ret i32 %191
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_unprotect_flash(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_erase_sector(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qla2x00_load_ram(%struct.scsi_qla_host*, i64, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @qla82xx_write_flash_dword(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32) #1

declare dso_local i32 @qla82xx_protect_flash(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
