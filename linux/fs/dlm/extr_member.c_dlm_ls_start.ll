; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_ls_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_ls_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32, %struct.dlm_recover*, i64, i32 }
%struct.dlm_recover = type { i32, %struct.dlm_recover*, i64 }
%struct.dlm_config_node = type { i32, %struct.dlm_config_node*, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"start ignored: lockspace running\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unused recovery %llx %d\00", align 1
@LSFL_RECOVER_WORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_ls_start(%struct.dlm_ls* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_recover*, align 8
  %5 = alloca %struct.dlm_recover*, align 8
  %6 = alloca %struct.dlm_config_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_config_node* null, %struct.dlm_config_node** %6, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.dlm_recover* @kzalloc(i32 24, i32 %9)
  store %struct.dlm_recover* %10, %struct.dlm_recover** %4, align 8
  %11 = load %struct.dlm_recover*, %struct.dlm_recover** %4, align 8
  %12 = icmp ne %struct.dlm_recover* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %97

16:                                               ; preds = %1
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = bitcast %struct.dlm_config_node** %6 to %struct.dlm_recover**
  %21 = call i32 @dlm_config_nodes(i32 %19, %struct.dlm_recover** %20, i32* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %93

25:                                               ; preds = %16
  %26 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %27 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %30 = call i32 @dlm_locking_stopped(%struct.dlm_ls* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %37 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %89

40:                                               ; preds = %25
  %41 = load %struct.dlm_config_node*, %struct.dlm_config_node** %6, align 8
  %42 = bitcast %struct.dlm_config_node* %41 to %struct.dlm_recover*
  %43 = load %struct.dlm_recover*, %struct.dlm_recover** %4, align 8
  %44 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %43, i32 0, i32 1
  store %struct.dlm_recover* %42, %struct.dlm_recover** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.dlm_recover*, %struct.dlm_recover** %4, align 8
  %47 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %49 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.dlm_recover*, %struct.dlm_recover** %4, align 8
  %53 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %55 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %54, i32 0, i32 3
  %56 = load %struct.dlm_recover*, %struct.dlm_recover** %55, align 8
  store %struct.dlm_recover* %56, %struct.dlm_recover** %5, align 8
  %57 = load %struct.dlm_recover*, %struct.dlm_recover** %4, align 8
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %59 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %58, i32 0, i32 3
  store %struct.dlm_recover* %57, %struct.dlm_recover** %59, align 8
  %60 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %61 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %64 = icmp ne %struct.dlm_recover* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %40
  %66 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %67 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %68 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %71 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.dlm_ls*, i8*, ...) @log_error(%struct.dlm_ls* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %69, i32 %72)
  %74 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %74, i32 0, i32 1
  %76 = load %struct.dlm_recover*, %struct.dlm_recover** %75, align 8
  %77 = call i32 @kfree(%struct.dlm_recover* %76)
  %78 = load %struct.dlm_recover*, %struct.dlm_recover** %5, align 8
  %79 = call i32 @kfree(%struct.dlm_recover* %78)
  br label %80

80:                                               ; preds = %65, %40
  %81 = load i32, i32* @LSFL_RECOVER_WORK, align 4
  %82 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %83 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %82, i32 0, i32 1
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  %85 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %86 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @wake_up_process(i32 %87)
  store i32 0, i32* %2, align 4
  br label %97

89:                                               ; preds = %32
  %90 = load %struct.dlm_config_node*, %struct.dlm_config_node** %6, align 8
  %91 = bitcast %struct.dlm_config_node* %90 to %struct.dlm_recover*
  %92 = call i32 @kfree(%struct.dlm_recover* %91)
  br label %93

93:                                               ; preds = %89, %24
  %94 = load %struct.dlm_recover*, %struct.dlm_recover** %4, align 8
  %95 = call i32 @kfree(%struct.dlm_recover* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %80, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.dlm_recover* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_config_nodes(i32, %struct.dlm_recover**, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_locking_stopped(%struct.dlm_ls*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @log_error(%struct.dlm_ls*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.dlm_recover*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
