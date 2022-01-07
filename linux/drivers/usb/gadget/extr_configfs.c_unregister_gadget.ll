; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_unregister_gadget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_unregister_gadget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gadget_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gadget_info*)* @unregister_gadget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_gadget(%struct.gadget_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gadget_info*, align 8
  %4 = alloca i32, align 4
  store %struct.gadget_info* %0, %struct.gadget_info** %3, align 8
  %5 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %6 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %16 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @usb_gadget_unregister_driver(%struct.TYPE_4__* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %25 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.gadget_info*, %struct.gadget_info** %3, align 8
  %31 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %23, %21, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @usb_gadget_unregister_driver(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
