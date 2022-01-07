; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_pi_prot_verify_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_pi_prot_verify_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_dev_attrib = type { i32, i32, i64 }

@.str = private unnamed_addr constant [57 x i8] c"DIF protection enabled on underlying hardware, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"DIF protection not supported by backend, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @pi_prot_verify_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi_prot_verify_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_dev_attrib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.se_dev_attrib* @to_attrib(%struct.config_item* %11)
  store %struct.se_dev_attrib* %12, %struct.se_dev_attrib** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strtobool(i8* %13, i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %25 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %52

28:                                               ; preds = %19
  %29 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %30 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %28
  %38 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %39 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.se_dev_attrib*, %struct.se_dev_attrib** %8, align 8
  %49 = getelementptr inbounds %struct.se_dev_attrib, %struct.se_dev_attrib* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %42, %33, %22, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.se_dev_attrib* @to_attrib(%struct.config_item*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
