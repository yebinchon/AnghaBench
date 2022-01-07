; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_initcshw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_initcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_cardstate* }
%struct.usb_cardstate = type { i32*, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@gigaset_modem_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @gigaset_initcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initcshw(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.usb_cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.usb_cardstate* @kmalloc(i32 32, i32 %5)
  store %struct.usb_cardstate* %6, %struct.usb_cardstate** %4, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.usb_cardstate* %6, %struct.usb_cardstate** %9, align 8
  %10 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %11 = icmp ne %struct.usb_cardstate* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %18 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %22 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %26 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %30 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %34 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 17, i32* %36, align 4
  %37 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %38 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  store i32 19, i32* %40, align 4
  %41 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %42 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %41, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %44 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %46 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %48 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %47, i32 0, i32 0
  %49 = load i32, i32* @gigaset_modem_fill, align 4
  %50 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %51 = ptrtoint %struct.cardstate* %50 to i64
  %52 = call i32 @tasklet_init(i32* %48, i32 %49, i64 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %16, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.usb_cardstate* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
