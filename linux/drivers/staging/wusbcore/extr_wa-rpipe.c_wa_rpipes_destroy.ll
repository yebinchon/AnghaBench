; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_wa_rpipes_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_wa_rpipes_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"BUG: pipes not released on exit: %*pb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wa_rpipes_destroy(%struct.wahc* %0) #0 {
  %2 = alloca %struct.wahc*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.wahc* %0, %struct.wahc** %2, align 8
  %4 = load %struct.wahc*, %struct.wahc** %2, align 8
  %5 = getelementptr inbounds %struct.wahc, %struct.wahc* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.wahc*, %struct.wahc** %2, align 8
  %9 = getelementptr inbounds %struct.wahc, %struct.wahc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.wahc*, %struct.wahc** %2, align 8
  %12 = getelementptr inbounds %struct.wahc, %struct.wahc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bitmap_empty(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = call i32 @WARN_ON(i32 1)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.wahc*, %struct.wahc** %2, align 8
  %20 = getelementptr inbounds %struct.wahc, %struct.wahc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wahc*, %struct.wahc** %2, align 8
  %23 = getelementptr inbounds %struct.wahc, %struct.wahc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.wahc*, %struct.wahc** %2, align 8
  %28 = getelementptr inbounds %struct.wahc, %struct.wahc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bitmap_free(i32 %29)
  ret void
}

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @bitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
