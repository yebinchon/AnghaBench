; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_type_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_ext_prop_type_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.usb_os_desc_ext_prop = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_os_desc = type { i64 }

@USB_EXT_PROP_UNICODE = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_MULTI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_EXT_PROP_BINARY = common dso_local global i64 0, align 8
@USB_EXT_PROP_LE32 = common dso_local global i64 0, align 8
@USB_EXT_PROP_BE32 = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_ENV = common dso_local global i64 0, align 8
@USB_EXT_PROP_UNICODE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @ext_prop_type_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_prop_type_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_os_desc_ext_prop*, align 8
  %8 = alloca %struct.usb_os_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.config_item*, %struct.config_item** %4, align 8
  %12 = call %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item* %11)
  store %struct.usb_os_desc_ext_prop* %12, %struct.usb_os_desc_ext_prop** %7, align 8
  %13 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %14 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.usb_os_desc* @to_usb_os_desc(i32 %16)
  store %struct.usb_os_desc* %17, %struct.usb_os_desc** %8, align 8
  %18 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %19 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %24 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @mutex_lock(i64 %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @kstrtou8(i8* %28, i32 0, i64* %9)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %121

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @USB_EXT_PROP_UNICODE, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @USB_EXT_PROP_UNICODE_MULTI, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %121

44:                                               ; preds = %37
  %45 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %46 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @USB_EXT_PROP_BINARY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %52 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_EXT_PROP_LE32, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %58 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_EXT_PROP_BE32, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56, %50, %44
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @USB_EXT_PROP_UNICODE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @USB_EXT_PROP_UNICODE_ENV, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @USB_EXT_PROP_UNICODE_LINK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %66, %62
  %75 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %76 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %115

79:                                               ; preds = %70, %56
  %80 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %81 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @USB_EXT_PROP_UNICODE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %87 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @USB_EXT_PROP_UNICODE_ENV, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %93 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @USB_EXT_PROP_UNICODE_LINK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %91, %85, %79
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @USB_EXT_PROP_BINARY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @USB_EXT_PROP_LE32, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @USB_EXT_PROP_BE32, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105, %101, %97
  %110 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %111 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %109, %105, %91
  br label %115

115:                                              ; preds = %114, %74
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.usb_os_desc_ext_prop*, %struct.usb_os_desc_ext_prop** %7, align 8
  %118 = getelementptr inbounds %struct.usb_os_desc_ext_prop, %struct.usb_os_desc_ext_prop* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %6, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %115, %41, %32
  %122 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %123 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.usb_os_desc*, %struct.usb_os_desc** %8, align 8
  %128 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @mutex_unlock(i64 %129)
  br label %131

131:                                              ; preds = %126, %121
  %132 = load i32, i32* %10, align 4
  ret i32 %132
}

declare dso_local %struct.usb_os_desc_ext_prop* @to_usb_os_desc_ext_prop(%struct.config_item*) #1

declare dso_local %struct.usb_os_desc* @to_usb_os_desc(i32) #1

declare dso_local i32 @mutex_lock(i64) #1

declare dso_local i32 @kstrtou8(i8*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
