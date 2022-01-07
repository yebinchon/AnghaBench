; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/extr_kapi.c_pps_echo_client_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/extr_kapi.c_pps_echo_client_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"echo %s %s\0A\00", align 1
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pps_device*, i32, i8*)* @pps_echo_client_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_echo_client_default(%struct.pps_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pps_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.pps_device* %0, %struct.pps_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %8 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %21)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
