; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_delete_rsp_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_delete_rsp_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rsp_que = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  %7 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %9 = icmp ne %struct.rsp_que* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load i32, i32* @BIT_0, align 4
  %18 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %19 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %23 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %24 = call i32 @qla25xx_init_rsp_que(%struct.scsi_qla_host* %22, %struct.rsp_que* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @QLA_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %16
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %32 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %33 = call i32 @qla25xx_free_rsp_que(%struct.scsi_qla_host* %31, %struct.rsp_que* %32)
  br label %34

34:                                               ; preds = %30, %10, %2
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @qla25xx_init_rsp_que(%struct.scsi_qla_host*, %struct.rsp_que*) #1

declare dso_local i32 @qla25xx_free_rsp_que(%struct.scsi_qla_host*, %struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
