; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_get_conn_from_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_get_conn_from_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_conn = type { i32 }
%struct.qedi_ctx = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.qedi_conn** }

@.str = private unnamed_addr constant [26 x i8] c"missing conn<->cid table\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"wrong cid #%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qedi_conn* @qedi_get_conn_from_id(%struct.qedi_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.qedi_conn*, align 8
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.qedi_conn**, %struct.qedi_conn*** %8, align 8
  %10 = icmp ne %struct.qedi_conn** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %12, i32 0, i32 2
  %14 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.qedi_conn* null, %struct.qedi_conn** %3, align 8
  br label %35

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %22, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i32*, i8*, ...) @QEDI_ERR(i32* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  store %struct.qedi_conn* null, %struct.qedi_conn** %3, align 8
  br label %35

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.qedi_conn**, %struct.qedi_conn*** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.qedi_conn*, %struct.qedi_conn** %31, i64 %32
  %34 = load %struct.qedi_conn*, %struct.qedi_conn** %33, align 8
  store %struct.qedi_conn* %34, %struct.qedi_conn** %3, align 8
  br label %35

35:                                               ; preds = %27, %21, %11
  %36 = load %struct.qedi_conn*, %struct.qedi_conn** %3, align 8
  ret %struct.qedi_conn* %36
}

declare dso_local i32 @QEDI_ERR(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
