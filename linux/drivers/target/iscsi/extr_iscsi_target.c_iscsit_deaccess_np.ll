; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_deaccess_np.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_deaccess_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_np = type { i32 }
%struct.iscsi_portal_group = type { i32, %struct.iscsi_tiqn* }
%struct.iscsi_tiqn = type { i32 }
%struct.iscsi_tpg_np = type { i32 }

@iscsit_login_kref_put = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_deaccess_np(%struct.iscsi_np* %0, %struct.iscsi_portal_group* %1, %struct.iscsi_tpg_np* %2) #0 {
  %4 = alloca %struct.iscsi_np*, align 8
  %5 = alloca %struct.iscsi_portal_group*, align 8
  %6 = alloca %struct.iscsi_tpg_np*, align 8
  %7 = alloca %struct.iscsi_tiqn*, align 8
  store %struct.iscsi_np* %0, %struct.iscsi_np** %4, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %5, align 8
  store %struct.iscsi_tpg_np* %2, %struct.iscsi_tpg_np** %6, align 8
  %8 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %9 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %8, i32 0, i32 1
  %10 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %9, align 8
  store %struct.iscsi_tiqn* %10, %struct.iscsi_tiqn** %7, align 8
  %11 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %11, i32 0, i32 0
  %13 = call i32 @up(i32* %12)
  %14 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %6, align 8
  %15 = icmp ne %struct.iscsi_tpg_np* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %17, i32 0, i32 0
  %19 = load i32, i32* @iscsit_login_kref_put, align 4
  %20 = call i32 @kref_put(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %7, align 8
  %23 = icmp ne %struct.iscsi_tiqn* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %7, align 8
  %26 = call i32 @iscsit_put_tiqn_for_login(%struct.iscsi_tiqn* %25)
  br label %27

27:                                               ; preds = %24, %21
  ret i32 0
}

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @iscsit_put_tiqn_for_login(%struct.iscsi_tiqn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
