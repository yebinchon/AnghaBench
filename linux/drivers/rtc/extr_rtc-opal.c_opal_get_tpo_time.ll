; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_get_tpo_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_get_tpo_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32 }
%struct.opal_msg = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get the async token\0A\00", align 1
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No alarm is set\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Alarm set to %x %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @opal_get_tpo_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_get_tpo_time(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.opal_msg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = call i32 (...) @opal_async_get_token_interruptible()
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @opal_tpo_read(i32 %26, i32* %6, i32* %7)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %78

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @opal_async_wait_response(i32 %35, %struct.opal_msg* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %78

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @opal_get_async_rc(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @OPAL_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %78

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @be32_to_cpu(i32 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @be32_to_cpu(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 32
  store i32 %58, i32* %11, align 4
  %59 = load i64, i64* %12, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %78

68:                                               ; preds = %61, %52
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %75, i32 0, i32 0
  %77 = call i32 @opal_to_tm(i64 %73, i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %72, %64, %49, %39, %31
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @opal_async_release_token(i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @opal_async_get_token_interruptible(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @opal_tpo_read(i32, i32*, i32*) #1

declare dso_local i32 @opal_async_wait_response(i32, %struct.opal_msg*) #1

declare dso_local i32 @opal_get_async_rc(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @opal_to_tm(i64, i32, i32*) #1

declare dso_local i32 @opal_async_release_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
