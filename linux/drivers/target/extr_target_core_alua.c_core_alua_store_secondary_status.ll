; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_store_secondary_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_core_alua_store_secondary_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unable to extract alua_tg_pt_status\0A\00", align 1
@ALUA_STATUS_NONE = common dso_local global i64 0, align 8
@ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG = common dso_local global i64 0, align 8
@ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Illegal value for alua_tg_pt_status: %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_alua_store_secondary_status(%struct.se_lun* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.se_lun* %0, %struct.se_lun** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @kstrtoul(i8* %10, i32 0, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @ALUA_STATUS_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @ALUA_STATUS_ALTERED_BY_EXPLICIT_STPG, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @ALUA_STATUS_ALTERED_BY_IMPLICIT_ALUA, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %25, %21, %17
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %38 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %29, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
