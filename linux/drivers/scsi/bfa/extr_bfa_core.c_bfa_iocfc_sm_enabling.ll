; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_enabling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_enabling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@bfa_iocfc_sm_cfg_wait = common dso_local global i32 0, align 4
@bfa_iocfc_sm_disabling = common dso_local global i32 0, align 4
@bfa_iocfc_sm_dconf_write = common dso_local global i32 0, align 4
@bfa_iocfc_sm_failed = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@bfa_iocfc_enable_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*, i32)* @bfa_iocfc_sm_enabling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_sm_enabling(%struct.bfa_iocfc_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocfc_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_iocfc_s* %0, %struct.bfa_iocfc_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(%struct.TYPE_7__* %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %62 [
    i32 130, label %11
    i32 131, label %15
    i32 128, label %19
    i32 129, label %23
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %13 = load i32, i32* @bfa_iocfc_sm_cfg_wait, align 4
  %14 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %12, i32 %13)
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %17 = load i32, i32* @bfa_iocfc_sm_disabling, align 4
  %18 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %16, i32 %17)
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %21 = load i32, i32* @bfa_iocfc_sm_dconf_write, align 4
  %22 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %20, i32 %21)
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %25 = load i32, i32* @bfa_iocfc_sm_failed, align 4
  %26 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %24, i32 %25)
  %27 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BFA_FALSE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %68

36:                                               ; preds = %23
  %37 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %38 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %37, i32* %42, align 4
  %43 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* @bfa_iocfc_enable_cb, align 4
  %52 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @bfa_cb_queue(%struct.TYPE_7__* %45, i32* %50, i32 %51, %struct.TYPE_7__* %54)
  %56 = load i32, i32* @BFA_FALSE, align 4
  %57 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  br label %68

62:                                               ; preds = %2
  %63 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @bfa_sm_fault(%struct.TYPE_7__* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %36, %35, %19, %15, %11
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s*, i32) #1

declare dso_local i32 @bfa_cb_queue(%struct.TYPE_7__*, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
