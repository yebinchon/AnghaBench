; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_sa.c_aac_sa_enable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_sa.c_aac_sa_enable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.aac_dev = type { i32 }

@SaDbCSR = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PrintfReady = common dso_local global i32 0, align 4
@DOORBELL_1 = common dso_local global i32 0, align 4
@DOORBELL_2 = common dso_local global i32 0, align 4
@DOORBELL_3 = common dso_local global i32 0, align 4
@DOORBELL_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*)* @aac_sa_enable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_sa_enable_interrupt(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %3 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SaDbCSR, i32 0, i32 0), align 4
  %5 = load i32, i32* @PrintfReady, align 4
  %6 = load i32, i32* @DOORBELL_1, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DOORBELL_2, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DOORBELL_3, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DOORBELL_4, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @sa_writew(%struct.aac_dev* %3, i32 %4, i32 %13)
  ret void
}

declare dso_local i32 @sa_writew(%struct.aac_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
