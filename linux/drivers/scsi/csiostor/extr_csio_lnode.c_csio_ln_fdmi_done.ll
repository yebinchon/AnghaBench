; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_fdmi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_ioreq = type { %struct.TYPE_2__, i32, %struct.csio_lnode* }
%struct.TYPE_2__ = type { i8* }
%struct.csio_lnode = type { i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"WR error:%x in processing fdmi rpa cmd\0A\00", align 1
@n_fdmi_err = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"fdmi rpa cmd rejected reason %x expl %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_ioreq*)* @csio_ln_fdmi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_ln_fdmi_done(%struct.csio_hw* %0, %struct.csio_ioreq* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_ioreq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csio_lnode*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store %struct.csio_ioreq* %1, %struct.csio_ioreq** %4, align 8
  %7 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %8 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %7, i32 0, i32 2
  %9 = load %struct.csio_lnode*, %struct.csio_lnode** %8, align 8
  store %struct.csio_lnode* %9, %struct.csio_lnode** %6, align 8
  %10 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %11 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FW_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %17 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %18 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_dbg(%struct.csio_lnode* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %22 = load i32, i32* @n_fdmi_err, align 4
  %23 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.csio_ioreq*, %struct.csio_ioreq** %4, align 8
  %26 = getelementptr inbounds %struct.csio_ioreq, %struct.csio_ioreq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @csio_ct_rsp(i8* %29)
  %31 = call i64 @ntohs(i32 %30)
  %32 = load i64, i64* @FC_FS_ACC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @csio_ct_reason(i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @csio_ct_expl(i8* %38)
  %40 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_dbg(%struct.csio_lnode* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %24
  ret void
}

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, ...) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @csio_ct_rsp(i8*) #1

declare dso_local i32 @csio_ct_reason(i8*) #1

declare dso_local i32 @csio_ct_expl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
