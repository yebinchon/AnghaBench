; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_send_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_send_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }
%struct.atio_from_isp = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_qpair*, %struct.atio_from_isp*, i32)* @qlt_send_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlt_send_busy(%struct.qla_qpair* %0, %struct.atio_from_isp* %1, i32 %2) #0 {
  %4 = alloca %struct.qla_qpair*, align 8
  %5 = alloca %struct.atio_from_isp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_qla_host*, align 8
  store %struct.qla_qpair* %0, %struct.qla_qpair** %4, align 8
  store %struct.atio_from_isp* %1, %struct.atio_from_isp** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.qla_qpair*, %struct.qla_qpair** %4, align 8
  %10 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %9, i32 0, i32 0
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  store %struct.scsi_qla_host* %11, %struct.scsi_qla_host** %8, align 8
  %12 = load %struct.qla_qpair*, %struct.qla_qpair** %4, align 8
  %13 = load %struct.atio_from_isp*, %struct.atio_from_isp** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @__qlt_send_busy(%struct.qla_qpair* %12, %struct.atio_from_isp* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %22 = load %struct.atio_from_isp*, %struct.atio_from_isp** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @qlt_alloc_qfull_cmd(%struct.scsi_qla_host* %21, %struct.atio_from_isp* %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @__qlt_send_busy(%struct.qla_qpair*, %struct.atio_from_isp*, i32) #1

declare dso_local i32 @qlt_alloc_qfull_cmd(%struct.scsi_qla_host*, %struct.atio_from_isp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
