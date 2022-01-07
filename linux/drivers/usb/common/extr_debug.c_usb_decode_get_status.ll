; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_debug.c_usb_decode_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_debug.c_usb_decode_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Get Device Status(Length = %d)\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Get Interface Status(Intf = %d, Length = %d)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Get Endpoint Status(ep%d%s)\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, i64)* @usb_decode_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_decode_get_status(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @USB_RECIP_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %39 [
    i32 130, label %14
    i32 128, label %19
    i32 129, label %25
  ]

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %39

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %20, i64 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %39

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %38 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %31, i8* %37)
  br label %39

39:                                               ; preds = %5, %25, %19, %14
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
