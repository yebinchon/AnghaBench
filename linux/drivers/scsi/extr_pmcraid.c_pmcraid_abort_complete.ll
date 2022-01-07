; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_abort_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_abort_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_4__*, %struct.pmcraid_resource_entry*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pmcraid_resource_entry = type { i32 }

@PMCRAID_IOASC_UA_BUS_WAS_RESET = common dso_local global i64 0, align 8
@PMCRAID_IOASC_NR_SYNC_REQUIRED = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmcraid_cmd*)* @pmcraid_abort_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_abort_complete(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_resource_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %5 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %5, i32 0, i32 2
  %7 = call i32 @wait_for_completion(i32* %6)
  %8 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %8, i32 0, i32 1
  %10 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %9, align 8
  store %struct.pmcraid_resource_entry* %10, %struct.pmcraid_resource_entry** %3, align 8
  %11 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %11, i32 0, i32 1
  store %struct.pmcraid_resource_entry* null, %struct.pmcraid_resource_entry** %12, align 8
  %13 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @PMCRAID_IOASC_UA_BUS_WAS_RESET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @PMCRAID_IOASC_NR_SYNC_REQUIRED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %1
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @PMCRAID_IOASC_NR_SYNC_REQUIRED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.pmcraid_resource_entry*, %struct.pmcraid_resource_entry** %3, align 8
  %33 = getelementptr inbounds %struct.pmcraid_resource_entry, %struct.pmcraid_resource_entry* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %27
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %37 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %36)
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @PMCRAID_IOASC_SENSE_KEY(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @FAILED, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @SUCCESS, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  ret i32 %46
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

declare dso_local i64 @PMCRAID_IOASC_SENSE_KEY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
