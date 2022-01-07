; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_target_detach_tg_pt_gp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_target_detach_tg_pt_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_detach_tg_pt_gp(%struct.se_lun* %0) #0 {
  %2 = alloca %struct.se_lun*, align 8
  %3 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %2, align 8
  %4 = load %struct.se_lun*, %struct.se_lun** %2, align 8
  %5 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.se_lun*, %struct.se_lun** %2, align 8
  %8 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %7, i32 0, i32 1
  %9 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %8, align 8
  store %struct.t10_alua_tg_pt_gp* %9, %struct.t10_alua_tg_pt_gp** %3, align 8
  %10 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %3, align 8
  %11 = icmp ne %struct.t10_alua_tg_pt_gp* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.se_lun*, %struct.se_lun** %2, align 8
  %14 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %3, align 8
  %15 = call i32 @__target_detach_tg_pt_gp(%struct.se_lun* %13, %struct.t10_alua_tg_pt_gp* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.se_lun*, %struct.se_lun** %2, align 8
  %18 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__target_detach_tg_pt_gp(%struct.se_lun*, %struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
