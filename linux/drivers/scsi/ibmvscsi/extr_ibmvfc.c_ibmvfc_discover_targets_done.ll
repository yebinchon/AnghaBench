; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_discover_targets_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_discover_targets_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { %struct.TYPE_3__*, %struct.ibmvfc_host* }
%struct.TYPE_3__ = type { %struct.ibmvfc_discover_targets }
%struct.ibmvfc_discover_targets = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ibmvfc_host = type { i32, i32, i32 }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Discover Targets succeeded\0A\00", align 1
@IBMVFC_HOST_ACTION_ALLOC_TGTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Discover Targets failed: %s (%x:%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid Discover Targets response: 0x%x\0A\00", align 1
@IBMVFC_LINK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_discover_targets_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_discover_targets_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca %struct.ibmvfc_discover_targets*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %7 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %7, i32 0, i32 1
  %9 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %8, align 8
  store %struct.ibmvfc_host* %9, %struct.ibmvfc_host** %3, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ibmvfc_discover_targets* %13, %struct.ibmvfc_discover_targets** %4, align 8
  %14 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be16_to_cpu(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %59 [
    i32 128, label %21
    i32 129, label %33
    i32 130, label %58
  ]

21:                                               ; preds = %1
  %22 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %23 = call i32 @ibmvfc_dbg(%struct.ibmvfc_host* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %29 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %31 = load i32, i32* @IBMVFC_HOST_ACTION_ALLOC_TGTS, align 4
  %32 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %30, i32 %31)
  br label %68

33:                                               ; preds = %1
  %34 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %35 = call i32 @ibmvfc_retry_host_init(%struct.ibmvfc_host* %34)
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %4, align 8
  %41 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = call i32 @ibmvfc_get_cmd_error(i32 %43, i32 %47)
  %49 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %4, align 8
  %50 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %4, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = call i32 @ibmvfc_log(%struct.ibmvfc_host* %38, i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %52, i32 %56)
  br label %68

58:                                               ; preds = %1
  br label %68

59:                                               ; preds = %1
  %60 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %61 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %66 = load i32, i32* @IBMVFC_LINK_DEAD, align 4
  %67 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %58, %33, %21
  %69 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %70 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %69)
  %71 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %72 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %71, i32 0, i32 0
  %73 = call i32 @wake_up(i32* %72)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_dbg(%struct.ibmvfc_host*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_retry_host_init(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_log(%struct.ibmvfc_host*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ibmvfc_link_down(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
