; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_npiv_logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_npiv_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i32 }
%struct.ibmvfc_npiv_logout_mad = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.ibmvfc_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ibmvfc_npiv_logout_mad }

@ibmvfc_npiv_logout_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_NPIV_LOGOUT = common dso_local global i32 0, align 4
@IBMVFC_HOST_ACTION_LOGO_WAIT = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Sent NPIV logout\0A\00", align 1
@IBMVFC_LINK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_host*)* @ibmvfc_npiv_logout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_npiv_logout(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  %3 = alloca %struct.ibmvfc_npiv_logout_mad*, align 8
  %4 = alloca %struct.ibmvfc_event*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  %5 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %6 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %5)
  store %struct.ibmvfc_event* %6, %struct.ibmvfc_event** %4, align 8
  %7 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %8 = load i32, i32* @ibmvfc_npiv_logout_done, align 4
  %9 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %10 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %7, i32 %8, i32 %9)
  %11 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ibmvfc_npiv_logout_mad* %13, %struct.ibmvfc_npiv_logout_mad** %3, align 8
  %14 = load %struct.ibmvfc_npiv_logout_mad*, %struct.ibmvfc_npiv_logout_mad** %3, align 8
  %15 = call i32 @memset(%struct.ibmvfc_npiv_logout_mad* %14, i32 0, i32 24)
  %16 = call i8* @cpu_to_be32(i32 1)
  %17 = load %struct.ibmvfc_npiv_logout_mad*, %struct.ibmvfc_npiv_logout_mad** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_npiv_logout_mad, %struct.ibmvfc_npiv_logout_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i32, i32* @IBMVFC_NPIV_LOGOUT, align 4
  %21 = call i8* @cpu_to_be32(i32 %20)
  %22 = load %struct.ibmvfc_npiv_logout_mad*, %struct.ibmvfc_npiv_logout_mad** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_npiv_logout_mad, %struct.ibmvfc_npiv_logout_mad* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = call i32 @cpu_to_be16(i32 24)
  %26 = load %struct.ibmvfc_npiv_logout_mad*, %struct.ibmvfc_npiv_logout_mad** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvfc_npiv_logout_mad, %struct.ibmvfc_npiv_logout_mad* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %30 = load i32, i32* @IBMVFC_HOST_ACTION_LOGO_WAIT, align 4
  %31 = call i32 @ibmvfc_set_host_action(%struct.ibmvfc_host* %29, i32 %30)
  %32 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %4, align 8
  %33 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %34 = load i32, i32* @default_timeout, align 4
  %35 = call i32 @ibmvfc_send_event(%struct.ibmvfc_event* %32, %struct.ibmvfc_host* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %39 = call i32 @ibmvfc_dbg(%struct.ibmvfc_host* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %44

40:                                               ; preds = %1
  %41 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %42 = load i32, i32* @IBMVFC_LINK_DEAD, align 4
  %43 = call i32 @ibmvfc_link_down(%struct.ibmvfc_host* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_npiv_logout_mad*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

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
