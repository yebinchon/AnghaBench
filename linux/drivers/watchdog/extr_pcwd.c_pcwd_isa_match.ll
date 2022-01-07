; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_isa_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_isa_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@pcwd_ioports = common dso_local global i32* null, align 8
@debug = common dso_local global i64 0, align 8
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"pcwd_isa_match id=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PCWD\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Port 0x%04x unavailable\0A\00", align 1
@WD_HRTBT = common dso_local global i32 0, align 4
@WD_REVC_HRBT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pcwd_isa_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcwd_isa_match(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32*, i32** @pcwd_ioports, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @debug, align 8
  %19 = load i64, i64* @DEBUG, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @request_region(i32 %25, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %78

31:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @inb_p(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @inb_p(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 255
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %42, label %74

42:                                               ; preds = %39, %31
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = call i32 @msleep(i32 500)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @inb_p(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @inb_p(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = xor i32 %55, %56
  %58 = load i32, i32* @WD_HRTBT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = xor i32 %62, %63
  %65 = load i32, i32* @WD_REVC_HRBT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %46
  store i32 1, i32* %12, align 4
  br label %73

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %43

73:                                               ; preds = %68, %43
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @release_region(i32 %75, i32 4)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %28
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
