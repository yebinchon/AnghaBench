; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_sm_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@bfa_ioim_sm_hcb = common dso_local global i32 0, align 4
@__bfa_cb_ioim_pathtov = common dso_local global i32 0, align 4
@BFI_SGE_INLINE = common dso_local global i32 0, align 4
@bfa_ioim_sm_sgalloc = common dso_local global i32 0, align 4
@bfa_ioim_sm_qfull = common dso_local global i32 0, align 4
@bfa_ioim_sm_active = common dso_local global i32 0, align 4
@__bfa_cb_ioim_abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*, i32)* @bfa_ioim_sm_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_sm_uninit(%struct.bfa_ioim_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %115 [
    i32 128, label %6
    i32 129, label %79
    i32 130, label %93
  ]

6:                                                ; preds = %2
  %7 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = call i32 @bfa_itnim_is_online(%struct.TYPE_5__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %6
  %13 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 @bfa_itnim_hold_io(%struct.TYPE_5__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %12
  %19 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %20 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %19, i32 %20)
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %22, i32 0, i32 4
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %25, i32 0, i32 4
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %26, i32* %30)
  %32 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %35, i32 0, i32 1
  %37 = load i32, i32* @__bfa_cb_ioim_pathtov, align 4
  %38 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %39 = call i32 @bfa_cb_queue(i32 %34, i32* %36, i32 %37, %struct.bfa_ioim_s* %38)
  br label %51

40:                                               ; preds = %12
  %41 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %41, i32 0, i32 4
  %43 = call i32 @list_del(i32* %42)
  %44 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %44, i32 0, i32 4
  %46 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %45, i32* %49)
  br label %51

51:                                               ; preds = %40, %18
  br label %121

52:                                               ; preds = %6
  %53 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BFI_SGE_INLINE, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %60 = call i32 @bfa_ioim_sgpg_alloc(%struct.bfa_ioim_s* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %64 = load i32, i32* @bfa_ioim_sm_sgalloc, align 4
  %65 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %63, i32 %64)
  br label %121

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %69 = call i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %73 = load i32, i32* @bfa_ioim_sm_qfull, align 4
  %74 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %72, i32 %73)
  br label %121

75:                                               ; preds = %67
  %76 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %77 = load i32, i32* @bfa_ioim_sm_active, align 4
  %78 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %76, i32 %77)
  br label %121

79:                                               ; preds = %2
  %80 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %81 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %82 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %80, i32 %81)
  %83 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %84 = call i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s* %83)
  %85 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %88, i32 0, i32 1
  %90 = load i32, i32* @__bfa_cb_ioim_pathtov, align 4
  %91 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %92 = call i32 @bfa_cb_queue(i32 %87, i32* %89, i32 %90, %struct.bfa_ioim_s* %91)
  br label %121

93:                                               ; preds = %2
  %94 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %95 = load i32, i32* @bfa_ioim_sm_hcb, align 4
  %96 = call i32 @bfa_sm_set_state(%struct.bfa_ioim_s* %94, i32 %95)
  %97 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %102 = call i32 @bfa_q_is_on_q(i32* %100, %struct.bfa_ioim_s* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN_ON(i32 %105)
  %107 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %108 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %111 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %110, i32 0, i32 1
  %112 = load i32, i32* @__bfa_cb_ioim_abort, align 4
  %113 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %114 = call i32 @bfa_cb_queue(i32 %109, i32* %111, i32 %112, %struct.bfa_ioim_s* %113)
  br label %121

115:                                              ; preds = %2
  %116 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @bfa_sm_fault(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %62, %115, %93, %79, %75, %71, %51
  ret void
}

declare dso_local i32 @bfa_itnim_is_online(%struct.TYPE_5__*) #1

declare dso_local i32 @bfa_itnim_hold_io(%struct.TYPE_5__*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_ioim_s*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_cb_queue(i32, i32*, i32, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_sgpg_alloc(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_send_ioreq(%struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_ioim_move_to_comp_q(%struct.bfa_ioim_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_q_is_on_q(i32*, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
