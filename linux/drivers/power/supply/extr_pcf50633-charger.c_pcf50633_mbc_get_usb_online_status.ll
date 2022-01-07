; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_get_usb_online_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_pcf50633_mbc_get_usb_online_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.pcf50633_mbc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_mbc_get_usb_online_status(%struct.pcf50633* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcf50633*, align 8
  %4 = alloca %struct.pcf50633_mbc*, align 8
  store %struct.pcf50633* %0, %struct.pcf50633** %3, align 8
  %5 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %6 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pcf50633_mbc* @platform_get_drvdata(i32 %7)
  store %struct.pcf50633_mbc* %8, %struct.pcf50633_mbc** %4, align 8
  %9 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %4, align 8
  %10 = icmp ne %struct.pcf50633_mbc* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %4, align 8
  %14 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local %struct.pcf50633_mbc* @platform_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
