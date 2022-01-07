; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_debugfs.c_qedi_io_trace_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_debugfs.c_qedi_io_trace_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.qedi_ctx* }
%struct.qedi_ctx = type { i32, i32, %struct.qedi_io_log* }
%struct.qedi_io_log = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c" DUMP IO LOGS:\0A\00", align 1
@QEDI_IO_TRACE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"iodir-%d:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tid-0x%x:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cid-0x%x:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"lun-%d:\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"op-0x%02x:\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"0x%02x%02x%02x%02x:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"buflen-%d:\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sgcnt-%d:\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"res-0x%08x:\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"jif-%lu:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"blk_req_cpu-%d:\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"req_cpu-%d:\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"intr_cpu-%d:\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"blk_rsp_cpu-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qedi_io_trace_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_io_trace_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedi_ctx*, align 8
  %8 = alloca %struct.qedi_io_log*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %11, align 8
  store %struct.qedi_ctx* %12, %struct.qedi_ctx** %7, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %15, i32 0, i32 1
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %127, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @QEDI_IO_TRACE_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %130

26:                                               ; preds = %22
  %27 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %27, i32 0, i32 2
  %29 = load %struct.qedi_io_log*, %struct.qedi_io_log** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %29, i64 %31
  store %struct.qedi_io_log* %32, %struct.qedi_io_log** %8, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %35 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %40 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %45 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %50 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %55 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %60 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %65 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %64, i32 0, i32 8
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %70 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %75 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %63, i32 %68, i32 %73, i32 %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %82 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %87 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %92 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %97 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %102 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  %105 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %106 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %107 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %112 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load %struct.qedi_io_log*, %struct.qedi_io_log** %8, align 8
  %117 = getelementptr inbounds %struct.qedi_io_log, %struct.qedi_io_log* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @QEDI_IO_TRACE_SIZE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %26
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %26
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %22

130:                                              ; preds = %22
  %131 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %132 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %131, i32 0, i32 1
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
