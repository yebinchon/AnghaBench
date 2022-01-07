; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.gb_hid* }
%struct.gb_hid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HID_MAX_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"weird size of report descriptor (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reading report descriptor failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"parsing report descriptor failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @gb_hid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_parse(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.gb_hid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load %struct.gb_hid*, %struct.gb_hid** %9, align 8
  store %struct.gb_hid* %10, %struct.gb_hid** %4, align 8
  %11 = load %struct.gb_hid*, %struct.gb_hid** %4, align 8
  %12 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @HID_MAX_DESCRIPTOR_SIZE, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %1
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %59

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %59

36:                                               ; preds = %27
  %37 = load %struct.gb_hid*, %struct.gb_hid** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @gb_hid_get_report_desc(%struct.gb_hid* %37, i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %44 = call i32 @hid_err(%struct.hid_device* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %55

45:                                               ; preds = %36
  %46 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @hid_parse_report(%struct.hid_device* %46, i8* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %33, %22
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dbg_hid(i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @gb_hid_get_report_desc(%struct.gb_hid*, i8*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_parse_report(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
