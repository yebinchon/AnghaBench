; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_configure_failsafe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_configure_failsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.acx_header = type { i8*, i8* }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cmd configure (%d)\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMD_CONFIGURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CONFIGURE command NOK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_cmd_configure_failsafe(%struct.wl1271* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.acx_header*, align 8
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.acx_header*
  store %struct.acx_header* %15, %struct.acx_header** %12, align 8
  %16 = load i32, i32* @DEBUG_CMD, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @wl1271_debug(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %19, 16
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %50

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @cpu_to_le16(i64 %28)
  %30 = load %struct.acx_header*, %struct.acx_header** %12, align 8
  %31 = getelementptr inbounds %struct.acx_header, %struct.acx_header* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 16
  %34 = call i8* @cpu_to_le16(i64 %33)
  %35 = load %struct.acx_header*, %struct.acx_header** %12, align 8
  %36 = getelementptr inbounds %struct.acx_header, %struct.acx_header* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %38 = load i32, i32* @CMD_CONFIGURE, align 4
  %39 = load %struct.acx_header*, %struct.acx_header** %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @wlcore_cmd_send_failsafe(%struct.wl1271* %37, i32 %38, %struct.acx_header* %39, i64 %40, i32 0, i64 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %6, align 4
  br label %50

48:                                               ; preds = %27
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %45, %24
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @wlcore_cmd_send_failsafe(%struct.wl1271*, i32, %struct.acx_header*, i64, i32, i64) #1

declare dso_local i32 @wl1271_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
