; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_containsFullLinuxPackage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_containsFullLinuxPackage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swoc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swoc_info*)* @containsFullLinuxPackage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @containsFullLinuxPackage(%struct.swoc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swoc_info*, align 8
  store %struct.swoc_info* %0, %struct.swoc_info** %3, align 8
  %4 = load %struct.swoc_info*, %struct.swoc_info** %3, align 8
  %5 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 8448
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.swoc_info*, %struct.swoc_info** %3, align 8
  %10 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 12287
  br i1 %12, label %23, label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.swoc_info*, %struct.swoc_info** %3, align 8
  %15 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 28928
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.swoc_info*, %struct.swoc_info** %3, align 8
  %20 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 32767
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %8
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %18, %13
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
