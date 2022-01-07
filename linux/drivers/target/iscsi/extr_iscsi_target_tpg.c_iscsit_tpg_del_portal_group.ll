; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_del_portal_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_del_portal_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tiqn = type { i32, i32, i32 }
%struct.iscsi_portal_group = type { i32, i32, i32, i32, i32, i32* }

@TPG_STATE_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Unable to delete iSCSI Target Portal Group: %hu while active sessions exist, and force=0\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@TPG_STATE_FREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"CORE[%s]_TPG[%hu] - Deleted iSCSI Target Portal Group\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tpg_del_portal_group(%struct.iscsi_tiqn* %0, %struct.iscsi_portal_group* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_tiqn*, align 8
  %6 = alloca %struct.iscsi_portal_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_tiqn* %0, %struct.iscsi_tiqn** %5, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %10 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* @TPG_STATE_INACTIVE, align 4
  %16 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %18, i32 0, i32 2
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @iscsit_release_sessions_for_tpg(%struct.iscsi_portal_group* %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %3
  %36 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %37 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @iscsi_release_param_list(i32* %43)
  %45 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %48, i32 0, i32 4
  %50 = call i32 @core_tpg_deregister(i32* %49)
  %51 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %51, i32 0, i32 2
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load i32, i32* @TPG_STATE_FREE, align 4
  %55 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %60, i32 0, i32 1
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %67, i32 0, i32 1
  %69 = call i32 @list_del(i32* %68)
  %70 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %71 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %81 = call i32 @kfree(%struct.iscsi_portal_group* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %47, %25
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @iscsit_release_sessions_for_tpg(%struct.iscsi_portal_group*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @iscsi_release_param_list(i32*) #1

declare dso_local i32 @core_tpg_deregister(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.iscsi_portal_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
