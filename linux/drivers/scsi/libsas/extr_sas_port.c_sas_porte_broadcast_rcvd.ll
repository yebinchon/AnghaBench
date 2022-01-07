; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_port.c_sas_porte_broadcast_rcvd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_port.c_sas_porte_broadcast_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.asd_sas_event = type { %struct.asd_sas_phy* }
%struct.asd_sas_phy = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"broadcast received: %d\0A\00", align 1
@DISCE_REVALIDATE_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_porte_broadcast_rcvd(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.asd_sas_event*, align 8
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %7 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %8 = call %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct* %7)
  store %struct.asd_sas_event* %8, %struct.asd_sas_event** %3, align 8
  %9 = load %struct.asd_sas_event*, %struct.asd_sas_event** %3, align 8
  %10 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %9, i32 0, i32 0
  %11 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %10, align 8
  store %struct.asd_sas_phy* %11, %struct.asd_sas_phy** %4, align 8
  %12 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %13 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %17 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %20 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %19, i32 0, i32 1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %26 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* @DISCE_REVALIDATE_DOMAIN, align 4
  %29 = call i32 @sas_discover_event(%struct.TYPE_4__* %27, i32 %28)
  %30 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %31 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %36 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @flush_workqueue(i32 %41)
  br label %43

43:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sas_discover_event(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
