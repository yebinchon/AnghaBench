; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_clear_tpg_np_login_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_clear_tpg_np_login_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tpg_np = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_portal_group = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"struct iscsi_tpg_np->tpg_np is NULL!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_tpg_np*, %struct.iscsi_portal_group*, i32)* @iscsit_clear_tpg_np_login_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsit_clear_tpg_np_login_thread(%struct.iscsi_tpg_np* %0, %struct.iscsi_portal_group* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_tpg_np*, align 8
  %5 = alloca %struct.iscsi_portal_group*, align 8
  %6 = alloca i32, align 4
  store %struct.iscsi_tpg_np* %0, %struct.iscsi_tpg_np** %4, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %29

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %26 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @iscsit_reset_np_thread(%struct.TYPE_2__* %24, %struct.iscsi_tpg_np* %25, %struct.iscsi_portal_group* %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %11
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_reset_np_thread(%struct.TYPE_2__*, %struct.iscsi_tpg_np*, %struct.iscsi_portal_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
