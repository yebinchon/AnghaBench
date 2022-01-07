; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_discover_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_discover_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_discover_targets = type { %struct.TYPE_6__, i8*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.ibmvfc_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ibmvfc_discover_targets }

@ibmvfc_discover_targets_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_DISC_TARGETS = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_INIT_WAIT = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Sent discover targets\0A\00", align 1
@IBMVFC_LINK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_host*)* @ibmvfc_discover_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_discover_targets(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  %3 = alloca %struct.ibmvfc_discover_targets*, align 8
  %4 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  %5 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %6 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %5)
  store %struct.ibmvfc_event* %6, %struct.ibmvfc_event** %4, align 8
  %7 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %8 = load i32, i32* @ibmvfc_discover_targets_done, align 4
  %9 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %10 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %7, i32 %8, i32 %9)
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ibmvfc_discover_targets* %13, %struct.ibmvfc_discover_targets** %3, align 8
  %14 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %15 = call i32 @memset(%struct.ibmvfc_discover_targets* %14, i32 0, i32 48)
  %16 = call i8* @cpu_to_be32(i32 1)
  %17 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @IBMVFC_DISC_TARGETS, align 4
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i32 @cpu_to_be16(i32 48)
  %26 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %30 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %36 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu_to_be64(i32 %37)
  %39 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %40 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %43 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.ibmvfc_discover_targets*, %struct.ibmvfc_discover_targets** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvfc_discover_targets, %struct.ibmvfc_discover_targets* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %50 = load i32, i32* @IBMVFC_HOST_ACTION_INIT_WAIT, align 4
  %51 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %49, i32 %50)
  %52 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %53 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %54 = load i32, i32* @default_timeout, align 4
  %55 = call i32 @ibmvfc_send_event(%struct.ibmvfc_event* %52, %struct.ibmvfc_host* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %1
  %58 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %59 = call i32 @ibmvfc_dbg(%struct.ibmvfc_host* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %64

60:                                               ; preds = %1
  %61 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %62 = load i32, i32* @IBMVFC_LINK_DEAD, align 4
  %63 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  ret void
}

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_discover_targets*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ibmvfc_set_host_action(%struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @ibmvfc_dbg(%struct.ibmvfc_host*, i8*) #1

declare dso_local i32 @ibmvfc_link_down(%struct.ibmvfc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
