; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32 }
%struct.isr_param = type { i32, %struct.pm8001_hba_info* }

@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pm8001_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.isr_param*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.isr_param*
  store %struct.isr_param* %6, %struct.isr_param** %4, align 8
  %7 = load %struct.isr_param*, %struct.isr_param** %4, align 8
  %8 = getelementptr inbounds %struct.isr_param, %struct.isr_param* %7, i32 0, i32 1
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  store %struct.pm8001_hba_info* %9, %struct.pm8001_hba_info** %3, align 8
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = icmp ne %struct.pm8001_hba_info* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @BUG_ON(i32 1)
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %20, align 8
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = load %struct.isr_param*, %struct.isr_param** %4, align 8
  %24 = getelementptr inbounds %struct.isr_param, %struct.isr_param* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(%struct.pm8001_hba_info* %22, i32 %25)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
