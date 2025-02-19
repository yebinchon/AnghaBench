; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_do_receive_copy_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_do_receive_copy_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32 }

@TCM_NO_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Entering target_do_receive_copy_results: SA: 0x%02x, List ID: 0x%02x, AL: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Receive Copy Results with non zero list identifier not supported\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Unsupported SA for receive copy results: 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_do_receive_copy_results(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 31
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %39 [
    i32 129, label %35
    i32 131, label %38
    i32 128, label %38
    i32 130, label %38
  ]

35:                                               ; preds = %33
  %36 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %37 = call i32 @target_rcr_operating_parameters(%struct.se_cmd* %36)
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %33, %33, %33
  br label %39

39:                                               ; preds = %33, %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %39, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @target_rcr_operating_parameters(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
