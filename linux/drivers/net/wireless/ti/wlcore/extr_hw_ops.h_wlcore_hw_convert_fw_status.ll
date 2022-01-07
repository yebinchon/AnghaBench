; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_convert_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_convert_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, i8*, %struct.wl_fw_status*)* }
%struct.wl_fw_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i8*, %struct.wl_fw_status*)* @wlcore_hw_convert_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_hw_convert_fw_status(%struct.wl1271* %0, i8* %1, %struct.wl_fw_status* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wl_fw_status*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wl_fw_status* %2, %struct.wl_fw_status** %6, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.wl1271*, i8*, %struct.wl_fw_status*)*, i32 (%struct.wl1271*, i8*, %struct.wl_fw_status*)** %10, align 8
  %12 = icmp ne i32 (%struct.wl1271*, i8*, %struct.wl_fw_status*)* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.wl1271*, i8*, %struct.wl_fw_status*)*, i32 (%struct.wl1271*, i8*, %struct.wl_fw_status*)** %19, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.wl_fw_status*, %struct.wl_fw_status** %6, align 8
  %24 = call i32 %20(%struct.wl1271* %21, i8* %22, %struct.wl_fw_status* %23)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
