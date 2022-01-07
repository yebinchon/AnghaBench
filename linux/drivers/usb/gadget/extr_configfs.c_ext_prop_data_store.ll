; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_data_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_data_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.usb_os_desc_ext_prop = type { i8*, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_os_desc = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_ENV = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @ext_prop_data_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext_prop_data_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_os_desc_ext_prop*, align 8
  %9 = alloca %struct.usb_os_desc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.config_item*, %struct.config_item** %5, align 8
  %13 = call %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item* %12)
  store %struct.usb_os_desc_ext_prop* %13, %struct.usb_os_desc_ext_prop** %8, align 8
  %14 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %15 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_os_desc* @to_usb_os_desc(i32 %17)
  store %struct.usb_os_desc* %18, %struct.usb_os_desc** %9, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %35, label %27

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %3
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kmemdup(i8* %39, i64 %40, i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i64, i64* @ENOMEM, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %4, align 8
  br label %135

48:                                               ; preds = %38
  %49 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %50 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %55 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @mutex_lock(i64 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %60 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %65 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %67 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %70 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %75 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %77 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %80 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %84 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @USB_EXT_PROP_UNICODE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %58
  %89 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %90 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @USB_EXT_PROP_UNICODE_ENV, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %96 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @USB_EXT_PROP_UNICODE_LINK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %94, %88, %58
  %101 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %102 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %105 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %109 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = shl i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %113 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 2
  store i64 %115, i64* %113, align 8
  %116 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %8, align 8
  %117 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %120 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %118
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %100, %94
  %124 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %125 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.usb_os_desc*, %struct.usb_os_desc** %9, align 8
  %130 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @mutex_unlock(i64 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %133, %45
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item*) #1

declare dso_local %struct.usb_os_desc* @to_usb_os_desc(i32) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
