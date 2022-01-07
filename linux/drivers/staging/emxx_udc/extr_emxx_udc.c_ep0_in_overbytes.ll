; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_ep0_in_overbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_ep0_in_overbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32 }
%union.usb_reg_access = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, i32*, i64)* @ep0_in_overbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_in_overbytes(%struct.nbu2ss_udc* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbu2ss_udc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.usb_reg_access, align 8
  %10 = alloca %union.usb_reg_access*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to %union.usb_reg_access*
  store %union.usb_reg_access* %12, %union.usb_reg_access** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %union.usb_reg_access*, %union.usb_reg_access** %10, align 8
  %25 = bitcast %union.usb_reg_access* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %union.usb_reg_access* %9 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %23
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %41 = bitcast %union.usb_reg_access* %9 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @_nbu2ss_ep_in_end(%struct.nbu2ss_udc* %40, i32 0, i32 %42, i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @_nbu2ss_ep_in_end(%struct.nbu2ss_udc*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
