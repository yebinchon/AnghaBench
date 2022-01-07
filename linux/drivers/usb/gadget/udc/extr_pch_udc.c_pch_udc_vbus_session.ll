; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_vbus_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_vbus_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_dev*, i32)* @pch_udc_vbus_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_vbus_session(%struct.pch_udc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_udc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pch_udc_dev* %0, %struct.pch_udc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %9 = call i32 @pch_udc_reconnect(%struct.pch_udc_dev* %8)
  %10 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = icmp ne i32 (i32*)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %29 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %33, i32 0, i32 2
  %35 = call i32 %32(i32* %34)
  %36 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %24, %17, %12
  %40 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %41 = call i32 @pch_udc_set_disconnect(%struct.pch_udc_dev* %40)
  %42 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @pch_udc_reconnect(%struct.pch_udc_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pch_udc_set_disconnect(%struct.pch_udc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
