; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_fill_alua_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_fill_alua_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_lun*, i8*)* @spc_fill_alua_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spc_fill_alua_data(%struct.se_lun* %0, i8* %1) #0 {
  %3 = alloca %struct.se_lun*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 5
  store i8 -128, i8* %7, align 1
  %8 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %9 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %12 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %11, i32 0, i32 1
  %13 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  store %struct.t10_alua_tg_pt_gp* %13, %struct.t10_alua_tg_pt_gp** %5, align 8
  %14 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %15 = icmp ne %struct.t10_alua_tg_pt_gp* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %5, align 8
  %18 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %20
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  %29 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
