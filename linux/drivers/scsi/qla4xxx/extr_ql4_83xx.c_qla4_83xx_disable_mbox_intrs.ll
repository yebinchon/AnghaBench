; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_disable_mbox_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_disable_mbox_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AF_83XX_MBOX_INTR_ON = common dso_local global i32 0, align 4
@INT_ENABLE_FW_MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4_83xx_disable_mbox_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_83xx_disable_mbox_intrs(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load i32, i32* @AF_83XX_MBOX_INTR_ON, align 4
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %6, i32 0, i32 1
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @readl(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @INT_ENABLE_FW_MB, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @writel(i32 %20, i32* %24)
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @writel(i32 1, i32* %29)
  br label %31

31:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
