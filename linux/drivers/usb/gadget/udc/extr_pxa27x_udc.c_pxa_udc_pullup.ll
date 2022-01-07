; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.pxa_udc = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @pxa_udc_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_udc_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %8 = call %struct.pxa_udc* @to_gadget_udc(%struct.usb_gadget* %7)
  store %struct.pxa_udc* %8, %struct.pxa_udc** %6, align 8
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %15 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %13, %2
  %22 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dplus_pullup(%struct.pxa_udc* %22, i32 %23)
  %25 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %26 = call i64 @should_enable_udc(%struct.pxa_udc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %30 = call i32 @udc_enable(%struct.pxa_udc* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %33 = call i64 @should_disable_udc(%struct.pxa_udc* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.pxa_udc*, %struct.pxa_udc** %6, align 8
  %37 = call i32 @udc_disable(%struct.pxa_udc* %36)
  br label %38

38:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.pxa_udc* @to_gadget_udc(%struct.usb_gadget*) #1

declare dso_local i32 @dplus_pullup(%struct.pxa_udc*, i32) #1

declare dso_local i64 @should_enable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_enable(%struct.pxa_udc*) #1

declare dso_local i64 @should_disable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_disable(%struct.pxa_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
