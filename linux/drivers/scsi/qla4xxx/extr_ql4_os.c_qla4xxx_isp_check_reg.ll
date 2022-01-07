; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_isp_check_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_isp_check_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA8XXX_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@QL4_ISP_REG_DISCONNECT = common dso_local global i64 0, align 8
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4xxx_isp_check_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_isp_check_reg(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = call i64 @is_qla8022(%struct.scsi_qla_host* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i64 @readl(i32* %13)
  store i64 %14, i64* %3, align 8
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %17 = call i64 @is_qla8032(%struct.scsi_qla_host* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %21 = call i64 @is_qla8042(%struct.scsi_qla_host* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %15
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %25 = load i32, i32* @QLA8XXX_PEG_ALIVE_COUNTER, align 4
  %26 = call i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host* %24, i32 %25)
  store i64 %26, i64* %3, align 8
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i64 @readw(i32* %31)
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @QL4_ISP_REG_DISCONNECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @QLA_ERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i64 @is_qla8042(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla4_8xxx_rd_direct(%struct.scsi_qla_host*, i32) #1

declare dso_local i64 @readw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
