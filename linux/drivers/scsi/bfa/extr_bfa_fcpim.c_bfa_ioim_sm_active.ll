; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_ioim_good_comp = common dso_local global i32 0, align 4
@__bfa_cb_ioim_comp = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb_free = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@bfa_ioim_sm_abort = common dso_local global i32 0, align 4
@bfa_ioim_sm_abort_qfull = common dso_local global i32 0, align 4
@qwait = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup = common dso_local global i32 0, align 4
@bfa_ioim_sm_cleanup_qfull = common dso_local global i32 0, align 4
@bfa_ioim_sm_cmnd_retry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_active(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %158 [
    i32 131, label %6
    i32 132, label %20
    i32 130, label %34
    i32 134, label %48
    i32 133, label %85
    i32 129, label %122
    i32 128, label %136
  ]

6:                                                ; preds = %2
  %7 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %8 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %9 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %7, i32 %8)
  %10 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %11 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %10)
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %15, i32 0, i32 1
  %17 = load i32, i32* @__bfa_cb_ioim_good_comp, align 4
  %18 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %19 = call i32 @bfa_cb_queue(i32 %14, i32* %16, i32 %17, %struct.bfa_ioim_s* %18)
  br label %164

20:                                               ; preds = %2
  %21 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %22 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %21, i32 %22)
  %24 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %25 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %24)
  %26 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %29, i32 0, i32 1
  %31 = load i32, i32* @__bfa_cb_ioim_comp, align 4
  %32 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %33 = call i32 @bfa_cb_queue(i32 %28, i32* %30, i32 %31, %struct.bfa_ioim_s* %32)
  br label %164

34:                                               ; preds = %2
  %35 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %36 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %37 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %35, i32 %36)
  %38 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %39 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %38)
  %40 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %43, i32 0, i32 1
  %45 = load i32, i32* @__bfa_cb_ioim_comp, align 4
  %46 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %47 = call i32 @bfa_cb_queue(i32 %42, i32* %44, i32 %45, %struct.bfa_ioim_s* %46)
  br label %164

48:                                               ; preds = %2
  %49 = load i32, i32* @BFA_TRUE, align 4
  %50 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %55 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %58 = call i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %62 = load i32, i32* @bfa_ioim_sm_abort, align 4
  %63 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %61, i32 %62)
  br label %84

64:                                               ; preds = %48
  %65 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %66 = load i32, i32* @bfa_ioim_sm_abort_qfull, align 4
  %67 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %65, i32 %66)
  %68 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @qwait, align 4
  %72 = call i32 @bfa_stats(i32 %70, i32 %71)
  %73 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @bfa_reqq_wait(i32 %75, i32 %78, i32* %82)
  br label %84

84:                                               ; preds = %64, %60
  br label %164

85:                                               ; preds = %2
  %86 = load i32, i32* @BFA_FALSE, align 4
  %87 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %92 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %93 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %95 = call i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %99 = load i32, i32* @bfa_ioim_sm_cleanup, align 4
  %100 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %98, i32 %99)
  br label %121

101:                                              ; preds = %85
  %102 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %103 = load i32, i32* @bfa_ioim_sm_cleanup_qfull, align 4
  %104 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %102, i32 %103)
  %105 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %106 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @qwait, align 4
  %109 = call i32 @bfa_stats(i32 %107, i32 %108)
  %110 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %111 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %114 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 @bfa_reqq_wait(i32 %112, i32 %115, i32* %119)
  br label %121

121:                                              ; preds = %101, %97
  br label %164

122:                                              ; preds = %2
  %123 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %124 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %125 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %123, i32 %124)
  %126 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %127 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %126)
  %128 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %129 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %132 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %131, i32 0, i32 1
  %133 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %134 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %135 = call i32 @bfa_cb_queue(i32 %130, i32* %132, i32 %133, %struct.bfa_ioim_s* %134)
  br label %164

136:                                              ; preds = %2
  %137 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %138 = call i32 @bfa_ioim_maxretry_reached(%struct.bfa_ioim_s* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %142 = load i32, i32* @bfa_ioim_sm_hcb_free, align 4
  %143 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %141, i32 %142)
  %144 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %145 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %144)
  %146 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %147 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %150 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %149, i32 0, i32 1
  %151 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %152 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %153 = call i32 @bfa_cb_queue(i32 %148, i32* %150, i32 %151, %struct.bfa_ioim_s* %152)
  br label %164

154:                                              ; preds = %136
  %155 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %156 = load i32, i32* @bfa_ioim_sm_cmnd_retry, align 4
  %157 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %155, i32 %156)
  br label %164

158:                                              ; preds = %2
  %159 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %160 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @bfa_sm_fault(i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %154, %140, %122, %121, %84, %34, %20, %6
  ret void
}

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfa_ioim_maxretry_reached(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
