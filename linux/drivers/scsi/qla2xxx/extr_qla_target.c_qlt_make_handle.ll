; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_make_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_make_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { %struct.TYPE_2__*, %struct.req_que* }
%struct.TYPE_2__ = type { i32 }
%struct.req_que = type { i64, i32, i32* }

@QLA_TGT_SKIP_HANDLE = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"qla_target(%d): Ran out of empty cmd slots\0A\00", align 1
@QLA_TGT_NULL_HANDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qla_qpair*)* @qlt_make_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qlt_make_handle(%struct.qla_qpair* %0) #0 {
  %2 = alloca %struct.qla_qpair*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.req_que*, align 8
  store %struct.qla_qpair* %0, %struct.qla_qpair** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qla_qpair*, %struct.qla_qpair** %2, align 8
  %8 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %7, i32 0, i32 1
  %9 = load %struct.req_que*, %struct.req_que** %8, align 8
  store %struct.req_que* %9, %struct.req_que** %6, align 8
  %10 = load %struct.req_que*, %struct.req_que** %6, align 8
  %11 = getelementptr inbounds %struct.req_que, %struct.req_que* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  store i32 1, i32* %4, align 4
  br label %13

13:                                               ; preds = %44, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.req_que*, %struct.req_que** %6, align 8
  %16 = getelementptr inbounds %struct.req_que, %struct.req_que* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.req_que*, %struct.req_que** %6, align 8
  %24 = getelementptr inbounds %struct.req_que, %struct.req_que* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i64 1, i64* %3, align 8
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @QLA_TGT_SKIP_HANDLE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %44

34:                                               ; preds = %29
  %35 = load %struct.req_que*, %struct.req_que** %6, align 8
  %36 = getelementptr inbounds %struct.req_que, %struct.req_que* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %47

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %13

47:                                               ; preds = %42, %13
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %3, align 8
  %52 = load %struct.req_que*, %struct.req_que** %6, align 8
  %53 = getelementptr inbounds %struct.req_que, %struct.req_que* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %66

54:                                               ; preds = %47
  %55 = load i32, i32* @ql_dbg_io, align 4
  %56 = load %struct.qla_qpair*, %struct.qla_qpair** %2, align 8
  %57 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load %struct.qla_qpair*, %struct.qla_qpair** %2, align 8
  %60 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ql_dbg(i32 %55, %struct.TYPE_2__* %58, i32 12379, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* @QLA_TGT_NULL_HANDLE, align 8
  store i64 %65, i64* %3, align 8
  br label %66

66:                                               ; preds = %54, %50
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_2__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
