; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_bind_conn_to_iscsi_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_bind_conn_to_iscsi_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qedi_conn** }
%struct.qedi_conn = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"conn bind - entry #%d not free\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.qedi_conn*)* @qedi_bind_conn_to_iscsi_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_bind_conn_to_iscsi_cid(%struct.qedi_ctx* %0, %struct.qedi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  %6 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store %struct.qedi_conn* %1, %struct.qedi_conn** %5, align 8
  %7 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %8 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.qedi_conn**, %struct.qedi_conn*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.qedi_conn*, %struct.qedi_conn** %13, i64 %14
  %16 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %17 = icmp ne %struct.qedi_conn* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i32, i32* @KERN_ALERT, align 4
  %20 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %21 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @iscsi_conn_printk(i32 %19, i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %31 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.qedi_conn**, %struct.qedi_conn*** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.qedi_conn*, %struct.qedi_conn** %34, i64 %35
  store %struct.qedi_conn* %30, %struct.qedi_conn** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
