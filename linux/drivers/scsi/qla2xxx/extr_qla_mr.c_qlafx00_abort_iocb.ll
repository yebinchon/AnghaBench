; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_abort_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_abort_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_13__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.req_que* }
%struct.req_que = type { i32 }
%struct.TYPE_8__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.abort_iocb_entry_fx00 = type { i32, i8*, i8*, i8*, i8*, i32 }

@ABORT_IOCB_TYPE_FX00 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlafx00_abort_iocb(%struct.TYPE_12__* %0, %struct.abort_iocb_entry_fx00* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.abort_iocb_entry_fx00*, align 8
  %5 = alloca %struct.srb_iocb*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.req_que*, align 8
  %8 = alloca %struct.abort_iocb_entry_fx00, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.abort_iocb_entry_fx00* %1, %struct.abort_iocb_entry_fx00** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.srb_iocb* %11, %struct.srb_iocb** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.req_que*, %struct.req_que** %16, align 8
  store %struct.req_que* %17, %struct.req_que** %7, align 8
  %18 = call i32 @memset(%struct.abort_iocb_entry_fx00* %8, i32 0, i32 48)
  %19 = load i32, i32* @ABORT_IOCB_TYPE_FX00, align 4
  %20 = getelementptr inbounds %struct.abort_iocb_entry_fx00, %struct.abort_iocb_entry_fx00* %8, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.abort_iocb_entry_fx00, %struct.abort_iocb_entry_fx00* %8, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.req_que*, %struct.req_que** %7, align 8
  %23 = getelementptr inbounds %struct.req_que, %struct.req_que* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MAKE_HANDLE(i32 %24, i32 %27)
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.abort_iocb_entry_fx00, %struct.abort_iocb_entry_fx00* %8, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load %struct.req_que*, %struct.req_que** %7, align 8
  %32 = getelementptr inbounds %struct.req_que, %struct.req_que* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %35 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @MAKE_HANDLE(i32 %33, i32 %38)
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds %struct.abort_iocb_entry_fx00, %struct.abort_iocb_entry_fx00* %8, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = getelementptr inbounds %struct.abort_iocb_entry_fx00, %struct.abort_iocb_entry_fx00* %8, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load %struct.req_que*, %struct.req_que** %7, align 8
  %50 = getelementptr inbounds %struct.req_que, %struct.req_que* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.abort_iocb_entry_fx00, %struct.abort_iocb_entry_fx00* %8, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load %struct.abort_iocb_entry_fx00*, %struct.abort_iocb_entry_fx00** %4, align 8
  %55 = bitcast %struct.abort_iocb_entry_fx00* %54 to i8*
  %56 = call i32 @memcpy(i8* %55, %struct.abort_iocb_entry_fx00* %8, i32 48)
  %57 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @memset(%struct.abort_iocb_entry_fx00*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @MAKE_HANDLE(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.abort_iocb_entry_fx00*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
