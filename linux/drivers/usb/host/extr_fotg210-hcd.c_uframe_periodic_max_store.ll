; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_uframe_periodic_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_uframe_periodic_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fotg210_hcd = type { i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"rejecting invalid request for uframe_periodic_max=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"cannot decrease uframe_periodic_max because periodic bandwidth is already allocated (%u > %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"setting max periodic bandwidth to %u%% (== %u usec/uframe)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"max periodic bandwidth set is non-standard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uframe_periodic_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uframe_periodic_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fotg210_hcd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @dev_get_drvdata(%struct.device* %17)
  %19 = call i32 @bus_to_hcd(i32 %18)
  %20 = call %struct.fotg210_hcd* @hcd_to_fotg210(i32 %19)
  store %struct.fotg210_hcd* %20, %struct.fotg210_hcd** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtouint(i8* %21, i32 0, i32* %11)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %111

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ult i32 %28, 100
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp uge i32 %31, 125
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %27
  %34 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (%struct.fotg210_hcd*, i8*, i32, ...) @fotg210_info(%struct.fotg210_hcd* %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %111

39:                                               ; preds = %30
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %16, align 8
  %42 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %43 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %42, i32 0, i32 2
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %48 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %39
  store i16 0, i16* %14, align 2
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %55 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %69, %58
  %60 = load i32, i32* %13, align 4
  %61 = icmp ult i32 %60, 7
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i16, i16* %14, align 2
  %64 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @periodic_usecs(%struct.fotg210_hcd* %64, i32 %65, i32 %66)
  %68 = call zeroext i16 @max(i16 zeroext %63, i32 %67)
  store i16 %68, i16* %14, align 2
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %59

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load i16, i16* %14, align 2
  %78 = zext i16 %77 to i32
  %79 = load i32, i32* %11, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %83 = load i16, i16* %14, align 2
  %84 = zext i16 %83 to i32
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (%struct.fotg210_hcd*, i8*, i32, ...) @fotg210_info(%struct.fotg210_hcd* %82, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  br label %105

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %39
  %89 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = mul i32 100, %90
  %92 = udiv i32 %91, 125
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (%struct.fotg210_hcd*, i8*, i32, ...) @fotg210_info(%struct.fotg210_hcd* %89, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 100
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %99 = call i32 @fotg210_warn(%struct.fotg210_hcd* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %103 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %16, align 8
  br label %105

105:                                              ; preds = %100, %81
  %106 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %10, align 8
  %107 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %106, i32 0, i32 2
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i64, i64* %16, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %105, %33, %24
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(i32) #1

declare dso_local i32 @bus_to_hcd(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @fotg210_info(%struct.fotg210_hcd*, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @max(i16 zeroext, i32) #1

declare dso_local i32 @periodic_usecs(%struct.fotg210_hcd*, i32, i32) #1

declare dso_local i32 @fotg210_warn(%struct.fotg210_hcd*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
