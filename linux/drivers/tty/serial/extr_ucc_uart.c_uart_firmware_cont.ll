; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_uart_firmware_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ucc_uart.c_uart_firmware_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i64, i64 }
%struct.qe_firmware = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"firmware not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"could not load firmware\0A\00", align 1
@firmware_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @uart_firmware_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_firmware_cont(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qe_firmware*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.device*
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.firmware*, %struct.firmware** %3, align 8
  %11 = icmp ne %struct.firmware* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.firmware*, %struct.firmware** %3, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.qe_firmware*
  store %struct.qe_firmware* %19, %struct.qe_firmware** %5, align 8
  %20 = load %struct.qe_firmware*, %struct.qe_firmware** %5, align 8
  %21 = getelementptr inbounds %struct.qe_firmware, %struct.qe_firmware* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.firmware*, %struct.firmware** %3, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %40

31:                                               ; preds = %15
  %32 = load %struct.qe_firmware*, %struct.qe_firmware** %5, align 8
  %33 = call i32 @qe_upload_firmware(%struct.qe_firmware* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %40

39:                                               ; preds = %31
  store i32 1, i32* @firmware_loaded, align 4
  br label %40

40:                                               ; preds = %39, %36, %28
  %41 = load %struct.firmware*, %struct.firmware** %3, align 8
  %42 = call i32 @release_firmware(%struct.firmware* %41)
  br label %43

43:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @qe_upload_firmware(%struct.qe_firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
