; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_add_portal_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_add_portal_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tiqn = type { i32, i32, i32, i32 }
%struct.iscsi_portal_group = type { i64, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iscsi_portal_group* }

@TPG_STATE_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Unable to add iSCSI Target Portal Group: %d while not in TPG_STATE_FREE state.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@TPG_STATE_INACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"CORE[%s]_TPG[%hu] - Added iSCSI Target Portal Group\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_tpg_add_portal_group(%struct.iscsi_tiqn* %0, %struct.iscsi_portal_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tiqn*, align 8
  %5 = alloca %struct.iscsi_portal_group*, align 8
  store %struct.iscsi_tiqn* %0, %struct.iscsi_tiqn** %4, align 8
  store %struct.iscsi_portal_group* %1, %struct.iscsi_portal_group** %5, align 8
  %6 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %7 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TPG_STATE_FREE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %20 = call i32 @iscsit_set_default_tpg_attribs(%struct.iscsi_portal_group* %19)
  %21 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %21, i32 0, i32 1
  %23 = call i64 @iscsi_create_default_params(i32** %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %62

26:                                               ; preds = %18
  %27 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %28 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.iscsi_portal_group* %27, %struct.iscsi_portal_group** %30, align 8
  %31 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %31, i32 0, i32 4
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load i64, i64* @TPG_STATE_INACTIVE, align 8
  %35 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %38 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %37, i32 0, i32 4
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %43, i32 0, i32 3
  %45 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %45, i32 0, i32 3
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %49 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  store i32 0, i32* %3, align 4
  br label %77

62:                                               ; preds = %25
  %63 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %69 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @iscsi_release_param_list(i32* %70)
  %72 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %26, %11
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @iscsit_set_default_tpg_attribs(%struct.iscsi_portal_group*) #1

declare dso_local i64 @iscsi_create_default_params(i32**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iscsi_release_param_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
