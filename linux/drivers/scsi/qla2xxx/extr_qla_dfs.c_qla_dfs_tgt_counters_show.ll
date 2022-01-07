; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla_dfs_tgt_counters_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla_dfs_tgt_counters_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, %struct.qla_qpair**, %struct.qla_qpair* }
%struct.qla_qpair = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Target Counters\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"qla_core_sbt_cmd = %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"qla_core_ret_sta_ctio = %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"qla_core_ret_ctio = %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"core_qla_que_buf = %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"core_qla_snd_status = %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"core_qla_free_cmd = %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"num alloc iocb failed = %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"num term exchange sent = %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"num Q full sent = %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"DIF Inp Bytes = %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"DIF Outp Bytes = %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"DIF Inp Req = %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"DIF Outp Req = %lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"DIF Guard err = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"DIF Ref tag err = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"DIF App tag err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qla_dfs_tgt_counters_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_dfs_tgt_counters_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.qla_qpair*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %17, i32 0, i32 0
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %18, align 8
  store %struct.scsi_qla_host* %19, %struct.scsi_qla_host** %5, align 8
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.qla_qpair*, %struct.qla_qpair** %23, align 8
  store %struct.qla_qpair* %24, %struct.qla_qpair** %6, align 8
  %25 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %26 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %30 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %34 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %38 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  %41 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %42 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %46 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %50 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %13, align 8
  %53 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %54 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  %57 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %58 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %61

61:                                               ; preds = %136, %2
  %62 = load i64, i64* %16, align 8
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %64 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %69, label %139

69:                                               ; preds = %61
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.qla_qpair**, %struct.qla_qpair*** %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds %struct.qla_qpair*, %struct.qla_qpair** %74, i64 %75
  %77 = load %struct.qla_qpair*, %struct.qla_qpair** %76, align 8
  store %struct.qla_qpair* %77, %struct.qla_qpair** %6, align 8
  %78 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %79 = icmp ne %struct.qla_qpair* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %136

81:                                               ; preds = %69
  %82 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %83 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %7, align 8
  %88 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %89 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %8, align 8
  %94 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %95 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %9, align 8
  %100 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %101 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %10, align 8
  %106 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %107 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %11, align 8
  %112 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %113 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %12, align 8
  %118 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %119 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %13, align 8
  %124 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %125 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %14, align 8
  %130 = load %struct.qla_qpair*, %struct.qla_qpair** %6, align 8
  %131 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %15, align 8
  br label %136

136:                                              ; preds = %81, %80
  %137 = load i64, i64* %16, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %16, align 8
  br label %61

139:                                              ; preds = %61
  %140 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %141 = call i32 @seq_puts(%struct.seq_file* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %143 = load i64, i64* %7, align 8
  %144 = call i32 @seq_printf(%struct.seq_file* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %143)
  %145 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @seq_printf(%struct.seq_file* %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load i64, i64* %8, align 8
  %153 = call i32 @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %152)
  %154 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @seq_printf(%struct.seq_file* %154, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %155)
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = load i64, i64* %12, align 8
  %159 = call i32 @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %158)
  %160 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %161 = load i64, i64* %14, align 8
  %162 = call i32 @seq_printf(%struct.seq_file* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = load i64, i64* %15, align 8
  %165 = call i32 @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %164)
  %166 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %167 = load i64, i64* %13, align 8
  %168 = call i32 @seq_printf(%struct.seq_file* %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %167)
  %169 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %170 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %171 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @seq_printf(%struct.seq_file* %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i64 %174)
  %176 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %177 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %178 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @seq_printf(%struct.seq_file* %176, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %181)
  %183 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %184 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %185 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @seq_printf(%struct.seq_file* %183, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %188)
  %190 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %191 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %192 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @seq_printf(%struct.seq_file* %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i64 %195)
  %197 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %198 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %199 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @seq_printf(%struct.seq_file* %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i64 %202)
  %204 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %205 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %206 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @seq_printf(%struct.seq_file* %204, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i64 %209)
  %211 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %212 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %213 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @seq_printf(%struct.seq_file* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i64 %216)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
