; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_set_config_mvfrey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_iop_set_config_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.hpt_iop_request_set_config* }
%struct.hpt_iop_request_set_config = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i8*, i8*, i8*, i8* }

@IOP_REQUEST_FLAG_OUTPUT_CONTEXT = common dso_local global i32 0, align 4
@IOP_REQUEST_TYPE_SET_CONFIG = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Set config send cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*, %struct.hpt_iop_request_set_config*)* @iop_set_config_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_set_config_mvfrey(%struct.hptiop_hba* %0, %struct.hpt_iop_request_set_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hptiop_hba*, align 8
  %5 = alloca %struct.hpt_iop_request_set_config*, align 8
  %6 = alloca %struct.hpt_iop_request_set_config*, align 8
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %4, align 8
  store %struct.hpt_iop_request_set_config* %1, %struct.hpt_iop_request_set_config** %5, align 8
  %7 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %8 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %11, align 8
  store %struct.hpt_iop_request_set_config* %12, %struct.hpt_iop_request_set_config** %6, align 8
  %13 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %14 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %5, align 8
  %15 = call i32 @memcpy(%struct.hpt_iop_request_set_config* %13, %struct.hpt_iop_request_set_config* %14, i32 48)
  %16 = load i32, i32* @IOP_REQUEST_FLAG_OUTPUT_CONTEXT, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %19 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @IOP_REQUEST_TYPE_SET_CONFIG, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %24 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i8* %22, i8** %25, align 8
  %26 = call i8* @cpu_to_le32(i32 48)
  %27 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @IOP_REQUEST_TYPE_SET_CONFIG, align 4
  %36 = shl i32 %35, 5
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load %struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config** %6, align 8
  %42 = getelementptr inbounds %struct.hpt_iop_request_set_config, %struct.hpt_iop_request_set_config* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.hptiop_hba*, %struct.hptiop_hba** %4, align 8
  %45 = call i64 @iop_send_sync_request_mvfrey(%struct.hptiop_hba* %44, i32 0, i32 20000)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %50

49:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @memcpy(%struct.hpt_iop_request_set_config*, %struct.hpt_iop_request_set_config*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @iop_send_sync_request_mvfrey(%struct.hptiop_hba*, i32, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
