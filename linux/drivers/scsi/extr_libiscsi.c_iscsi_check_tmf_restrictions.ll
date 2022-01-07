; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_check_tmf_restrictions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_check_tmf_restrictions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, %struct.TYPE_5__*, %struct.iscsi_conn* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_conn = type { i64, %struct.TYPE_6__*, %struct.iscsi_tm }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_tm = type { i32, i32, i32 }

@TMF_INITIAL = common dso_local global i64 0, align 8
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_TMFUNC = common dso_local global i32 0, align 4
@ISCSI_OP_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"task [op %x itt 0x%x/0x%x] rejected.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"task [op %x itt 0x%x/0x%x] fast abort.\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Preventing task %x/%x from sending data-out due to abort task in progress\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @iscsi_check_tmf_restrictions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_tmf_restrictions(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_tm*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %9, i32 0, i32 3
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %6, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 2
  store %struct.iscsi_tm* %13, %struct.iscsi_tm** %7, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TMF_INITIAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

20:                                               ; preds = %2
  %21 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %22 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @ISCSI_OP_SCSI_TMFUNC, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %112

29:                                               ; preds = %20
  %30 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %31 = call i32 @ISCSI_TM_FUNC_VALUE(%struct.iscsi_tm* %30)
  switch i32 %31, label %111 [
    i32 129, label %32
    i32 128, label %47
    i32 130, label %85
  ]

32:                                               ; preds = %29
  %33 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %34 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %33, i32 0, i32 2
  %35 = call i32 @scsilun_to_int(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %36, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %112

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %29, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ISCSI_OP_SCSI_DATA_OUT, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @iscsi_conn_printk(i32 %52, %struct.iscsi_conn* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %112

64:                                               ; preds = %47
  %65 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %66 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load i32, i32* @KERN_INFO, align 4
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %79 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @iscsi_conn_printk(i32 %72, %struct.iscsi_conn* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77, i32 %80)
  %82 = load i32, i32* @EACCES, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %112

84:                                               ; preds = %64
  br label %111

85:                                               ; preds = %29
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ISCSI_OP_SCSI_DATA_OUT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %94 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %89
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %99 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %102 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %105 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ISCSI_DBG_SESSION(%struct.TYPE_6__* %100, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load i32, i32* @EACCES, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %112

110:                                              ; preds = %89, %85
  br label %111

111:                                              ; preds = %29, %110, %84
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %97, %71, %51, %45, %28, %19
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @ISCSI_TM_FUNC_VALUE(%struct.iscsi_tm*) #1

declare dso_local i32 @scsilun_to_int(i32*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32, i32, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
