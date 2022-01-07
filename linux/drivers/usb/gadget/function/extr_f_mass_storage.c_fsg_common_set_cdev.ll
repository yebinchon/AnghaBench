; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_set_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_set_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fsg_common = type { i32, %struct.TYPE_3__*, %struct.usb_composite_dev*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_composite_dev = type { i32, %struct.TYPE_3__* }
%struct.usb_string = type { i32 }

@fsg_strings_array = common dso_local global i32 0, align 4
@fsg_strings = common dso_local global i32 0, align 4
@FSG_STRING_INTERFACE = common dso_local global i64 0, align 8
@fsg_intf_desc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_common_set_cdev(%struct.fsg_common* %0, %struct.usb_composite_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsg_common*, align 8
  %6 = alloca %struct.usb_composite_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_string*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %5, align 8
  store %struct.usb_composite_dev* %1, %struct.usb_composite_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %10 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %13 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %12, i32 0, i32 1
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %15 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %20 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %22 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %25 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %27 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %28 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %27, i32 0, i32 2
  store %struct.usb_composite_dev* %26, %struct.usb_composite_dev** %28, align 8
  %29 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %6, align 8
  %30 = load i32, i32* @fsg_strings_array, align 4
  %31 = load i32, i32* @fsg_strings, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev* %29, i32 %30, i32 %32)
  store %struct.usb_string* %33, %struct.usb_string** %8, align 8
  %34 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %35 = call i64 @IS_ERR(%struct.usb_string* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %39 = call i32 @PTR_ERR(%struct.usb_string* %38)
  store i32 %39, i32* %4, align 4
  br label %59

40:                                               ; preds = %3
  %41 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %42 = load i64, i64* @FSG_STRING_INTERFACE, align 8
  %43 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %41, i64 %42
  %44 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fsg_intf_desc, i32 0, i32 0), align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %50 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i64 @gadget_is_stall_supported(%struct.TYPE_3__* %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %48, %40
  %55 = phi i1 [ false, %40 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = load %struct.fsg_common*, %struct.fsg_common** %5, align 8
  %58 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %37
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.usb_string* @usb_gstrings_attach(%struct.usb_composite_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_ERR(%struct.usb_string*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_string*) #1

declare dso_local i64 @gadget_is_stall_supported(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
