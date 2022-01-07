; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_check_link_state_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_check_link_state_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_dev = type { i32, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"link_state: %d->%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_dev*)* @check_link_state_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_link_state_events(%struct.switchtec_dev* %0) #0 {
  %2 = alloca %struct.switchtec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switchtec_dev* %0, %struct.switchtec_dev** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %48, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %10 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %15 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @ioread32(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %23 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 5
  %29 = and i32 %28, 255
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %32 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %30, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %42 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %13
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %7

51:                                               ; preds = %7
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.switchtec_dev*, %struct.switchtec_dev** %2, align 8
  %56 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %55, i32 0, i32 2
  %57 = call i32 @schedule_work(i32* %56)
  br label %58

58:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
