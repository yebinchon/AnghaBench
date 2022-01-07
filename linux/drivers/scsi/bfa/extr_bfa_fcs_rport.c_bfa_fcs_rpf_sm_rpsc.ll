; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_rpsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_rpsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rpf_s = type { i32, i32, i32, i32, i32, %struct.bfa_fcs_rport_s* }
%struct.bfa_fcs_rport_s = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_rpf_sm_online = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@BFA_FCS_RPF_RETRIES = common dso_local global i32 0, align 4
@bfa_fcs_rpf_timeout = common dso_local global i32 0, align 4
@BFA_FCS_RPF_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@bfa_fcs_rpf_sm_rpsc_retry = common dso_local global i32 0, align 4
@bfa_fcs_rpf_sm_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rpf_s*, i32)* @bfa_fcs_rpf_sm_rpsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rpf_sm_rpsc(%struct.bfa_fcs_rpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  store %struct.bfa_fcs_rpf_s* %0, %struct.bfa_fcs_rpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %6, i32 0, i32 5
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  store %struct.bfa_fcs_rport_s* %8, %struct.bfa_fcs_rport_s** %5, align 8
  %9 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bfa_trc(%struct.TYPE_3__* %11, i32 %14)
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bfa_trc(%struct.TYPE_3__* %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %96 [
    i32 130, label %22
    i32 128, label %55
    i32 129, label %59
    i32 131, label %86
  ]

22:                                               ; preds = %2
  %23 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %24 = load i32, i32* @bfa_fcs_rpf_sm_online, align 4
  %25 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %23, i32 %24)
  %26 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BFA_PORT_SPEED_UNKNOWN, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bfa_rport_speed(i32 %34, i32 %37)
  br label %54

39:                                               ; preds = %22
  %40 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BFA_PORT_SPEED_UNKNOWN, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bfa_rport_speed(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %53, %31
  br label %102

55:                                               ; preds = %2
  %56 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %57 = load i32, i32* @bfa_fcs_rpf_sm_online, align 4
  %58 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %56, i32 %57)
  br label %102

59:                                               ; preds = %2
  %60 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @BFA_FCS_RPF_RETRIES, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %72, i32 0, i32 2
  %74 = load i32, i32* @bfa_fcs_rpf_timeout, align 4
  %75 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %76 = load i32, i32* @BFA_FCS_RPF_RETRY_TIMEOUT, align 4
  %77 = call i32 @bfa_timer_start(i32 %71, i32* %73, i32 %74, %struct.bfa_fcs_rpf_s* %75, i32 %76)
  %78 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %79 = load i32, i32* @bfa_fcs_rpf_sm_rpsc_retry, align 4
  %80 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %78, i32 %79)
  br label %85

81:                                               ; preds = %59
  %82 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %83 = load i32, i32* @bfa_fcs_rpf_sm_online, align 4
  %84 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %66
  br label %102

86:                                               ; preds = %2
  %87 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %88 = load i32, i32* @bfa_fcs_rpf_sm_offline, align 4
  %89 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %87, i32 %88)
  %90 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %91 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bfa_fcxp_discard(i32 %92)
  %94 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %95 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %102

96:                                               ; preds = %2
  %97 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %98 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %86, %85, %55, %54
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i32 @bfa_rport_speed(i32, i32) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i32 @bfa_fcxp_discard(i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
