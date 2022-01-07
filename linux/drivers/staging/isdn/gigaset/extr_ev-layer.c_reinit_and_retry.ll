; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_reinit_and_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ev-layer.c_reinit_and_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Could not enter cid mode. Reinit device and try again.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not get a call id. Reinit device and try again.\0A\00", align 1
@PC_CID = common dso_local global i32 0, align 4
@MS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32)* @reinit_and_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinit_and_retry(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %45 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %64

48:                                               ; preds = %40
  %49 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %50 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @PC_CID, align 4
  %54 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %55 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %53
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %48, %43
  %65 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %66 = load i32, i32* @MS_INIT, align 4
  %67 = call i32 @schedule_init(%struct.cardstate* %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %33, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @schedule_init(%struct.cardstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
