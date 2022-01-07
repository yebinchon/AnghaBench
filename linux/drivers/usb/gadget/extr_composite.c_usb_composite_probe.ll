; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_composite_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_composite_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget_driver = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.usb_composite_driver = type { i8*, i32, %struct.usb_gadget_driver, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"composite\00", align 1
@composite_driver_template = common dso_local global %struct.usb_gadget_driver zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_composite_probe(%struct.usb_composite_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_composite_driver*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  store %struct.usb_composite_driver* %0, %struct.usb_composite_driver** %3, align 8
  %5 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %6 = icmp ne %struct.usb_composite_driver* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %9 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %14 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %7, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %12
  %21 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %22 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %27 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %30 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %29, i32 0, i32 2
  %31 = bitcast %struct.usb_gadget_driver* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.usb_gadget_driver* @composite_driver_template to i8*), i64 24, i1 false)
  %32 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %33 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %32, i32 0, i32 2
  store %struct.usb_gadget_driver* %33, %struct.usb_gadget_driver** %4, align 8
  %34 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %35 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %38 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %40 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %43 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %3, align 8
  %46 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %49 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %51 = call i32 @usb_gadget_probe_driver(%struct.usb_gadget_driver* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %28, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usb_gadget_probe_driver(%struct.usb_gadget_driver*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
