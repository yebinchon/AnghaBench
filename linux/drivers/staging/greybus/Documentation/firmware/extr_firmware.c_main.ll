; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/Documentation/firmware/extr_firmware.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/Documentation/firmware/extr_firmware.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@fwdev = common dso_local global i8* null, align 8
@fw_update_type = common dso_local global i64 0, align 8
@firmware_tag = common dso_local global i8* null, align 8
@FW_TAG_INT_DEFAULT = common dso_local global i8* null, align 8
@FW_TAG_BCND_DEFAULT = common dso_local global i8* null, align 8
@fw_timeout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Trying Firmware update: fwdev: %s, type: %s, tag: %s, timeout: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Opening %s firmware management device\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Failed to open: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Setting timeout to %u ms\0A\00", align 1
@FW_MGMT_IOC_SET_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to set timeout: %s (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17, %11
  %24 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %110

25:                                               ; preds = %17, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** @fwdev, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @strtoul(i8* %38, i8** %8, i32 10)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* @fw_update_type, align 8
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %4, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 3
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** @firmware_tag, align 8
  br label %56

48:                                               ; preds = %41
  %49 = load i64, i64* @fw_update_type, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** @FW_TAG_INT_DEFAULT, align 8
  store i8* %52, i8** @firmware_tag, align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** @FW_TAG_BCND_DEFAULT, align 8
  store i8* %54, i8** @firmware_tag, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %4, align 4
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strtoul(i8* %62, i8** %8, i32 10)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* @fw_timeout, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i8*, i8** @fwdev, align 8
  %67 = load i64, i64* @fw_update_type, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %71 = load i8*, i8** @firmware_tag, align 8
  %72 = load i32, i32* @fw_timeout, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %70, i8* %71, i32 %72)
  %74 = load i8*, i8** @fwdev, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** @fwdev, align 8
  %77 = load i32, i32* @O_RDWR, align 4
  %78 = call i32 @open(i8* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load i8*, i8** @fwdev, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %3, align 4
  br label %110

84:                                               ; preds = %65
  %85 = load i32, i32* @fw_timeout, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @FW_MGMT_IOC_SET_TIMEOUT_MS, align 4
  %89 = call i32 @ioctl(i32 %87, i32 %88, i32* @fw_timeout)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i8*, i8** @fwdev, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %93, i32 %94)
  store i32 -1, i32* %7, align 4
  br label %106

96:                                               ; preds = %84
  %97 = load i64, i64* @fw_update_type, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @update_intf_firmware(i32 %100)
  store i32 %101, i32* %7, align 4
  br label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @update_backend_firmware(i32 %103)
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %92
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @close(i32 %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %81, %23
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @update_intf_firmware(i32) #1

declare dso_local i32 @update_backend_firmware(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
