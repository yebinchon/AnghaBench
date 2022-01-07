; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_sgalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_sgalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_ioim_sm_qfull = common dso_local global i32 0, align 4
@bfa_ioim_sm_active = common dso_local global i32 0, align 4
@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_ioim_failed = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_sgalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_sgalloc(%struct.bfa_ioim_s* %0, i32 %1) #0 {
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
  switch i32 %17, label %96 [
    i32 128, label %18
    i32 130, label %30
    i32 131, label %52
    i32 129, label %74
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %20 = call i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %24 = load i32, i32* @bfa_ioim_sm_qfull, align 4
  %25 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %23, i32 %24)
  br label %102

26:                                               ; preds = %18
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %28 = load i32, i32* @bfa_ioim_sm_active, align 4
  %29 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %27, i32 %28)
  br label %102

30:                                               ; preds = %2
  %31 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %32 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %31, i32 %32)
  %34 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @bfa_sgpg_wcancel(i32 %36, i32* %40)
  %42 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %45, i32 0, i32 2
  %47 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %48 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %49 = call i32 @bfa_cb_queue(i32 %44, i32* %46, i32 %47, %struct.bfa_ioim_s* %48)
  %50 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %51 = call i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %50)
  br label %102

52:                                               ; preds = %2
  %53 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %54 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %55 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %53, i32 %54)
  %56 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @bfa_sgpg_wcancel(i32 %58, i32* %62)
  %64 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %65 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %64)
  %66 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %69, i32 0, i32 2
  %71 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %72 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %73 = call i32 @bfa_cb_queue(i32 %68, i32* %70, i32 %71, %struct.bfa_ioim_s* %72)
  br label %102

74:                                               ; preds = %2
  %75 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %76 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %77 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %75, i32 %76)
  %78 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %82 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @bfa_sgpg_wcancel(i32 %80, i32* %84)
  %86 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %87 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %86)
  %88 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %91, i32 0, i32 2
  %93 = load i32, i32* @__bfa_cb_ioim_failed, align 4
  %94 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %95 = call i32 @bfa_cb_queue(i32 %90, i32* %92, i32 %93, %struct.bfa_ioim_s* %94)
  br label %102

96:                                               ; preds = %2
  %97 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @bfa_sm_fault(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %74, %52, %30, %26, %22
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @bfa_sgpg_wcancel(i32, i32*) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
