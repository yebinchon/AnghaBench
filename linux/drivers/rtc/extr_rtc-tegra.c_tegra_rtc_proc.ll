; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"name\09\09: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @tegra_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.seq_file*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %19

14:                                               ; preds = %8
  %15 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_name(%struct.device* %16)
  %18 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
