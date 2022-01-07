; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_rrid_completor_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_usbctlx_rrid_completor_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbctlx_completor = type { i32 }
%struct.usbctlx_rrid_completor = type { i64, i32, i32 }
%struct.hfa384x_rridresult = type { i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"RID len mismatch, rid=0x%04x hlen=%d fwlen=%d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbctlx_completor*)* @usbctlx_rrid_completor_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbctlx_rrid_completor_fn(%struct.usbctlx_completor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbctlx_completor*, align 8
  %4 = alloca %struct.usbctlx_rrid_completor*, align 8
  %5 = alloca %struct.hfa384x_rridresult, align 8
  store %struct.usbctlx_completor* %0, %struct.usbctlx_completor** %3, align 8
  %6 = load %struct.usbctlx_completor*, %struct.usbctlx_completor** %3, align 8
  %7 = bitcast %struct.usbctlx_completor* %6 to %struct.usbctlx_rrid_completor*
  store %struct.usbctlx_rrid_completor* %7, %struct.usbctlx_rrid_completor** %4, align 8
  %8 = load %struct.usbctlx_rrid_completor*, %struct.usbctlx_rrid_completor** %4, align 8
  %9 = getelementptr inbounds %struct.usbctlx_rrid_completor, %struct.usbctlx_rrid_completor* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @usbctlx_get_rridresult(i32 %10, %struct.hfa384x_rridresult* %5)
  %12 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.usbctlx_rrid_completor*, %struct.usbctlx_rrid_completor** %4, align 8
  %15 = getelementptr inbounds %struct.usbctlx_rrid_completor, %struct.usbctlx_rrid_completor* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usbctlx_rrid_completor*, %struct.usbctlx_rrid_completor** %4, align 8
  %22 = getelementptr inbounds %struct.usbctlx_rrid_completor, %struct.usbctlx_rrid_completor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23, i64 %25)
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.usbctlx_rrid_completor*, %struct.usbctlx_rrid_completor** %4, align 8
  %31 = getelementptr inbounds %struct.usbctlx_rrid_completor, %struct.usbctlx_rrid_completor* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.hfa384x_rridresult, %struct.hfa384x_rridresult* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.usbctlx_rrid_completor*, %struct.usbctlx_rrid_completor** %4, align 8
  %36 = getelementptr inbounds %struct.usbctlx_rrid_completor, %struct.usbctlx_rrid_completor* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @memcpy(i32 %32, i32 %34, i64 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @usbctlx_get_rridresult(i32, %struct.hfa384x_rridresult*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
