; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_copy_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dbg.c_qla2xxx_copy_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.rsp_que**, %struct.req_que** }
%struct.rsp_que = type { i32, i32 }
%struct.req_que = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.qla_hw_data*, i8*)* @qla2xxx_copy_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla2xxx_copy_queues(%struct.qla_hw_data* %0, i8* %1) #0 {
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.rsp_que*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 1
  %9 = load %struct.req_que**, %struct.req_que*** %8, align 8
  %10 = getelementptr inbounds %struct.req_que*, %struct.req_que** %9, i64 0
  %11 = load %struct.req_que*, %struct.req_que** %10, align 8
  store %struct.req_que* %11, %struct.req_que** %5, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load %struct.rsp_que**, %struct.rsp_que*** %13, align 8
  %15 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %14, i64 0
  %16 = load %struct.rsp_que*, %struct.rsp_que** %15, align 8
  store %struct.rsp_que* %16, %struct.rsp_que** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.req_que*, %struct.req_que** %5, align 8
  %19 = getelementptr inbounds %struct.req_que, %struct.req_que* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.req_que*, %struct.req_que** %5, align 8
  %22 = getelementptr inbounds %struct.req_que, %struct.req_que* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memcpy(i8* %17, i32 %20, i32 %26)
  %28 = load %struct.req_que*, %struct.req_que** %5, align 8
  %29 = getelementptr inbounds %struct.req_que, %struct.req_que* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr i8, i8* %33, i64 %32
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %37 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %40 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memcpy(i8* %35, i32 %38, i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %48 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = getelementptr i8, i8* %46, i64 %51
  ret i8* %52
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
