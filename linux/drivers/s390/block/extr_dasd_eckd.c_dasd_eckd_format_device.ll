; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_format_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.format_data_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.format_data_t*, i32)* @dasd_eckd_format_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_format_device(%struct.dasd_device* %0, %struct.format_data_t* %1, i32 %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.format_data_t*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %8 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @dasd_eckd_format_process_data(%struct.dasd_device* %7, %struct.format_data_t* %8, i32 %9, i32 0, i32* null, i32 0, i32* null)
  ret i32 %10
}

declare dso_local i32 @dasd_eckd_format_process_data(%struct.dasd_device*, %struct.format_data_t*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
