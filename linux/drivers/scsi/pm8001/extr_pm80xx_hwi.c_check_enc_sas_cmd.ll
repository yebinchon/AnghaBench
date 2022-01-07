; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_check_enc_sas_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_check_enc_sas_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }

@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@WRITE_VERIFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*)* @check_enc_sas_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_enc_sas_cmd(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %5 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %6 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @READ_10, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @WRITE_10, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @WRITE_VERIFY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16, %1
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
