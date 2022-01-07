; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.qedi_conn* }
%struct.qedi_conn = type { i64, i32, %struct.qedi_ctx* }
%struct.qedi_ctx = type { i32 }

@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"conn_start: FW offload conn failed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDI_CONN_FW_CLEANUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"iscsi_conn_start: FW offload conn failed!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*)* @qedi_conn_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_conn_start(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.qedi_conn*, align 8
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  store %struct.qedi_conn* %12, %struct.qedi_conn** %4, align 8
  %13 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %14 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %13, i32 0, i32 2
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %14, align 8
  store %struct.qedi_ctx* %15, %struct.qedi_ctx** %5, align 8
  %16 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %17 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %18 = call i32 @qedi_iscsi_update_conn(%struct.qedi_ctx* %16, %struct.qedi_conn* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @KERN_ALERT, align 4
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %24 = call i32 @iscsi_conn_printk(i32 %22, %struct.iscsi_conn* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %1
  %28 = load i32, i32* @QEDI_CONN_FW_CLEANUP, align 4
  %29 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %30 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %29, i32 0, i32 1
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.qedi_conn*, %struct.qedi_conn** %4, align 8
  %33 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %35 = call i32 @iscsi_conn_start(%struct.iscsi_cls_conn* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @KERN_ALERT, align 4
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %41 = call i32 @iscsi_conn_printk(i32 %39, %struct.iscsi_conn* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %27
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @qedi_iscsi_update_conn(%struct.qedi_ctx*, %struct.qedi_conn*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iscsi_conn_start(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
