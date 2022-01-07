; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_subsystem_check_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_subsystem_check_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@transport_subsystem_check_init.sub_api_initialized = internal global i32 0, align 4
@CONFIG_TCM_IBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"target_core_iblock\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to load target_core_iblock\0A\00", align 1
@CONFIG_TCM_FILEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"target_core_file\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to load target_core_file\0A\00", align 1
@CONFIG_TCM_PSCSI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"target_core_pscsi\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to load target_core_pscsi\0A\00", align 1
@CONFIG_TCM_USER2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"target_core_user\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unable to load target_core_user\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_subsystem_check_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @transport_subsystem_check_init.sub_api_initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %62

5:                                                ; preds = %0
  %6 = load i32, i32* @CONFIG_TCM_IBLOCK, align 4
  %7 = call i64 @IS_ENABLED(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = call i64 @request_module(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i1 [ false, %5 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* @CONFIG_TCM_FILEIO, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i64 @request_module(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* @CONFIG_TCM_PSCSI, align 4
  %35 = call i64 @IS_ENABLED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i64 @request_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* @CONFIG_TCM_USER2, align 4
  %49 = call i64 @IS_ENABLED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i64 @request_module(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i1 [ false, %47 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  store i32 1, i32* @transport_subsystem_check_init.sub_api_initialized, align 4
  br label %62

62:                                               ; preds = %61, %4
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @request_module(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
