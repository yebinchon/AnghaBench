; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_hcb_logorcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_sm_hcb_logorcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_nsdisc_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_plogi_sending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_offline = common dso_local global i32 0, align 4
@bfa_fcs_rport_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_del_timeout = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_delete_pending = common dso_local global i32 0, align 4
@bfa_fcs_rport_sm_hcb_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, i32)* @bfa_fcs_rport_sm_hcb_logorcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_sm_hcb_logorcv(%struct.bfa_fcs_rport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_4__* %7, i32 %10)
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_4__* %14, i32 %17)
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bfa_trc(%struct.TYPE_4__* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %152 [
    i32 133, label %25
    i32 135, label %25
    i32 134, label %115
    i32 132, label %147
    i32 128, label %151
    i32 129, label %151
    i32 131, label %151
    i32 130, label %151
  ]

25:                                               ; preds = %2, %2
  %26 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BFA_TRUE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %38 = call i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s* %37)
  br label %39

39:                                               ; preds = %36, %30, %25
  %40 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BFA_FALSE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %52 = call i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s* %51)
  br label %53

53:                                               ; preds = %50, %44, %39
  %54 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %54, i32 0, i32 7
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @bfa_fcs_lport_is_online(%struct.TYPE_5__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BFA_FCS_PID_IS_WKA(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %59
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %66, i32 0, i32 7
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bfa_fcs_fabric_is_switched(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %75 = load i32, i32* @bfa_fcs_rport_sm_nsdisc_sending, align 4
  %76 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %74, i32 %75)
  %77 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %77, i32 0, i32 6
  store i32 0, i32* %78, align 4
  %79 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %80 = call i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s* %79, i32* null)
  br label %89

81:                                               ; preds = %65
  %82 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %83 = load i32, i32* @bfa_fcs_rport_sm_plogi_sending, align 4
  %84 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %82, i32 %83)
  %85 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %85, i32 0, i32 5
  store i32 0, i32* %86, align 8
  %87 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %88 = call i32 @bfa_fcs_rport_send_plogi(%struct.bfa_fcs_rport_s* %87, i32* null)
  br label %89

89:                                               ; preds = %81, %73
  br label %114

90:                                               ; preds = %59, %53
  %91 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BFA_FCS_PID_IS_WKA(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %101 = load i32, i32* @bfa_fcs_rport_sm_offline, align 4
  %102 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %100, i32 %101)
  %103 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %104 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %109 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %108, i32 0, i32 4
  %110 = load i32, i32* @bfa_fcs_rport_timeout, align 4
  %111 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %112 = load i32, i32* @bfa_fcs_rport_del_timeout, align 4
  %113 = call i32 @bfa_timer_start(i32 %107, i32* %109, i32 %110, %struct.bfa_fcs_rport_s* %111, i32 %112)
  br label %114

114:                                              ; preds = %99, %89
  br label %158

115:                                              ; preds = %2
  %116 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %117 = load i32, i32* @bfa_fcs_rport_sm_delete_pending, align 4
  %118 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %116, i32 %117)
  %119 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %120 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %115
  %124 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %125 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @BFA_TRUE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %131 = call i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s* %130)
  br label %132

132:                                              ; preds = %129, %123, %115
  %133 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %134 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %139 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @BFA_FALSE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %145 = call i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s* %144)
  br label %146

146:                                              ; preds = %143, %137, %132
  br label %158

147:                                              ; preds = %2
  %148 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %149 = load i32, i32* @bfa_fcs_rport_sm_hcb_offline, align 4
  %150 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s* %148, i32 %149)
  br label %158

151:                                              ; preds = %2, %2, %2, %2
  br label %158

152:                                              ; preds = %2
  %153 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %154 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @bfa_sm_fault(%struct.TYPE_4__* %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %151, %147, %146, %114
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_prlo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_rport_send_logo_acc(%struct.bfa_fcs_rport_s*) #1

declare dso_local i32 @bfa_fcs_lport_is_online(%struct.TYPE_5__*) #1

declare dso_local i32 @BFA_FCS_PID_IS_WKA(i32) #1

declare dso_local i32 @bfa_fcs_fabric_is_switched(i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_nsdisc(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_fcs_rport_send_plogi(%struct.bfa_fcs_rport_s*, i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_fcs_rport_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
