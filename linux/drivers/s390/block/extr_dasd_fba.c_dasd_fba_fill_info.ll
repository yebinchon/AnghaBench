; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_fba_private* }
%struct.dasd_fba_private = type { i32 }
%struct.dasd_information2_t = type { i32, i32, i32, i64, i32, i32 }

@DASD_FORMAT_LDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_information2_t*)* @dasd_fba_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_fba_fill_info(%struct.dasd_device* %0, %struct.dasd_information2_t* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_information2_t*, align 8
  %5 = alloca %struct.dasd_fba_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.dasd_information2_t* %1, %struct.dasd_information2_t** %4, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %7, align 8
  store %struct.dasd_fba_private* %8, %struct.dasd_fba_private** %5, align 8
  %9 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %12 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @DASD_FORMAT_LDL, align 4
  %14 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %15 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %17 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %16, i32 0, i32 2
  store i32 4, i32* %17, align 8
  %18 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %21, i32 0, i32 0
  %23 = call i32 @memcpy(i32 %20, i32* %22, i32 4)
  %24 = load %struct.dasd_information2_t*, %struct.dasd_information2_t** %4, align 8
  %25 = getelementptr inbounds %struct.dasd_information2_t, %struct.dasd_information2_t* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
