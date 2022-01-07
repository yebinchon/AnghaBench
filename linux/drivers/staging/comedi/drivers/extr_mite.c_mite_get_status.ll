; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32, i32, %struct.mite* }
%struct.mite = type { i32, i64 }

@CHSR_DONE = common dso_local global i32 0, align 4
@CHOR_CLRDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mite_channel*)* @mite_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mite_get_status(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca %struct.mite*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %6 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %7 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %6, i32 0, i32 2
  %8 = load %struct.mite*, %struct.mite** %7, align 8
  store %struct.mite* %8, %struct.mite** %3, align 8
  %9 = load %struct.mite*, %struct.mite** %3, align 8
  %10 = getelementptr inbounds %struct.mite, %struct.mite* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mite*, %struct.mite** %3, align 8
  %14 = getelementptr inbounds %struct.mite, %struct.mite* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %17 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @MITE_CHSR(i32 %18)
  %20 = add nsw i64 %15, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CHSR_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %28 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @CHOR_CLRDONE, align 4
  %30 = load %struct.mite*, %struct.mite** %3, align 8
  %31 = getelementptr inbounds %struct.mite, %struct.mite* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %34 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @MITE_CHOR(i32 %35)
  %37 = add nsw i64 %32, %36
  %38 = call i32 @writel(i32 %29, i64 %37)
  br label %39

39:                                               ; preds = %26, %1
  %40 = load %struct.mite*, %struct.mite** %3, align 8
  %41 = getelementptr inbounds %struct.mite, %struct.mite* %40, i32 0, i32 0
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MITE_CHSR(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHOR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
