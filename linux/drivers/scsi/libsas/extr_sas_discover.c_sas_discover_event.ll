; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_discover_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_discover.c_sas_discover_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_sas_port = type { i32, %struct.sas_discovery }
%struct.sas_discovery = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DISC_NUM_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_discover_event(%struct.asd_sas_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_sas_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_discovery*, align 8
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %8 = icmp ne %struct.asd_sas_port* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %12 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %11, i32 0, i32 1
  store %struct.sas_discovery* %12, %struct.sas_discovery** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DISC_NUM_EVENTS, align 4
  %15 = icmp uge i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sas_discovery*, %struct.sas_discovery** %6, align 8
  %20 = getelementptr inbounds %struct.sas_discovery, %struct.sas_discovery* %19, i32 0, i32 1
  %21 = load %struct.sas_discovery*, %struct.sas_discovery** %6, align 8
  %22 = getelementptr inbounds %struct.sas_discovery, %struct.sas_discovery* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.asd_sas_port*, %struct.asd_sas_port** %4, align 8
  %29 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sas_chain_event(i32 %18, i32* %20, i32* %27, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %10, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sas_chain_event(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
