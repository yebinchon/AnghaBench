; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_set_data_pkt_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_set_data_pkt_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.fdp_nci_info = type { void (%struct.nci_dev*)*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"NCI data pkt counter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, void (%struct.nci_dev*)*, i32)* @fdp_nci_set_data_pkt_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp_nci_set_data_pkt_counter(%struct.nci_dev* %0, void (%struct.nci_dev*)* %1, i32 %2) #0 {
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca void (%struct.nci_dev*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdp_nci_info*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store void (%struct.nci_dev*)* %1, void (%struct.nci_dev*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %10 = call %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev* %9)
  store %struct.fdp_nci_info* %10, %struct.fdp_nci_info** %7, align 8
  %11 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %7, align 8
  %12 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %7, align 8
  %21 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %20, i32 0, i32 1
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @atomic_set(i32* %21, i32 %22)
  %24 = load void (%struct.nci_dev*)*, void (%struct.nci_dev*)** %5, align 8
  %25 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %7, align 8
  %26 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %25, i32 0, i32 0
  store void (%struct.nci_dev*)* %24, void (%struct.nci_dev*)** %26, align 8
  ret void
}

declare dso_local %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
