; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_add_tiqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_add_tiqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tiqn = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ISCSI_IQN_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Target IQN exceeds %d bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TIQN_STATE_ACTIVE = common dso_local global i32 0, align 4
@tiqn_lock = common dso_local global i32 0, align 4
@tiqn_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"idr_alloc() failed for tiqn->tiqn_index\0A\00", align 1
@g_tiqn_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"CORE[0] - Added iSCSI Target IQN: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_tiqn* @iscsit_add_tiqn(i8* %0) #0 {
  %2 = alloca %struct.iscsi_tiqn*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscsi_tiqn*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.iscsi_tiqn* null, %struct.iscsi_tiqn** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = load i64, i64* @ISCSI_IQN_LEN, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* @ISCSI_IQN_LEN, align 8
  %12 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.iscsi_tiqn* @ERR_PTR(i32 %14)
  store %struct.iscsi_tiqn* %15, %struct.iscsi_tiqn** %2, align 8
  br label %87

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.iscsi_tiqn* @kzalloc(i32 40, i32 %17)
  store %struct.iscsi_tiqn* %18, %struct.iscsi_tiqn** %4, align 8
  %19 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %20 = icmp ne %struct.iscsi_tiqn* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.iscsi_tiqn* @ERR_PTR(i32 %23)
  store %struct.iscsi_tiqn* %24, %struct.iscsi_tiqn** %2, align 8
  br label %87

25:                                               ; preds = %16
  %26 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @sprintf(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %31, i32 0, i32 2
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %34, i32 0, i32 9
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %37, i32 0, i32 8
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %40, i32 0, i32 7
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load i32, i32* @TIQN_STATE_ACTIVE, align 4
  %56 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @idr_preload(i32 %58)
  %60 = call i32 @spin_lock(i32* @tiqn_lock)
  %61 = load i32, i32* @GFP_NOWAIT, align 4
  %62 = call i32 @idr_alloc(i32* @tiqn_idr, i32* null, i32 0, i32 0, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %25
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 @spin_unlock(i32* @tiqn_lock)
  %68 = call i32 (...) @idr_preload_end()
  %69 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %70 = call i32 @kfree(%struct.iscsi_tiqn* %69)
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.iscsi_tiqn* @ERR_PTR(i32 %71)
  store %struct.iscsi_tiqn* %72, %struct.iscsi_tiqn** %2, align 8
  br label %87

73:                                               ; preds = %25
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %77, i32 0, i32 2
  %79 = call i32 @list_add_tail(i32* %78, i32* @g_tiqn_list)
  %80 = call i32 @spin_unlock(i32* @tiqn_lock)
  %81 = call i32 (...) @idr_preload_end()
  %82 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %83 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  store %struct.iscsi_tiqn* %86, %struct.iscsi_tiqn** %2, align 8
  br label %87

87:                                               ; preds = %73, %65, %21, %10
  %88 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  ret %struct.iscsi_tiqn* %88
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.iscsi_tiqn* @ERR_PTR(i32) #1

declare dso_local %struct.iscsi_tiqn* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @kfree(%struct.iscsi_tiqn*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
