; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla25xx_read_optrom_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla25xx_read_optrom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to allocate memory for optrom burst read (%x KB).\0A\00", align 1
@OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unable to burst-read optrom segment (%x/%x/%llx).\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Reverting to slow-read.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qla25xx_read_optrom_data(%struct.scsi_qla_host* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 0
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %17, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %22 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %4
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %26 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %30 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %34 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %38 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %28, %24, %4
  br label %52

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 4095
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %147

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %147

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %147

57:                                               ; preds = %52
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @dma_alloc_coherent(i32* %61, i32 %62, i64* %11, i32 %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @ql_log_warn, align 4
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %70 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %71 = sdiv i32 %70, 1024
  %72 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %68, %struct.scsi_qla_host* %69, i32 204, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %147

73:                                               ; preds = %57
  %74 = load i8*, i8** %7, align 8
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %13, align 8
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 2
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 2
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %120, %73
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %137

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @flash_data_addr(%struct.qla_hw_data* %93, i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @qla2x00_dump_ram(%struct.scsi_qla_host* %91, i64 %92, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %90
  %101 = load i32, i32* @ql_log_warn, align 4
  %102 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @flash_data_addr(%struct.qla_hw_data* %104, i32 %105)
  %107 = load i64, i64* %11, align 8
  %108 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %101, %struct.scsi_qla_host* %102, i32 245, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i64 %107)
  %109 = load i32, i32* @ql_log_warn, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %111 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, ...) @ql_log(i32 %109, %struct.scsi_qla_host* %110, i32 246, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %113 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @dma_free_coherent(i32* %115, i32 %116, i8* %117, i64 %118)
  br label %147

120:                                              ; preds = %90
  %121 = load i32*, i32** %13, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* %16, align 4
  %124 = mul nsw i32 %123, 4
  %125 = call i32 @memcpy(i32* %121, i8* %122, i32 %124)
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %15, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %16, align 4
  %133 = mul nsw i32 %132, 4
  %134 = load i32*, i32** %13, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %13, align 8
  br label %81

137:                                              ; preds = %81
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @dma_free_coherent(i32* %141, i32 %142, i8* %143, i64 %144)
  %146 = load i8*, i8** %7, align 8
  store i8* %146, i8** %5, align 8
  br label %153

147:                                              ; preds = %100, %67, %56, %50, %45
  %148 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i8* @qla24xx_read_optrom_data(%struct.scsi_qla_host* %148, i8* %149, i32 %150, i32 %151)
  store i8* %152, i8** %5, align 8
  br label %153

153:                                              ; preds = %147, %137
  %154 = load i8*, i8** %5, align 8
  ret i8* %154
}

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_dump_ram(%struct.scsi_qla_host*, i64, i32, i32) #1

declare dso_local i32 @flash_data_addr(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @qla24xx_read_optrom_data(%struct.scsi_qla_host*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
