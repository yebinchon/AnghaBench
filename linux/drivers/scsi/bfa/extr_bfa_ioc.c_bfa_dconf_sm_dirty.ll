; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_dconf_sm_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dconf_mod_s = type { i32, i32 }

@bfa_dconf_sm_sync = common dso_local global i32 0, align 4
@bfa_dconf_timer = common dso_local global i32 0, align 4
@BFA_DCONF_UPDATE_TOV = common dso_local global i32 0, align 4
@bfa_dconf_sm_final_sync = common dso_local global i32 0, align 4
@bfa_dconf_sm_iocdown_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dconf_mod_s*, i32)* @bfa_dconf_sm_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dconf_sm_dirty(%struct.bfa_dconf_mod_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dconf_mod_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dconf_mod_s* %0, %struct.bfa_dconf_mod_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %56 [
    i32 129, label %11
    i32 128, label %17
    i32 132, label %30
    i32 131, label %48
    i32 130, label %49
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %13 = load i32, i32* @bfa_dconf_sm_sync, align 4
  %14 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %12, i32 %13)
  %15 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %16 = call i32 @bfa_dconf_flash_write(%struct.bfa_dconf_mod_s* %15)
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %18, i32 0, i32 1
  %20 = call i32 @bfa_timer_stop(i32* %19)
  %21 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %24, i32 0, i32 1
  %26 = load i32, i32* @bfa_dconf_timer, align 4
  %27 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %28 = load i32, i32* @BFA_DCONF_UPDATE_TOV, align 4
  %29 = call i32 @bfa_timer_start(i32 %23, i32* %25, i32 %26, %struct.bfa_dconf_mod_s* %27, i32 %28)
  br label %62

30:                                               ; preds = %2
  %31 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %31, i32 0, i32 1
  %33 = call i32 @bfa_timer_stop(i32* %32)
  %34 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %37, i32 0, i32 1
  %39 = load i32, i32* @bfa_dconf_timer, align 4
  %40 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %41 = load i32, i32* @BFA_DCONF_UPDATE_TOV, align 4
  %42 = call i32 @bfa_timer_start(i32 %36, i32* %38, i32 %39, %struct.bfa_dconf_mod_s* %40, i32 %41)
  %43 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %44 = load i32, i32* @bfa_dconf_sm_final_sync, align 4
  %45 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %43, i32 %44)
  %46 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %47 = call i32 @bfa_dconf_flash_write(%struct.bfa_dconf_mod_s* %46)
  br label %62

48:                                               ; preds = %2
  br label %62

49:                                               ; preds = %2
  %50 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %50, i32 0, i32 1
  %52 = call i32 @bfa_timer_stop(i32* %51)
  %53 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %54 = load i32, i32* @bfa_dconf_sm_iocdown_dirty, align 4
  %55 = call i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s* %53, i32 %54)
  br label %62

56:                                               ; preds = %2
  %57 = load %struct.bfa_dconf_mod_s*, %struct.bfa_dconf_mod_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_dconf_mod_s, %struct.bfa_dconf_mod_s* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bfa_sm_fault(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %49, %48, %30, %17, %11
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_dconf_flash_write(%struct.bfa_dconf_mod_s*) #1

declare dso_local i32 @bfa_timer_stop(i32*) #1

declare dso_local i32 @bfa_timer_start(i32, i32*, i32, %struct.bfa_dconf_mod_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
