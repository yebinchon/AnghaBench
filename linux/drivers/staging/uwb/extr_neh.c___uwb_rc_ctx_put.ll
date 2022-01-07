; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c___uwb_rc_ctx_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_neh.c___uwb_rc_ctx_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_rc_neh = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"context %u not set in bitmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_rc_neh*)* @__uwb_rc_ctx_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__uwb_rc_ctx_put(%struct.uwb_rc* %0, %struct.uwb_rc_neh* %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_rc_neh*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_rc_neh* %1, %struct.uwb_rc_neh** %4, align 8
  %6 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %10 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %16 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %19 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %26 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @WARN_ON(i32 1)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %32 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %35 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clear_bit(i32 %33, i32 %36)
  %38 = load %struct.uwb_rc_neh*, %struct.uwb_rc_neh** %4, align 8
  %39 = getelementptr inbounds %struct.uwb_rc_neh, %struct.uwb_rc_neh* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
