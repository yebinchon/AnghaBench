; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_....uwb.h_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_....uwb.h_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*, i8*)* @stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_show(%struct.stats* %0, i8* %1) #0 {
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stats* %0, %struct.stats** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.stats*, %struct.stats** %3, align 8
  %10 = getelementptr inbounds %struct.stats, %struct.stats* %9, i32 0, i32 3
  %11 = call i32 @atomic_read(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.stats*, %struct.stats** %3, align 8
  %17 = getelementptr inbounds %struct.stats, %struct.stats* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.stats*, %struct.stats** %3, align 8
  %20 = getelementptr inbounds %struct.stats, %struct.stats* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.stats*, %struct.stats** %3, align 8
  %23 = getelementptr inbounds %struct.stats, %struct.stats* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @scnprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
