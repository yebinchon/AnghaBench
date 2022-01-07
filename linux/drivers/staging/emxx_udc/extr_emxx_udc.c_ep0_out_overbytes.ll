; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_ep0_out_overbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_ep0_out_overbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.usb_reg_access = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, i32*, i64)* @ep0_out_overbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_out_overbytes(%struct.nbu2ss_udc* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.usb_reg_access, align 8
  %10 = alloca %union.usb_reg_access*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %union.usb_reg_access*
  store %union.usb_reg_access* %12, %union.usb_reg_access** %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %20 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @_nbu2ss_readl(i32* %22)
  %24 = bitcast %union.usb_reg_access* %9 to i32*
  store i32 %23, i32* %24, align 8
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %42, %18
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = bitcast %union.usb_reg_access* %9 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %union.usb_reg_access*, %union.usb_reg_access** %10, align 8
  %37 = bitcast %union.usb_reg_access* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %25

45:                                               ; preds = %25
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %45, %15, %3
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  ret i32 %51
}

declare dso_local i32 @_nbu2ss_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
