; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_wsm_release_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_wsm_release_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_release_tx_buffer(%struct.cw1200_common* %0, i32 %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %8 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %16 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 1
  %40 = call i32 @wake_up(i32* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
