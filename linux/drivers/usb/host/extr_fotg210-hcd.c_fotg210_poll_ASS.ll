; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_poll_ASS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_poll_ASS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@CMD_ASE = common dso_local global i32 0, align 4
@STS_ASS = common dso_local global i32 0, align 4
@FOTG210_HRTIMER_POLL_ASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Waited too long for the async schedule status (%x/%x), giving up\0A\00", align 1
@FOTG210_HRTIMER_DISABLE_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @fotg210_poll_ASS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_poll_ASS(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %5 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CMD_ASE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @STS_ASS, align 4
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %4, align 4
  %23 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %24 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @fotg210_readl(%struct.fotg210_hcd* %23, i32* %27)
  %29 = load i32, i32* @STS_ASS, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %21
  %35 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = icmp slt i64 %37, 20
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %42 = load i32, i32* @FOTG210_HRTIMER_POLL_ASS, align 4
  %43 = call i32 @fotg210_enable_event(%struct.fotg210_hcd* %41, i32 %42, i32 1)
  br label %74

44:                                               ; preds = %34
  %45 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %21
  %50 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %56 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %61 = load i32, i32* @CMD_ASE, align 4
  %62 = call i32 @fotg210_set_command_bit(%struct.fotg210_hcd* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  br label %74

64:                                               ; preds = %49
  %65 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %66 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %71 = load i32, i32* @FOTG210_HRTIMER_DISABLE_ASYNC, align 4
  %72 = call i32 @fotg210_enable_event(%struct.fotg210_hcd* %70, i32 %71, i32 1)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %10, %40, %73, %63
  ret void
}

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @fotg210_enable_event(%struct.fotg210_hcd*, i32, i32) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, i32, i32) #1

declare dso_local i32 @fotg210_set_command_bit(%struct.fotg210_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
