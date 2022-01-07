; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_fill_ext_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_fill_ext_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_configuration = type { i32, %struct.usb_function** }
%struct.usb_function = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.usb_os_desc* }
%struct.usb_os_desc = type { i64 }

@USB_COMP_EP0_OS_DESC_BUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_configuration*, i32*)* @fill_ext_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_ext_compat(%struct.usb_configuration* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_configuration*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_function*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_os_desc*, align 8
  store %struct.usb_configuration* %0, %struct.usb_configuration** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 16, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 16
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %94, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %16 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %13
  %20 = load %struct.usb_configuration*, %struct.usb_configuration** %4, align 8
  %21 = getelementptr inbounds %struct.usb_configuration, %struct.usb_configuration* %20, i32 0, i32 1
  %22 = load %struct.usb_function**, %struct.usb_function*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.usb_function*, %struct.usb_function** %22, i64 %24
  %26 = load %struct.usb_function*, %struct.usb_function** %25, align 8
  store %struct.usb_function* %26, %struct.usb_function** %8, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %90, %19
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %30 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %36 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %90

45:                                               ; preds = %33
  %46 = load %struct.usb_function*, %struct.usb_function** %8, align 8
  %47 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.usb_os_desc*, %struct.usb_os_desc** %52, align 8
  store %struct.usb_os_desc* %53, %struct.usb_os_desc** %10, align 8
  %54 = load %struct.usb_os_desc*, %struct.usb_os_desc** %10, align 8
  %55 = icmp ne %struct.usb_os_desc* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %45
  %57 = load %struct.usb_os_desc*, %struct.usb_os_desc** %10, align 8
  %58 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %5, align 8
  store i32 1, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.usb_os_desc*, %struct.usb_os_desc** %10, align 8
  %69 = getelementptr inbounds %struct.usb_os_desc, %struct.usb_os_desc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @memcpy(i32* %67, i64 %70, i32 16)
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 22
  store i32* %73, i32** %5, align 8
  br label %80

74:                                               ; preds = %56, %45
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %5, align 8
  store i32 1, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 23
  store i32* %79, i32** %5, align 8
  br label %80

80:                                               ; preds = %74, %61
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 24
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 24
  %85 = load i32, i32* @USB_COMP_EP0_OS_DESC_BUFSIZ, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %99

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %44
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %27

93:                                               ; preds = %27
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %13

97:                                               ; preds = %13
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %87
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
