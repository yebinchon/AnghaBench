; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_turbo_max_3.c_get_oc_core_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_turbo_max_3.c_get_oc_core_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OC_MAILBOX_FC_CONTROL_CMD = common dso_local global i32 0, align 4
@MSR_OC_MAILBOX_CMD_OFFSET = common dso_local global i32 0, align 4
@MSR_OC_MAILBOX_BUSY_BIT = common dso_local global i32 0, align 4
@MSR_OC_MAILBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cpu %d OC mailbox write failed\0A\00", align 1
@OC_MAILBOX_RETRY_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cpu %d OC mailbox read failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"cpu %d OC mailbox still processing\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MSR_OC_MAILBOX_RSP_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cpu %d OC mailbox cmd failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"cpu %d max_ratio %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_oc_core_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_oc_core_priority(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @OC_MAILBOX_FC_CONTROL_CMD, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MSR_OC_MAILBOX_CMD_OFFSET, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @MSR_OC_MAILBOX_BUSY_BIT, align 4
  %13 = call i32 @BIT_ULL(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @MSR_OC_MAILBOX, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @wrmsrl_safe(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %66, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @OC_MAILBOX_RETRY_COUNT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load i32, i32* @MSR_OC_MAILBOX, align 4
  %32 = call i32 @rdmsrl_safe(i32 %31, i32* %4)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %69

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MSR_OC_MAILBOX_BUSY_BIT, align 4
  %41 = call i32 @BIT_ULL(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %66

49:                                               ; preds = %38
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MSR_OC_MAILBOX_RSP_OFFSET, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 255
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENXIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %69

60:                                               ; preds = %49
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 255
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %64)
  br label %69

66:                                               ; preds = %44
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %26

69:                                               ; preds = %60, %55, %35, %26
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @wrmsrl_safe(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @rdmsrl_safe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
