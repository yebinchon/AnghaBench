; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_composite_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 }
%struct.usb_composite_dev = type { %struct.TYPE_2__, i64, i32, i32, %struct.usb_gadget*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_composite_driver = type { i32 (%struct.usb_composite_dev.0*)*, i32, i64, i32 }
%struct.usb_composite_dev.0 = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"userspace failed to provide iSerialNumber\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @composite_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @composite_bind(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca %struct.usb_composite_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %9 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %10 = call %struct.usb_composite_driver* @to_cdriver(%struct.usb_gadget_driver* %9)
  store %struct.usb_composite_driver* %10, %struct.usb_composite_driver** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usb_composite_dev* @kzalloc(i32 40, i32 %13)
  store %struct.usb_composite_dev* %14, %struct.usb_composite_dev** %6, align 8
  %15 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %16 = icmp ne %struct.usb_composite_dev* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %96

19:                                               ; preds = %2
  %20 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %21 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %20, i32 0, i32 5
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %24 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %25 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %24, i32 0, i32 4
  store %struct.usb_gadget* %23, %struct.usb_gadget** %25, align 8
  %26 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %27 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %28 = call i32 @set_gadget_data(%struct.usb_gadget* %26, %struct.usb_composite_dev* %27)
  %29 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %30 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %29, i32 0, i32 3
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %33 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %32, i32 0, i32 2
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %7, align 8
  %36 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %37 = call i32 @composite_dev_prepare(%struct.usb_composite_driver* %35, %struct.usb_composite_dev* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %92

41:                                               ; preds = %19
  %42 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %7, align 8
  %43 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %42, i32 0, i32 0
  %44 = load i32 (%struct.usb_composite_dev.0*)*, i32 (%struct.usb_composite_dev.0*)** %43, align 8
  %45 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %46 = bitcast %struct.usb_composite_dev* %45 to %struct.usb_composite_dev.0*
  %47 = call i32 %44(%struct.usb_composite_dev.0* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %92

51:                                               ; preds = %41
  %52 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %53 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %58 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %59 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @composite_os_desc_req_prepare(%struct.usb_composite_dev* %57, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %92

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %68 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %67, i32 0, i32 0
  %69 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %7, align 8
  %70 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @update_unchanged_dev_desc(%struct.TYPE_2__* %68, i32 %71)
  %73 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %7, align 8
  %74 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %79 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %85 = call i32 @WARNING(%struct.usb_composite_dev* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %77, %66
  %87 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %88 = load %struct.usb_composite_driver*, %struct.usb_composite_driver** %7, align 8
  %89 = getelementptr inbounds %struct.usb_composite_driver, %struct.usb_composite_driver* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @INFO(%struct.usb_composite_dev* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  store i32 0, i32* %3, align 4
  br label %96

92:                                               ; preds = %64, %50, %40
  %93 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %94 = call i32 @__composite_unbind(%struct.usb_gadget* %93, i32 0)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %86, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.usb_composite_driver* @to_cdriver(%struct.usb_gadget_driver*) #1

declare dso_local %struct.usb_composite_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_gadget_data(%struct.usb_gadget*, %struct.usb_composite_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @composite_dev_prepare(%struct.usb_composite_driver*, %struct.usb_composite_dev*) #1

declare dso_local i32 @composite_os_desc_req_prepare(%struct.usb_composite_dev*, i32) #1

declare dso_local i32 @update_unchanged_dev_desc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @WARNING(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @INFO(%struct.usb_composite_dev*, i8*, i32) #1

declare dso_local i32 @__composite_unbind(%struct.usb_gadget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
