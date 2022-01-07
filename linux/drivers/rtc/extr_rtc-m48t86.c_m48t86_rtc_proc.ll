; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.seq_file = type { i32 }

@M48T86_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mode\09\09: %s\0A\00", align 1
@M48T86_B_DM = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bcd\00", align 1
@M48T86_D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"battery\09\09: %s\0A\00", align 1
@M48T86_D_VRT = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.seq_file*)* @m48t86_rtc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_proc(%struct.device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @M48T86_B, align 4
  %8 = call zeroext i8 @m48t86_readb(%struct.device* %6, i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @M48T86_B_DM, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* @M48T86_D, align 4
  %21 = call zeroext i8 @m48t86_readb(%struct.device* %19, i32 %20)
  store i8 %21, i8* %5, align 1
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @M48T86_D_VRT, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)
  %31 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  ret i32 0
}

declare dso_local zeroext i8 @m48t86_readb(%struct.device*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
