; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xxx_nack_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xxx_nack_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.nack_to_isp = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }

@__const.qla24xxx_nack_iocb_entry.func = private unnamed_addr constant [5 x i8] c"nack\00", align 1
@NOTIFY_ACK_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.nack_to_isp*)* @qla24xxx_nack_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xxx_nack_iocb_entry(i32* %0, %struct.req_que* %1, %struct.nack_to_isp* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.nack_to_isp*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.nack_to_isp* %2, %struct.nack_to_isp** %6, align 8
  %10 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.qla24xxx_nack_iocb_entry.func, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %13 = load %struct.req_que*, %struct.req_que** %5, align 8
  %14 = load %struct.nack_to_isp*, %struct.nack_to_isp** %6, align 8
  %15 = call %struct.TYPE_8__* @qla2x00_get_sp_from_handle(i32* %11, i8* %12, %struct.req_que* %13, %struct.nack_to_isp* %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.nack_to_isp*, %struct.nack_to_isp** %6, align 8
  %21 = getelementptr inbounds %struct.nack_to_isp, %struct.nack_to_isp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @NOTIFY_ACK_SUCCESS, align 4
  %26 = call i64 @cpu_to_le16(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 %33(%struct.TYPE_8__* %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_8__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.nack_to_isp*) #2

declare dso_local i64 @cpu_to_le16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
