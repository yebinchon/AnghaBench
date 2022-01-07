; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_hba.c_core_alloc_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_hba.c_core_alloc_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { %struct.TYPE_4__*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.se_hba*, i32)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to allocate struct se_hba\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SCSI_INST_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hba_lock = common dso_local global i32 0, align 4
@hba_id_counter = common dso_local global i32 0, align 4
@hba_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"CORE_HBA[%d] - Attached HBA to Generic Target Core\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_hba* @core_alloc_hba(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_hba*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.se_hba* @kzalloc(i32 40, i32 %10)
  store %struct.se_hba* %11, %struct.se_hba** %8, align 8
  %12 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %13 = icmp ne %struct.se_hba* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.se_hba* @ERR_PTR(i32 %17)
  store %struct.se_hba* %18, %struct.se_hba** %4, align 8
  br label %92

19:                                               ; preds = %3
  %20 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %21 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %20, i32 0, i32 6
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %24 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %23, i32 0, i32 5
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load i32, i32* @SCSI_INST_INDEX, align 4
  %27 = call i32 @scsi_get_new_index(i32 %26)
  %28 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %29 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %32 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.TYPE_4__* @core_get_backend(i8* %35)
  %37 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %38 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %37, i32 0, i32 0
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %40 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %19
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %87

46:                                               ; preds = %19
  %47 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %48 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.se_hba*, i32)*, i32 (%struct.se_hba*, i32)** %52, align 8
  %54 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %53(%struct.se_hba* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %76

60:                                               ; preds = %46
  %61 = call i32 @spin_lock(i32* @hba_lock)
  %62 = load i32, i32* @hba_id_counter, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @hba_id_counter, align 4
  %64 = sext i32 %62 to i64
  %65 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %66 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %68 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %67, i32 0, i32 2
  %69 = call i32 @list_add_tail(i32* %68, i32* @hba_list)
  %70 = call i32 @spin_unlock(i32* @hba_lock)
  %71 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %72 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  store %struct.se_hba* %75, %struct.se_hba** %4, align 8
  br label %92

76:                                               ; preds = %59
  %77 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %78 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @module_put(i32 %83)
  %85 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %86 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %85, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %86, align 8
  br label %87

87:                                               ; preds = %76, %43
  %88 = load %struct.se_hba*, %struct.se_hba** %8, align 8
  %89 = call i32 @kfree(%struct.se_hba* %88)
  %90 = load i32, i32* %9, align 4
  %91 = call %struct.se_hba* @ERR_PTR(i32 %90)
  store %struct.se_hba* %91, %struct.se_hba** %4, align 8
  br label %92

92:                                               ; preds = %87, %60, %14
  %93 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  ret %struct.se_hba* %93
}

declare dso_local %struct.se_hba* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.se_hba* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @scsi_get_new_index(i32) #1

declare dso_local %struct.TYPE_4__* @core_get_backend(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.se_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
