; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.rsp_que**, %struct.rsp_que**, %struct.rsp_que**, i32, i32, i8*, i64, i64, i64, i32 }
%struct.req_que = type opaque
%struct.rsp_que = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for request queue ptrs.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for response queue ptrs.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate base queue pair memory.\0A\00", align 1
@ql2xmqsupport = common dso_local global i64 0, align 8
@ql2xnvmeenable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for queue pair ptrs.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, %struct.req_que*, %struct.rsp_que*)* @qla2x00_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_alloc_queues(%struct.qla_hw_data* %0, %struct.req_que* %1, %struct.rsp_que* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.rsp_que*, align 8
  %8 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store %struct.rsp_que* %2, %struct.rsp_que** %7, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @pci_get_drvdata(i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 8
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kcalloc(i64 %15, i32 8, i32 %16)
  %18 = bitcast i8* %17 to %struct.rsp_que**
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  store %struct.rsp_que** %18, %struct.rsp_que*** %20, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = load %struct.rsp_que**, %struct.rsp_que*** %22, align 8
  %24 = icmp ne %struct.rsp_que** %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ql_log_fatal, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ql_log(i32 %26, i32* %27, i32 59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %133

29:                                               ; preds = %3
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kcalloc(i64 %32, i32 8, i32 %33)
  %35 = bitcast i8* %34 to %struct.rsp_que**
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 1
  store %struct.rsp_que** %35, %struct.rsp_que*** %37, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 1
  %40 = load %struct.rsp_que**, %struct.rsp_que*** %39, align 8
  %41 = icmp ne %struct.rsp_que** %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ql_log_fatal, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @ql_log(i32 %43, i32* %44, i32 60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %126

46:                                               ; preds = %29
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.rsp_que** @kzalloc(i32 4, i32 %47)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 2
  store %struct.rsp_que** %48, %struct.rsp_que*** %50, align 8
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 2
  %53 = load %struct.rsp_que**, %struct.rsp_que*** %52, align 8
  %54 = icmp eq %struct.rsp_que** %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @ql_log_warn, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @ql_log(i32 %56, i32* %57, i32 224, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %119

59:                                               ; preds = %46
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.req_que*, %struct.req_que** %6, align 8
  %62 = bitcast %struct.req_que* %61 to %struct.rsp_que*
  %63 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %64 = call i32 @qla_init_base_qpair(i32* %60, %struct.rsp_que* %62, %struct.rsp_que* %63)
  %65 = load i64, i64* @ql2xmqsupport, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i64, i64* @ql2xnvmeenable, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %67, %59
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kcalloc(i64 %78, i32 8, i32 %79)
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %84 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %75
  %88 = load i32, i32* @ql_log_fatal, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @ql_log(i32 %88, i32* %89, i32 384, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %112

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %70, %67
  %93 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 1
  %96 = load %struct.rsp_que**, %struct.rsp_que*** %95, align 8
  %97 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %96, i64 0
  store %struct.rsp_que* %93, %struct.rsp_que** %97, align 8
  %98 = load %struct.req_que*, %struct.req_que** %6, align 8
  %99 = bitcast %struct.req_que* %98 to %struct.rsp_que*
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 0
  %102 = load %struct.rsp_que**, %struct.rsp_que*** %101, align 8
  %103 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %102, i64 0
  store %struct.rsp_que* %99, %struct.rsp_que** %103, align 8
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @set_bit(i32 0, i32 %106)
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @set_bit(i32 0, i32 %110)
  store i32 0, i32* %4, align 4
  br label %136

112:                                              ; preds = %87
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %114 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %113, i32 0, i32 2
  %115 = load %struct.rsp_que**, %struct.rsp_que*** %114, align 8
  %116 = call i32 @kfree(%struct.rsp_que** %115)
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %118 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %117, i32 0, i32 2
  store %struct.rsp_que** null, %struct.rsp_que*** %118, align 8
  br label %119

119:                                              ; preds = %112, %55
  %120 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %121 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %120, i32 0, i32 1
  %122 = load %struct.rsp_que**, %struct.rsp_que*** %121, align 8
  %123 = call i32 @kfree(%struct.rsp_que** %122)
  %124 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %125 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %124, i32 0, i32 1
  store %struct.rsp_que** null, %struct.rsp_que*** %125, align 8
  br label %126

126:                                              ; preds = %119, %42
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %128 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %127, i32 0, i32 0
  %129 = load %struct.rsp_que**, %struct.rsp_que*** %128, align 8
  %130 = call i32 @kfree(%struct.rsp_que** %129)
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %132 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %131, i32 0, i32 0
  store %struct.rsp_que** null, %struct.rsp_que*** %132, align 8
  br label %133

133:                                              ; preds = %126, %25
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %133, %92
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local %struct.rsp_que** @kzalloc(i32, i32) #1

declare dso_local i32 @qla_init_base_qpair(i32*, %struct.rsp_que*, %struct.rsp_que*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.rsp_que**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
