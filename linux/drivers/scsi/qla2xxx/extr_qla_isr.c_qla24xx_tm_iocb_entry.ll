; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_tm_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_tm_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32 (%struct.TYPE_11__*, i32)*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sts_entry_24xx = type { i64, i64, i64, i64*, i32 }

@__const.qla24xx_tm_iocb_entry.func = private unnamed_addr constant [9 x i8] c"TMF-IOCB\00", align 1
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Async-%s error - hdl=%x entry-status(%x).\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i8* null, align 8
@CS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Async-%s error - hdl=%x completion status(%x).\0A\00", align 1
@SS_RESPONSE_INFO_LEN_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Async-%s error - hdl=%x not enough response(%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Async-%s error - hdl=%x response(%x).\0A\00", align 1
@ql_dbg_async = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, i8*)* @qla24xx_tm_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_tm_iocb_entry(i32* %0, %struct.req_que* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca %struct.sts_entry_24xx*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.qla24xx_tm_iocb_entry.func, i32 0, i32 0), i64 9, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.sts_entry_24xx*
  store %struct.sts_entry_24xx* %15, %struct.sts_entry_24xx** %12, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %18 = load %struct.req_que*, %struct.req_que** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.TYPE_11__* @qla2x00_get_sp_from_handle(i32* %16, i8* %17, %struct.req_que* %18, i8* %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %170

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store %struct.srb_iocb* %27, %struct.srb_iocb** %11, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %9, align 8
  %34 = load i64, i64* @QLA_SUCCESS, align 8
  %35 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %36 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 %34, i64* %38, align 8
  %39 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %40 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %24
  %44 = load i32, i32* @ql_log_warn, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %53 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ql_log(i32 %44, i32 %47, i32 20536, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %51, i64 %54)
  %56 = load i8*, i8** @QLA_FUNCTION_FAILED, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %59 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  br label %147

62:                                               ; preds = %24
  %63 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %64 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @CS_COMPLETE, align 4
  %67 = call i64 @cpu_to_le16(i32 %66)
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %62
  %70 = load i32, i32* @ql_log_warn, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %79 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ql_log(i32 %70, i32 %73, i32 20537, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %77, i64 %80)
  %82 = load i8*, i8** @QLA_FUNCTION_FAILED, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %85 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i64 %83, i64* %87, align 8
  br label %146

88:                                               ; preds = %62
  %89 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %90 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load i32, i32* @SS_RESPONSE_INFO_LEN_VALID, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %145

96:                                               ; preds = %88
  %97 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %98 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @le32_to_cpu(i64 %99)
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %115

102:                                              ; preds = %96
  %103 = load i32, i32* @ql_log_warn, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %112 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @ql_log(i32 %103, i32 %106, i32 20539, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %107, i32 %110, i64 %113)
  br label %144

115:                                              ; preds = %96
  %116 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %117 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %115
  %123 = load i32, i32* @ql_log_warn, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %132 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ql_log(i32 %123, i32 %126, i32 20540, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %127, i32 %130, i64 %135)
  %137 = load i8*, i8** @QLA_FUNCTION_FAILED, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %140 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %122, %115
  br label %144

144:                                              ; preds = %143, %102
  br label %145

145:                                              ; preds = %144, %88
  br label %146

146:                                              ; preds = %145, %69
  br label %147

147:                                              ; preds = %146, %43
  %148 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %149 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @QLA_SUCCESS, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = load i64, i64* @ql_dbg_async, align 8
  %157 = load i64, i64* @ql_dbg_buffer, align 8
  %158 = add nsw i64 %156, %157
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %12, align 8
  %163 = call i32 @ql_dump_buffer(i64 %158, i32 %161, i32 20565, %struct.sts_entry_24xx* %162, i32 40)
  br label %164

164:                                              ; preds = %155, %147
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %169 = call i32 %167(%struct.TYPE_11__* %168, i32 0)
  br label %170

170:                                              ; preds = %164, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, i8*) #2

declare dso_local i32 @ql_log(i32, i32, i32, i8*, i8*, i32, i64) #2

declare dso_local i64 @cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i64) #2

declare dso_local i32 @ql_dump_buffer(i64, i32, i32, %struct.sts_entry_24xx*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
