; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_ch_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_channel = type { i32 }

@CHOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(ch_%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RIO_CM_CHAN_BOUND = common dso_local global i32 0, align 4
@RIO_CM_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @riocm_ch_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riocm_ch_listen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rio_channel*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rio_channel* null, %struct.rio_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @CHOP, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @riocm_debug(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.rio_channel* @riocm_get_channel(i32 %9)
  store %struct.rio_channel* %10, %struct.rio_channel** %4, align 8
  %11 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %12 = icmp ne %struct.rio_channel* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %18 = load i32, i32* @RIO_CM_CHAN_BOUND, align 4
  %19 = load i32, i32* @RIO_CM_LISTEN, align 4
  %20 = call i32 @riocm_cmp_exch(%struct.rio_channel* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.rio_channel*, %struct.rio_channel** %4, align 8
  %27 = call i32 @riocm_put_channel(%struct.rio_channel* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @riocm_debug(i32, i8*, i32) #1

declare dso_local %struct.rio_channel* @riocm_get_channel(i32) #1

declare dso_local i32 @riocm_cmp_exch(%struct.rio_channel*, i32, i32) #1

declare dso_local i32 @riocm_put_channel(%struct.rio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
