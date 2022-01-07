; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_fce_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla2x00_dfs_fce_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i64, i64, i32*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"FCE Trace Buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"In Pointer = %llx\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Base = %llx\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FCE Enable Registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%08x %08x %08x %08x %08x %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0A%llx: \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\0AEnd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qla2x00_dfs_fce_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_dfs_fce_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %9, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64)
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %7, align 8
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %104, %2
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fce_calc_size(i32 %78)
  %80 = sdiv i32 %79, 4
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  %84 = srem i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 %88, 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %92)
  br label %97

94:                                               ; preds = %82
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = call i32 @seq_putc(%struct.seq_file* %95, i8 signext 32)
  br label %97

97:                                               ; preds = %94, %86
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %7, align 8
  %101 = load i32, i32* %99, align 4
  %102 = sext i32 %101 to i64
  %103 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %74

107:                                              ; preds = %74
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = call i32 @seq_puts(%struct.seq_file* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @fce_calc_size(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
