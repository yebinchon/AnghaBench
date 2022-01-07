; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_bind_conn_to_iscsi_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_bind_conn_to_iscsi_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bnx2i_conn** }
%struct.bnx2i_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KERN_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"conn bind - entry #%d not free\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*, %struct.bnx2i_conn*, i64)* @bnx2i_bind_conn_to_iscsi_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_bind_conn_to_iscsi_cid(%struct.bnx2i_hba* %0, %struct.bnx2i_conn* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2i_hba*, align 8
  %6 = alloca %struct.bnx2i_conn*, align 8
  %7 = alloca i64, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %5, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %9 = icmp ne %struct.bnx2i_hba* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.bnx2i_conn**, %struct.bnx2i_conn*** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.bnx2i_conn*, %struct.bnx2i_conn** %14, i64 %15
  %17 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %16, align 8
  %18 = icmp ne %struct.bnx2i_conn* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load i32, i32* @KERN_ALERT, align 4
  %21 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %6, align 8
  %22 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @iscsi_conn_printk(i32 %20, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %10, %3
  %31 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %6, align 8
  %32 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.bnx2i_conn**, %struct.bnx2i_conn*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.bnx2i_conn*, %struct.bnx2i_conn** %35, i64 %36
  store %struct.bnx2i_conn* %31, %struct.bnx2i_conn** %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
