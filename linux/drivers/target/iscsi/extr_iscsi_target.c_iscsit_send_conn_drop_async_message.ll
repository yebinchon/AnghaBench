; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_conn_drop_async_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_send_conn_drop_async_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i64, i32, i64, i8* }
%struct.iscsi_conn = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_async = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i32*, i32, i8* }

@ISCSI_OP_ASYNC_EVENT = common dso_local global i8* null, align 8
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@RESERVED_ITT = common dso_local global i32 0, align 4
@ISCSI_ASYNC_MSG_DROPPING_CONNECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Sending Connection Dropped Async Message StatSN: 0x%08x, for CID: %hu on CID: %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @iscsit_send_conn_drop_async_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_send_conn_drop_async_message(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_async*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %4, align 8
  %6 = load i8*, i8** @ISCSI_OP_ASYNC_EVENT, align 8
  %7 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %7, i32 0, i32 5
  store i8* %6, i8** %8, align 8
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.iscsi_async*
  store %struct.iscsi_async* %12, %struct.iscsi_async** %5, align 8
  %13 = load i8*, i8** @ISCSI_OP_ASYNC_EVENT, align 8
  %14 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %14, i32 0, i32 9
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %17 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @RESERVED_ITT, align 4
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @put_unaligned_be64(i32 -1, i32* %27)
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = sext i32 %31 to i64
  %34 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %35 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_be32(i64 %38)
  %40 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @cpu_to_be32(i64 %46)
  %48 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %49 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = call i64 @atomic_read(i32* %53)
  %55 = call i8* @cpu_to_be32(i64 %54)
  %56 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @ISCSI_ASYNC_MSG_DROPPING_CONNECTION, align 4
  %59 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %60 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be16(i32 %63)
  %65 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_be16(i32 %73)
  %75 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_be16(i32 %83)
  %85 = load %struct.iscsi_async*, %struct.iscsi_async** %5, align 8
  %86 = getelementptr inbounds %struct.iscsi_async, %struct.iscsi_async* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %88 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %91 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %94 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %89, i32 %92, i32 %95)
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %98 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32*, i32*, i32)** %100, align 8
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %103 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %104 = call i32 %101(%struct.iscsi_conn* %102, %struct.iscsi_cmd* %103, i32* null, i32* null, i32 0)
  ret i32 %104
}

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
