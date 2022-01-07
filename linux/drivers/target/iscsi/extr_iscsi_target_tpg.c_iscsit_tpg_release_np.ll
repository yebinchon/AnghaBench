; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_release_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_release_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tpg_np = type { i32*, i32* }
%struct.iscsi_portal_group = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_np = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"CORE[%s] - Removed Network Portal: %pISpc,%hu on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tpg_np*, %struct.iscsi_portal_group*, %struct.iscsi_np*)* @iscsit_tpg_release_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_tpg_release_np(%struct.iscsi_tpg_np* %0, %struct.iscsi_portal_group* %1, %struct.iscsi_np* %2) #0 {
  %4 = alloca %struct.iscsi_tpg_np*, align 8
  %5 = alloca %struct.iscsi_portal_group*, align 8
  %6 = alloca %struct.iscsi_np*, align 8
  store %struct.iscsi_tpg_np* %0, %struct.iscsi_tpg_np** %4, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %5, align 8
  store %struct.iscsi_np* %2, %struct.iscsi_np** %6, align 8
  %7 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %8 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %9 = call i32 @iscsit_clear_tpg_np_login_thread(%struct.iscsi_tpg_np* %7, %struct.iscsi_portal_group* %8, i32 1)
  %10 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %15, i32 0, i32 1
  %17 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %14, i32* %16, i32 %19, i32 %24)
  %26 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %4, align 8
  %31 = call i32 @kfree(%struct.iscsi_tpg_np* %30)
  %32 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %33 = call i32 @iscsit_del_np(%struct.iscsi_np* %32)
  ret i32 %33
}

declare dso_local i32 @iscsit_clear_tpg_np_login_thread(%struct.iscsi_tpg_np*, %struct.iscsi_portal_group*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.iscsi_tpg_np*) #1

declare dso_local i32 @iscsit_del_np(%struct.iscsi_np*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
