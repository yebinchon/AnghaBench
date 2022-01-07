; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_qcserial.c_handle_quectel_ec20.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_qcserial.c_handle_quectel_ec20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Quectel EC20 DM/DIAG interface found\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Quectel EC20 NMEA GPS interface found\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Quectel EC20 Modem port found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @handle_quectel_ec20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_quectel_ec20(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %17 [
    i32 0, label %7
    i32 1, label %10
    i32 2, label %13
    i32 3, label %13
    i32 4, label %16
  ]

7:                                                ; preds = %2
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @dev_dbg(%struct.device* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %17

13:                                               ; preds = %2, %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %17

16:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %17

17:                                               ; preds = %2, %16, %13, %10, %7
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
