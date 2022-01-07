; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_EP0_in_PIO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_EP0_in_PIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.usb_reg_access = type { i32 }

@EP0_PACKETSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, i32*, i32)* @EP0_in_PIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EP0_in_PIO(%struct.nbu2ss_udc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.usb_reg_access*, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @EP0_PACKETSIZE, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to %union.usb_reg_access*
  store %union.usb_reg_access* %14, %union.usb_reg_access** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %23, %18
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %35 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %union.usb_reg_access*, %union.usb_reg_access** %11, align 8
  %39 = bitcast %union.usb_reg_access* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_nbu2ss_writel(i32* %37, i32 %40)
  %42 = load %union.usb_reg_access*, %union.usb_reg_access** %11, align 8
  %43 = getelementptr inbounds %union.usb_reg_access, %union.usb_reg_access* %42, i32 1
  store %union.usb_reg_access* %43, %union.usb_reg_access** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
