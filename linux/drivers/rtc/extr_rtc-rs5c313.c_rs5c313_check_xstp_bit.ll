; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c313.c_rs5c313_check_xstp_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c313.c_rs5c313_check_xstp_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32 }

@RS5C313_CEENABLE = common dso_local global i32 0, align 4
@RS5C313_CNTREG_WTEN_XSTP = common dso_local global i32 0, align 4
@RS5C313_CNTREG_ADJ_BSY = common dso_local global i32 0, align 4
@RS5C313_MISCOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid value, resetting to 1 Jan 2000\0A\00", align 1
@RS5C313_CEDISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs5c313_check_xstp_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs5c313_check_xstp_bit() #0 {
  %1 = alloca %struct.rtc_time, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RS5C313_CEENABLE, align 4
  %4 = call i32 (...) @rs5c313_read_cntreg()
  %5 = load i32, i32* @RS5C313_CNTREG_WTEN_XSTP, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %0
  %9 = call i32 @rs5c313_write_intintvreg(i32 0)
  %10 = call i32 @rs5c313_write_cntreg(i32 7)
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %22, %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = call i32 (...) @rs5c313_read_cntreg()
  %16 = load i32, i32* @RS5C313_CNTREG_ADJ_BSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @RS5C313_MISCOP, align 4
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %11

25:                                               ; preds = %19, %11
  %26 = call i32 @memset(%struct.rtc_time* %1, i32 0, i32 12)
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 2
  store i32 100, i32* %29, align 4
  %30 = call i32 @rs5c313_rtc_set_time(i32* null, %struct.rtc_time* %1)
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %25, %0
  %33 = load i32, i32* @RS5C313_CEDISABLE, align 4
  %34 = call i32 @ndelay(i32 700)
  ret void
}

declare dso_local i32 @rs5c313_read_cntreg(...) #1

declare dso_local i32 @rs5c313_write_intintvreg(i32) #1

declare dso_local i32 @rs5c313_write_cntreg(i32) #1

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i32 @rs5c313_rtc_set_time(i32*, %struct.rtc_time*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
