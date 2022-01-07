; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_exlogins_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_set_exlogins_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@ql2xexlogins = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EXLOGIN count: %d.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to get exlogin status.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"EXLOGIN: max_logins=%d, portdb=0x%x, total=%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"EXLOGIN: requested size=0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to allocate memory for exlogin_buf_dma.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Setup extended login buffer  ****FAILED****.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_set_exlogins_buffer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %8, align 8
  %12 = load i64, i64* @ql2xexlogins, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %15, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %18 = call i32 @IS_EXLOGIN_OFFLD_CAPABLE(%struct.qla_hw_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %21, i32* %2, align 4
  br label %117

22:                                               ; preds = %16
  %23 = load i32, i32* @ql_log_info, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load i64, i64* @ql2xexlogins, align 8
  %26 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %23, %struct.TYPE_7__* %24, i32 53281, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %25)
  store i64 0, i64* %6, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 @qla_get_exlogin_status(%struct.TYPE_7__* %27, i64* %5, i64* %6)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @QLA_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @ql_log_fatal, align 4
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 @ql_log_pci(i32 %33, %struct.TYPE_8__* %36, i32 53289, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %117

39:                                               ; preds = %22
  %40 = load i64, i64* @ql2xexlogins, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  br label %47

45:                                               ; preds = %39
  %46 = load i64, i64* @ql2xexlogins, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = mul nsw i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %47
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %59 = call i32 @qla2x00_free_exlogin_buffer(%struct.qla_hw_data* %58)
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @ql_log_info, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %63, %struct.TYPE_7__* %64, i32 53284, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %66, i64 %67)
  %69 = load i32, i32* @ql_log_info, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %69, %struct.TYPE_7__* %70, i32 53285, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @dma_alloc_coherent(i32* %78, i64 %81, i32* %83, i32 %84)
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %57
  %93 = load i32, i32* @ql_log_fatal, align 4
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i32 @ql_log_pci(i32 %93, %struct.TYPE_8__* %96, i32 53290, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %117

100:                                              ; preds = %57
  br label %101

101:                                              ; preds = %100, %47
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %104 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @qla_set_exlogin_mem_cfg(%struct.TYPE_7__* %102, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @ql_log_fatal, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %110, %struct.TYPE_7__* %111, i32 53299, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %114 = call i32 @qla2x00_free_exlogin_buffer(%struct.qla_hw_data* %113)
  br label %115

115:                                              ; preds = %109, %101
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %92, %32, %20, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @IS_EXLOGIN_OFFLD_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @qla_get_exlogin_status(%struct.TYPE_7__*, i64*, i64*) #1

declare dso_local i32 @ql_log_pci(i32, %struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @qla2x00_free_exlogin_buffer(%struct.qla_hw_data*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @qla_set_exlogin_mem_cfg(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
