; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_qfull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_qfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_ioim_sm_active = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_qfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_qfull(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %81 [
    i32 128, label %18
    i32 131, label %24
    i32 130, label %43
    i32 129, label %62
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %20 = load i32, i32* @bfa_ioim_sm_active, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %19, i32 %20)
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %23 = call i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s* %22)
  br label %87

24:                                               ; preds = %2
  %25 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %26 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %25, i32 %26)
  %28 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @bfa_reqq_wcancel(i32* %31)
  %33 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %34 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %33)
  %35 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %38, i32 0, i32 2
  %40 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %41 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %42 = call i32 @bfa_cb_queue(i32 %37, i32* %39, i32 %40, %struct.bfa_ioim_s* %41)
  br label %87

43:                                               ; preds = %2
  %44 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %45 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %46 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %44, i32 %45)
  %47 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @bfa_reqq_wcancel(i32* %50)
  %52 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %55, i32 0, i32 2
  %57 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %58 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %59 = call i32 @bfa_cb_queue(i32 %54, i32* %56, i32 %57, %struct.bfa_ioim_s* %58)
  %60 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %61 = call i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %60)
  br label %87

62:                                               ; preds = %2
  %63 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %64 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %65 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %63, i32 %64)
  %66 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @bfa_reqq_wcancel(i32* %69)
  %71 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %72 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %71)
  %73 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %76, i32 0, i32 2
  %78 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %79 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %80 = call i32 @bfa_cb_queue(i32 %75, i32* %77, i32 %78, %struct.bfa_ioim_s* %79)
  br label %87

81:                                               ; preds = %2
  %82 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @bfa_sm_fault(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %62, %43, %24, %18
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
