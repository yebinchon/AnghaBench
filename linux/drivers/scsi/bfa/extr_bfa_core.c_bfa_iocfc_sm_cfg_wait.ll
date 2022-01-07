; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_cfg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_cfg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32 }

@bfa_iocfc_sm_operational = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i8* null, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@bfa_iocfc_enable_cb = common dso_local global i32 0, align 4
@bfa_iocfc_sm_disabling = common dso_local global i32 0, align 4
@bfa_iocfc_sm_dconf_write = common dso_local global i32 0, align 4
@bfa_iocfc_sm_failed = common dso_local global i32 0, align 4
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*, i32)* @bfa_iocfc_sm_cfg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_sm_cfg_wait(%struct.bfa_iocfc_s* %0, i32 %1) #0 {
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
  switch i32 %10, label %97 [
    i32 131, label %11
    i32 130, label %50
    i32 128, label %54
    i32 129, label %58
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %13 = load i32, i32* @bfa_iocfc_sm_operational, align 4
  %14 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %12, i32 %13)
  %15 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** @BFA_FALSE, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %103

24:                                               ; preds = %11
  %25 = load i32, i32* @BFA_STATUS_OK, align 4
  %26 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %25, i32* %30, align 4
  %31 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* @bfa_iocfc_enable_cb, align 4
  %40 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @bfa_cb_queue(%struct.TYPE_7__* %33, i32* %38, i32 %39, %struct.TYPE_7__* %42)
  %44 = load i8*, i8** @BFA_FALSE, align 8
  %45 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %44, i8** %49, align 8
  br label %103

50:                                               ; preds = %2
  %51 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %52 = load i32, i32* @bfa_iocfc_sm_disabling, align 4
  %53 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %51, i32 %52)
  br label %103

54:                                               ; preds = %2
  %55 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %56 = load i32, i32* @bfa_iocfc_sm_dconf_write, align 4
  %57 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %55, i32 %56)
  br label %103

58:                                               ; preds = %2
  %59 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %60 = load i32, i32* @bfa_iocfc_sm_failed, align 4
  %61 = call i32 @bfa_fsm_set_state(%struct.bfa_iocfc_s* %59, i32 %60)
  %62 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %63 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** @BFA_FALSE, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %103

71:                                               ; preds = %58
  %72 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %73 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i32 %72, i32* %77, align 4
  %78 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %82 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* @bfa_iocfc_enable_cb, align 4
  %87 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %88 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call i32 @bfa_cb_queue(%struct.TYPE_7__* %80, i32* %85, i32 %86, %struct.TYPE_7__* %89)
  %91 = load i8*, i8** @BFA_FALSE, align 8
  %92 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %93 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i8* %91, i8** %96, align 8
  br label %103

97:                                               ; preds = %2
  %98 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %99 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @bfa_sm_fault(%struct.TYPE_7__* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %71, %70, %54, %50, %24, %23
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
