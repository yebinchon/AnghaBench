; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_ctio_to_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_ctio_to_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.req_que** }
%struct.req_que = type { i32, i64, i32** }
%struct.rsp_que = type { i32, %struct.req_que* }

@QLA_TGT_HANDLE_MASK = common dso_local global i64 0, align 8
@QLA_TGT_SKIP_HANDLE = common dso_local global i64 0, align 8
@ql_dbg_tgt_mgt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"qla_target(%d): CTIO completion with different QID %d handle %x\0A\00", align 1
@QLA_CMD_HANDLE_MASK = common dso_local global i64 0, align 8
@QLA_TGT_NULL_HANDLE = common dso_local global i64 0, align 8
@ql_dbg_tgt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"qla_target(%d): Wrong handle %x received\0A\00", align 1
@ql_dbg_async = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"qla_target(%d): Suspicious: unable to find the command with handle %x req->id %d rsp->id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"qla_target(%d): Wrong CTIO received: QLA24xx doesn't support NULL handles\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_qla_host*, %struct.rsp_que*, i64, i8*)* @qlt_ctio_to_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qlt_ctio_to_cmd(%struct.scsi_qla_host* %0, %struct.rsp_que* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.rsp_que*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.req_que*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @GET_QID(i64 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @QLA_TGT_HANDLE_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %16, %18
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @QLA_TGT_SKIP_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %142

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %30 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %29, i32 0, i32 1
  %31 = load %struct.req_que*, %struct.req_que** %30, align 8
  %32 = getelementptr inbounds %struct.req_que, %struct.req_que* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %37 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %36, i32 0, i32 1
  %38 = load %struct.req_que*, %struct.req_que** %37, align 8
  store %struct.req_que* %38, %struct.req_que** %11, align 8
  br label %72

39:                                               ; preds = %27
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.req_que**, %struct.req_que*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.req_que*, %struct.req_que** %44, i64 %46
  %48 = load %struct.req_que*, %struct.req_que** %47, align 8
  %49 = icmp ne %struct.req_que* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %39
  %51 = load i32, i32* @ql_dbg_tgt_mgt, align 4
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %57 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %51, %struct.scsi_qla_host* %52, i32 65546, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i64 %59)
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.req_que**, %struct.req_que*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.req_que*, %struct.req_que** %65, i64 %67
  %69 = load %struct.req_que*, %struct.req_que** %68, align 8
  store %struct.req_que* %69, %struct.req_que** %11, align 8
  br label %71

70:                                               ; preds = %39
  store i8* null, i8** %5, align 8
  br label %142

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %35
  %73 = load i64, i64* @QLA_CMD_HANDLE_MASK, align 8
  %74 = load i64, i64* %13, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @QLA_TGT_NULL_HANDLE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %72
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.req_que*, %struct.req_que** %11, align 8
  %82 = getelementptr inbounds %struct.req_que, %struct.req_que* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %80, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load i32, i32* @ql_dbg_tgt, align 4
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %92 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %89, %struct.scsi_qla_host* %90, i32 57426, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %93, i64 %94)
  store i8* null, i8** %5, align 8
  br label %142

96:                                               ; preds = %79
  %97 = load %struct.req_que*, %struct.req_que** %11, align 8
  %98 = getelementptr inbounds %struct.req_que, %struct.req_que* %97, i32 0, i32 2
  %99 = load i32**, i32*** %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp eq i8* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %96
  %110 = load i32, i32* @ql_dbg_async, align 4
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %113 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.req_que*, %struct.req_que** %11, align 8
  %117 = getelementptr inbounds %struct.req_que, %struct.req_que* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %120 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %110, %struct.scsi_qla_host* %111, i32 57427, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %114, i64 %115, i32 %118, i32 %121)
  store i8* null, i8** %5, align 8
  br label %142

123:                                              ; preds = %96
  %124 = load %struct.req_que*, %struct.req_que** %11, align 8
  %125 = getelementptr inbounds %struct.req_que, %struct.req_que* %124, i32 0, i32 2
  %126 = load i32**, i32*** %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  store i32* null, i32** %128, align 8
  br label %140

129:                                              ; preds = %72
  %130 = load i8*, i8** %9, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* @ql_dbg_tgt, align 4
  %134 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %135 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %136 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %133, %struct.scsi_qla_host* %134, i32 57428, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  store i8* null, i8** %5, align 8
  br label %142

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %123
  %141 = load i8*, i8** %10, align 8
  store i8* %141, i8** %5, align 8
  br label %142

142:                                              ; preds = %140, %132, %109, %88, %70, %26
  %143 = load i8*, i8** %5, align 8
  ret i8* %143
}

declare dso_local i32 @GET_QID(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
