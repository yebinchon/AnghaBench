; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xo15-ebook.c_ebook_switch_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xo15-ebook.c_ebook_switch_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_8__, %struct.ebook_switch* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ebook_switch = type { i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i32, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XO15_EBOOK_HID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported hid [%s]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@XO15_EBOOK_DEVICE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@XO15_EBOOK_CLASS = common dso_local global i8* null, align 8
@XO15_EBOOK_SUBCLASS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%s/button/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @ebook_switch_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebook_switch_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.ebook_switch*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = call i8* @acpi_device_hid(%struct.acpi_device* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ebook_switch* @kzalloc(i32 16, i32 %12)
  store %struct.ebook_switch* %13, %struct.ebook_switch** %4, align 8
  %14 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %15 = icmp ne %struct.ebook_switch* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %121

19:                                               ; preds = %1
  %20 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 2
  store %struct.ebook_switch* %20, %struct.ebook_switch** %22, align 8
  %23 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %23, %struct.input_dev** %5, align 8
  %24 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %25 = getelementptr inbounds %struct.ebook_switch, %struct.ebook_switch* %24, i32 0, i32 1
  store %struct.input_dev* %23, %struct.input_dev** %25, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %117

31:                                               ; preds = %19
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = call i8* @acpi_device_name(%struct.acpi_device* %32)
  store i8* %33, i8** %7, align 8
  %34 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %35 = call i8* @acpi_device_class(%struct.acpi_device* %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @XO15_EBOOK_HID, align 4
  %38 = call i64 @strcmp(i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %114

45:                                               ; preds = %31
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @XO15_EBOOK_DEVICE_NAME, align 4
  %48 = call i32 @strcpy(i8* %46, i32 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** @XO15_EBOOK_CLASS, align 8
  %51 = load i8*, i8** @XO15_EBOOK_SUBCLASS, align 8
  %52 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %54 = getelementptr inbounds %struct.ebook_switch, %struct.ebook_switch* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @snprintf(i32 %55, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %62 = getelementptr inbounds %struct.ebook_switch, %struct.ebook_switch* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @BUS_HOST, align 4
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 0
  %72 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  %75 = load i32, i32* @EV_SW, align 4
  %76 = call i32 @BIT_MASK(i32 %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @SW_TABLET_MODE, align 4
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_bit(i32 %81, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %87 = call i32 @input_register_device(%struct.input_dev* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %45
  br label %114

91:                                               ; preds = %45
  %92 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %93 = call i32 @ebook_send_state(%struct.acpi_device* %92)
  %94 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %95 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %102 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %106 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @acpi_enable_gpe(i32 %104, i32 %108)
  %110 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %111 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %110, i32 0, i32 0
  %112 = call i32 @device_set_wakeup_enable(i32* %111, i32 1)
  br label %113

113:                                              ; preds = %100, %91
  store i32 0, i32* %2, align 4
  br label %121

114:                                              ; preds = %90, %40
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = call i32 @input_free_device(%struct.input_dev* %115)
  br label %117

117:                                              ; preds = %114, %28
  %118 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %119 = call i32 @kfree(%struct.ebook_switch* %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %113, %16
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local %struct.ebook_switch* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i8* @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i8* @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @ebook_send_state(%struct.acpi_device*) #1

declare dso_local i32 @acpi_enable_gpe(i32, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.ebook_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
