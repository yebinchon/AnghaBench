; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_faa_misconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_faa_misconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@bfa_fcport_sm_disabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabling_qwait = common dso_local global i32 0, align 4
@BFA_PORT_LINKDOWN = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_PL_MID_HAL = common dso_local global i32 0, align 4
@BFA_PL_EID_PORT_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Port Disable\00", align 1
@BFA_PORT_AEN_DISABLE = common dso_local global i32 0, align 4
@bfa_fcport_sm_stopped = common dso_local global i32 0, align 4
@bfa_fcport_sm_iocdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_faa_misconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_faa_misconfig(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %56 [
    i32 132, label %11
    i32 131, label %11
    i32 129, label %11
    i32 133, label %12
    i32 128, label %42
    i32 130, label %46
  ]

11:                                               ; preds = %2, %2, %2
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %14 = call i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %18 = load i32, i32* @bfa_fcport_sm_disabling, align 4
  %19 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %17, i32 %18)
  br label %24

20:                                               ; preds = %12
  %21 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %22 = load i32, i32* @bfa_fcport_sm_disabling_qwait, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %26 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %25)
  %27 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %28 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  %29 = load i32, i32* @BFA_FALSE, align 4
  %30 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %27, i32 %28, i32 %29)
  %31 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %37 = load i32, i32* @BFA_PL_EID_PORT_DISABLE, align 4
  %38 = call i32 @bfa_plog_str(i32 %35, i32 %36, i32 %37, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %40 = load i32, i32* @BFA_PORT_AEN_DISABLE, align 4
  %41 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %39, i32 %40)
  br label %62

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %44 = load i32, i32* @bfa_fcport_sm_stopped, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %43, i32 %44)
  br label %62

46:                                               ; preds = %2
  %47 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %48 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %47)
  %49 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %50 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  %51 = load i32, i32* @BFA_FALSE, align 4
  %52 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %49, i32 %50, i32 %51)
  %53 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %54 = load i32, i32* @bfa_fcport_sm_iocdown, align 4
  %55 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %53, i32 %54)
  br label %62

56:                                               ; preds = %2
  %57 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %46, %42, %24, %11
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_fcport_scn(%struct.bfa_fcport_s*, i32, i32) #1

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
