; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-efi.c_efi_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-efi.c_efi_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i32*)* }
%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }

@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"write status is %d\0A\00", align 1
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @efi_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %7, i32 0, i32 1
  %9 = call i32 @convert_to_efi_time(i32* %8, i32* %5)
  %10 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 %10(i32 %14, i32* %5)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @dev_warn(%struct.device* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @EFI_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ 0, %23 ], [ %26, %24 ]
  ret i32 %28
}

declare dso_local i32 @convert_to_efi_time(i32*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
