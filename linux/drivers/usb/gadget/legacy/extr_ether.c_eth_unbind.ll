; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_ether.c_eth_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_ether.c_eth_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_composite_dev = type { i32 }

@f_rndis = common dso_local global i32 0, align 4
@fi_rndis = common dso_local global i32 0, align 4
@use_eem = common dso_local global i64 0, align 8
@f_eem = common dso_local global i32 0, align 4
@fi_eem = common dso_local global i32 0, align 4
@f_ecm = common dso_local global i32 0, align 4
@fi_ecm = common dso_local global i32 0, align 4
@f_geth = common dso_local global i32 0, align 4
@fi_geth = common dso_local global i32 0, align 4
@otg_desc = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @eth_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_unbind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %2, align 8
  %3 = call i64 (...) @has_rndis()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @f_rndis, align 4
  %7 = call i32 @usb_put_function(i32 %6)
  %8 = load i32, i32* @fi_rndis, align 4
  %9 = call i32 @usb_put_function_instance(i32 %8)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i64, i64* @use_eem, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @f_eem, align 4
  %15 = call i32 @usb_put_function(i32 %14)
  %16 = load i32, i32* @fi_eem, align 4
  %17 = call i32 @usb_put_function_instance(i32 %16)
  br label %35

18:                                               ; preds = %10
  %19 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %2, align 8
  %20 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @can_support_ecm(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @f_ecm, align 4
  %26 = call i32 @usb_put_function(i32 %25)
  %27 = load i32, i32* @fi_ecm, align 4
  %28 = call i32 @usb_put_function_instance(i32 %27)
  br label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @f_geth, align 4
  %31 = call i32 @usb_put_function(i32 %30)
  %32 = load i32, i32* @fi_geth, align 4
  %33 = call i32 @usb_put_function_instance(i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i32**, i32*** @otg_desc, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load i32**, i32*** @otg_desc, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  store i32* null, i32** %41, align 8
  ret i32 0
}

declare dso_local i64 @has_rndis(...) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @usb_put_function_instance(i32) #1

declare dso_local i64 @can_support_ecm(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
