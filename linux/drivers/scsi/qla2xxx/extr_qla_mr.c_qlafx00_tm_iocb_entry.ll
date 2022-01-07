; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_tm_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_tm_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.tsk_mgmt_entry_fx00 = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32)*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CS_COMPLETE = common dso_local global i64 0, align 8
@SS_RESPONSE_INFO_LEN_VALID = common dso_local global i64 0, align 8
@CS_INCOMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.tsk_mgmt_entry_fx00*, %struct.TYPE_10__*, i32, i32)* @qlafx00_tm_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_tm_iocb_entry(i32* %0, %struct.req_que* %1, %struct.tsk_mgmt_entry_fx00* %2, %struct.TYPE_10__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.req_que*, align 8
  %9 = alloca %struct.tsk_mgmt_entry_fx00*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.srb_iocb*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.req_que* %1, %struct.req_que** %8, align 8
  store %struct.tsk_mgmt_entry_fx00* %2, %struct.tsk_mgmt_entry_fx00** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store %struct.srb_iocb* %16, %struct.srb_iocb** %13, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load i64, i64* @CS_COMPLETE, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* @SS_RESPONSE_INFO_LEN_VALID, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %6
  %30 = load i64, i64* @CS_INCOMPLETE, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @cpu_to_le16(i32 %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.srb_iocb*, %struct.srb_iocb** %13, align 8
  %36 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = call i32 %41(%struct.TYPE_10__* %42, i32 0)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
