; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_inline.h___qla4xxx_enable_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_inline.h___qla4xxx_enable_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IMR_SCSI_INTR_ENABLE = common dso_local global i32 0, align 4
@CSR_SCSI_INTR_ENABLE = common dso_local global i32 0, align 4
@AF_INTERRUPTS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @__qla4xxx_enable_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qla4xxx_enable_intrs(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = call i32 @is_qla4022(%struct.scsi_qla_host* %3)
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %6 = call i32 @is_qla4032(%struct.scsi_qla_host* %5)
  %7 = or i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @IMR_SCSI_INTR_ENABLE, align 4
  %11 = call i32 @set_rmask(i32 %10)
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @writel(i32 %11, i32* %17)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @readl(i32* %24)
  br label %39

26:                                               ; preds = %1
  %27 = load i32, i32* @CSR_SCSI_INTR_ENABLE, align 4
  %28 = call i32 @set_rmask(i32 %27)
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @writel(i32 %28, i32* %32)
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @readl(i32* %37)
  br label %39

39:                                               ; preds = %26, %9
  %40 = load i32, i32* @AF_INTERRUPTS_ON, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  ret void
}

declare dso_local i32 @is_qla4022(%struct.scsi_qla_host*) #1

declare dso_local i32 @is_qla4032(%struct.scsi_qla_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @set_rmask(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
