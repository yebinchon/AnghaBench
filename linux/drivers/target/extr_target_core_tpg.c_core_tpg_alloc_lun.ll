; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_alloc_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_alloc_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { %struct.se_portal_group*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.se_portal_group = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to allocate se_lun memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_lun* @core_tpg_alloc_lun(%struct.se_portal_group* %0, i32 %1) #0 {
  %3 = alloca %struct.se_lun*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_lun*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.se_lun* @kzalloc(i32 48, i32 %7)
  store %struct.se_lun* %8, %struct.se_lun** %6, align 8
  %9 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %10 = icmp ne %struct.se_lun* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.se_lun* @ERR_PTR(i32 %14)
  store %struct.se_lun* %15, %struct.se_lun** %3, align 8
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %19 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %21 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %20, i32 0, i32 9
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %24 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %23, i32 0, i32 8
  %25 = call i32 @init_completion(i32* %24)
  %26 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %27 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %26, i32 0, i32 7
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %30 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %29, i32 0, i32 6
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %33 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %32, i32 0, i32 5
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %36 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %39 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %38, i32 0, i32 3
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %42 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %41, i32 0, i32 2
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %45 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %44, i32 0, i32 1
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %48 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %49 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %48, i32 0, i32 0
  store %struct.se_portal_group* %47, %struct.se_portal_group** %49, align 8
  %50 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  store %struct.se_lun* %50, %struct.se_lun** %3, align 8
  br label %51

51:                                               ; preds = %16, %11
  %52 = load %struct.se_lun*, %struct.se_lun** %3, align 8
  ret %struct.se_lun* %52
}

declare dso_local %struct.se_lun* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.se_lun* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
