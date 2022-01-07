; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_handle_dn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_handle_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.device* }
%struct.device = type { i32 }
%struct.wusb_dn_hdr = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"DN data shorter than DN header (%d < %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unknown DN %u (%d octets) from %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wusbhc_handle_dn(%struct.wusbhc* %0, i32 %1, %struct.wusb_dn_hdr* %2, i64 %3) #0 {
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusb_dn_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wusb_dn_hdr* %2, %struct.wusb_dn_hdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %11 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i32 4)
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.wusb_dn_hdr, %struct.wusb_dn_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %39 [
    i32 133, label %24
    i32 134, label %29
    i32 132, label %33
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
    i32 131, label %38
  ]

24:                                               ; preds = %20
  %25 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %26 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @wusbhc_handle_dn_connect(%struct.wusbhc* %25, %struct.wusb_dn_hdr* %26, i64 %27)
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @wusbhc_handle_dn_alive(%struct.wusbhc* %30, i32 %31)
  br label %48

33:                                               ; preds = %20
  %34 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @wusbhc_handle_dn_disconnect(%struct.wusbhc* %34, i32 %35)
  br label %48

37:                                               ; preds = %20, %20, %20
  br label %48

38:                                               ; preds = %20
  br label %48

39:                                               ; preds = %20
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load %struct.wusb_dn_hdr*, %struct.wusb_dn_hdr** %7, align 8
  %42 = getelementptr inbounds %struct.wusb_dn_hdr, %struct.wusb_dn_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_warn(%struct.device* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %15, %39, %38, %37, %33, %29, %24
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @wusbhc_handle_dn_connect(%struct.wusbhc*, %struct.wusb_dn_hdr*, i64) #1

declare dso_local i32 @wusbhc_handle_dn_alive(%struct.wusbhc*, i32) #1

declare dso_local i32 @wusbhc_handle_dn_disconnect(%struct.wusbhc*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
