; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_usb3_lpm_permit_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_usb3_lpm_permit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_port = type { i32, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"u1_u2\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"u1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"u2\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @usb3_lpm_permit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usb3_lpm_permit_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_port*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.usb_hcd*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.usb_port* @to_usb_port(%struct.device* %13)
  store %struct.usb_port* %14, %struct.usb_port** %10, align 8
  %15 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %16 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %15, i32 0, i32 2
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %23 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %25 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %59

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %32 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %34 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %58

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %41 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %43 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %57

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strncmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %50 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.usb_port*, %struct.usb_port** %10, align 8
  %52 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %5, align 8
  br label %94

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %21
  %60 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %61 = icmp ne %struct.usb_device* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %64 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.usb_hcd* @bus_to_hcd(i32 %65)
  store %struct.usb_hcd* %66, %struct.usb_hcd** %12, align 8
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %68 = icmp ne %struct.usb_hcd* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* @EINVAL, align 8
  %71 = sub i64 0, %70
  store i64 %71, i64* %5, align 8
  br label %94

72:                                               ; preds = %62
  %73 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %74 = call i32 @usb_lock_device(%struct.usb_device* %73)
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %76 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mutex_lock(i32 %77)
  %79 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %80 = call i32 @usb_disable_lpm(%struct.usb_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %72
  %83 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %84 = call i32 @usb_enable_lpm(%struct.usb_device* %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %87 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mutex_unlock(i32 %88)
  %90 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %91 = call i32 @usb_unlock_device(%struct.usb_device* %90)
  br label %92

92:                                               ; preds = %85, %59
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %92, %69, %53
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local %struct.usb_port* @to_usb_port(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @usb_disable_lpm(%struct.usb_device*) #1

declare dso_local i32 @usb_enable_lpm(%struct.usb_device*) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
