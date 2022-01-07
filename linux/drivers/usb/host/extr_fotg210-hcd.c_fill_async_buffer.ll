; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fill_async_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fill_async_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i8*, i32, i32 }
%struct.usb_hcd = type { i32 }
%struct.fotg210_hcd = type { i32, %struct.fotg210_qh*, %struct.TYPE_5__* }
%struct.fotg210_qh = type { %struct.fotg210_qh*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.fotg210_qh* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fotg210_qh* }

@.str = private unnamed_addr constant [11 x i8] c"\0Aunlink =\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_buffer*)* @fill_async_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_async_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fotg210_qh*, align 8
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  %10 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.usb_hcd* @bus_to_hcd(i32 %12)
  store %struct.usb_hcd* %13, %struct.usb_hcd** %3, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %14)
  store %struct.fotg210_hcd* %15, %struct.fotg210_hcd** %4, align 8
  %16 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  store i8 0, i8* %22, align 1
  %23 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %28 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.fotg210_qh*, %struct.fotg210_qh** %31, align 8
  store %struct.fotg210_qh* %32, %struct.fotg210_qh** %9, align 8
  br label %33

33:                                               ; preds = %45, %1
  %34 = load i32, i32* %7, align 4
  %35 = icmp ugt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %38 = icmp ne %struct.fotg210_qh* %37, null
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %43 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %44 = call i32 @qh_lines(%struct.fotg210_hcd* %42, %struct.fotg210_qh* %43, i8** %8, i32* %7)
  br label %45

45:                                               ; preds = %41
  %46 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %47 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.fotg210_qh*, %struct.fotg210_qh** %48, align 8
  store %struct.fotg210_qh* %49, %struct.fotg210_qh** %9, align 8
  br label %33

50:                                               ; preds = %39
  %51 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %52 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %51, i32 0, i32 1
  %53 = load %struct.fotg210_qh*, %struct.fotg210_qh** %52, align 8
  %54 = icmp ne %struct.fotg210_qh* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @scnprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %70 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %69, i32 0, i32 1
  %71 = load %struct.fotg210_qh*, %struct.fotg210_qh** %70, align 8
  store %struct.fotg210_qh* %71, %struct.fotg210_qh** %9, align 8
  br label %72

72:                                               ; preds = %84, %58
  %73 = load i32, i32* %7, align 4
  %74 = icmp ugt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %77 = icmp ne %struct.fotg210_qh* %76, null
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %80, label %88

80:                                               ; preds = %78
  %81 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %82 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %83 = call i32 @qh_lines(%struct.fotg210_hcd* %81, %struct.fotg210_qh* %82, i8** %8, i32* %7)
  br label %84

84:                                               ; preds = %80
  %85 = load %struct.fotg210_qh*, %struct.fotg210_qh** %9, align 8
  %86 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %85, i32 0, i32 0
  %87 = load %struct.fotg210_qh*, %struct.fotg210_qh** %86, align 8
  store %struct.fotg210_qh* %87, %struct.fotg210_qh** %9, align 8
  br label %72

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %55, %50
  %90 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %91 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %90, i32 0, i32 0
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %95 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strlen(i8* %96)
  ret i32 %97
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qh_lines(%struct.fotg210_hcd*, %struct.fotg210_qh*, i8**, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
