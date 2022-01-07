; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_set_tpo_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-opal.c_opal_set_tpo_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64 }
%struct.opal_msg = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Alarm set to %x %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Alarm getting disabled\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get the async token\0A\00", align 1
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @opal_set_tpo_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_set_tpo_time(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.opal_msg, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %17 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %16, i32 0, i32 0
  %18 = call i32 @tm_to_opal(i32* %17, i32* %8, i32* %6)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %15
  %25 = call i32 (...) @opal_async_get_token_interruptible()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 32
  %42 = and i32 %41, -65536
  %43 = call i32 @opal_tpo_write(i32 %38, i32 %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %69

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @opal_async_wait_response(i32 %51, %struct.opal_msg* %7)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %69

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @opal_get_async_rc(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @OPAL_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %55, %47
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @opal_async_release_token(i32 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %35
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @tm_to_opal(i32*, i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @opal_async_get_token_interruptible(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @opal_tpo_write(i32, i32, i32) #1

declare dso_local i32 @opal_async_wait_response(i32, %struct.opal_msg*) #1

declare dso_local i32 @opal_get_async_rc(i32) #1

declare dso_local i32 @opal_async_release_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
