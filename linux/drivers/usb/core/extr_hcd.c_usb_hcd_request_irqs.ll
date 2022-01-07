; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s:usb%d\00", align 1
@usb_hcd_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"request interrupt %d failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"irq %d, %s 0x%08llx\0A\00", align 1
@HCD_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"io mem\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"io base\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s 0x%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i64)* @usb_hcd_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hcd_request_irqs(%struct.usb_hcd* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %3
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %17 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %20 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %35 = call i32 @request_irq(i32 %29, i32* @usb_hcd_irq, i64 %30, i32 %33, %struct.usb_hcd* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %15
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %40 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %97

46:                                               ; preds = %15
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HCD_MEMORY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i8*, ...) @dev_info(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %64, i64 %67)
  br label %96

69:                                               ; preds = %3
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %73 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %82 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @HCD_MEMORY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %91 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %92 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i32, i8*, ...) @dev_info(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %90, i64 %93)
  br label %95

95:                                               ; preds = %76, %69
  br label %96

96:                                               ; preds = %95, %46
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %38
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i64, i32, %struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
