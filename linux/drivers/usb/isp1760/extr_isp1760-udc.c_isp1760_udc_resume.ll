; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@USB_STATE_DEFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_udc*)* @isp1760_udc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1760_udc_resume(%struct.isp1760_udc* %0) #0 {
  %2 = alloca %struct.isp1760_udc*, align 8
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %2, align 8
  %3 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %4 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_STATE_DEFAULT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %12 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_4__*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %19 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.isp1760_udc*, %struct.isp1760_udc** %2, align 8
  %24 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %23, i32 0, i32 0
  %25 = call i32 %22(%struct.TYPE_4__* %24)
  br label %26

26:                                               ; preds = %9, %17, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
