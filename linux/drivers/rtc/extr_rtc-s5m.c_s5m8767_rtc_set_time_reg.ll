; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8767_rtc_set_time_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s5m.c_s5m8767_rtc_set_time_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5m_rtc_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to read update reg(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to write update reg(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5m_rtc_info*)* @s5m8767_rtc_set_time_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5m8767_rtc_set_time_reg(%struct.s5m_rtc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5m_rtc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5m_rtc_info* %0, %struct.s5m_rtc_info** %3, align 8
  %6 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %7 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %10 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regmap_read(i32 %8, i32 %13, i32* %5)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %19 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  %25 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %26 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %33 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %36 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @regmap_write(i32 %34, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %24
  %45 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %46 = getelementptr inbounds %struct.s5m_rtc_info, %struct.s5m_rtc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %24
  %52 = load %struct.s5m_rtc_info*, %struct.s5m_rtc_info** %3, align 8
  %53 = call i32 @s5m8767_wait_for_udr_update(%struct.s5m_rtc_info* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %44, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @s5m8767_wait_for_udr_update(%struct.s5m_rtc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
