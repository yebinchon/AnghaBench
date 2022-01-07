; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_hcb_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_hcb_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogiacc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_del_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_nsdisc_sending = common dso_local global i32 0, align 4
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_adisc_offline_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogi_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_uninit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_hcb_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_hcb_offline(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_6__* %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_6__* %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(%struct.TYPE_6__* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %140 [
    i32 134, label %25
    i32 137, label %46
    i32 136, label %133
    i32 128, label %139
    i32 129, label %139
    i32 135, label %139
    i32 132, label %139
    i32 130, label %139
    i32 131, label %139
    i32 133, label %139
  ]

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %26, i32 0, i32 6
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @bfa_fcs_lport_is_online(%struct.TYPE_7__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @BFA_FALSE, align 4
  %38 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %41 = load i32, i32* @bfa_fcs_rport_sm_plogiacc_sending, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %40, i32 %41)
  %43 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %44 = call i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s* %43, i32* null)
  br label %146

45:                                               ; preds = %31, %25
  br label %46

46:                                               ; preds = %2, %45
  %47 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %47, i32 0, i32 6
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @bfa_fcs_lport_is_online(%struct.TYPE_7__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %46
  %53 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %56 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %57 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %55, i32 %56)
  %58 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %63, i32 0, i32 4
  %65 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %67 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %68 = call i32 @bfa_timer_start(i32 %62, i32* %64, i32 %65, %struct.bfa_fcs_rport_s* %66, i32 %67)
  br label %146

69:                                               ; preds = %46
  %70 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %70, i32 0, i32 6
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @bfa_fcs_fabric_is_switched(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %79 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %80 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %78, i32 %79)
  %81 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %82 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %81, i32 0, i32 7
  store i32 0, i32* %82, align 8
  %83 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %84 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %83, i32* null)
  br label %132

85:                                               ; preds = %69
  %86 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %87 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %86, i32 0, i32 6
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bfa_fcport_get_topology(i32 %92)
  %94 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %85
  %97 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %103 = load i32, i32* @bfa_fcs_rport_sm_adisc_offline_sending, align 4
  %104 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %102, i32 %103)
  %105 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %106 = call i32 @bfa_fcs_rport_send_adisc(%struct.bfa_fcs_rport_s* %105, i32* null)
  br label %122

107:                                              ; preds = %96
  %108 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %109 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %110 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %108, i32 %109)
  %111 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %112 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %116, i32 0, i32 4
  %118 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %119 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %120 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %121 = call i32 @bfa_timer_start(i32 %115, i32* %117, i32 %118, %struct.bfa_fcs_rport_s* %119, i32 %120)
  br label %122

122:                                              ; preds = %107, %101
  br label %131

123:                                              ; preds = %85
  %124 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %125 = load i32, i32* @bfa_fcs_rport_sm_plogi_sending, align 4
  %126 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %124, i32 %125)
  %127 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %128 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %127, i32 0, i32 3
  store i32 0, i32* %128, align 8
  %129 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %130 = call i32 @bfa_fcs_rport_send_plogi(%struct.bfa_fcs_rport_s* %129, i32* null)
  br label %131

131:                                              ; preds = %123, %122
  br label %132

132:                                              ; preds = %131, %77
  br label %146

133:                                              ; preds = %2
  %134 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %135 = load i32, i32* @bfa_fcs_rport_sm_uninit, align 4
  %136 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %134, i32 %135)
  %137 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %138 = call i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s* %137)
  br label %146

139:                                              ; preds = %2, %2, %2, %2, %2, %2, %2
  br label %146

140:                                              ; preds = %2
  %141 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %142 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %141, i32 0, i32 2
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @bfa_sm_fault(%struct.TYPE_6__* %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %139, %133, %132, %52, %36
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_fcs_lport_is_online(%struct.TYPE_7__*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_plogiacc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_fabric_is_switched(i32) #1

declare dso_local i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcport_get_topology(i32) #1

declare dso_local i32 @bfa_fcs_rport_send_adisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_send_plogi(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_free(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
