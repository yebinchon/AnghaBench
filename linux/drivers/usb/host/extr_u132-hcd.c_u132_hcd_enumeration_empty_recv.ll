; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_enumeration_empty_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_enumeration_empty_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.u132_endp = type { i64, i64, %struct.u132* }
%struct.u132 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.u132_udev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.u132_udev = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_enumeration_empty_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_enumeration_empty_recv(i8* %0, %struct.urb* %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.u132_endp*, align 8
  %26 = alloca %struct.u132*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.u132_udev*, align 8
  store i8* %0, i8** %13, align 8
  store %struct.urb* %1, %struct.urb** %14, align 8
  store i64* %2, i64** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = bitcast i8* %29 to %struct.u132_endp*
  store %struct.u132_endp* %30, %struct.u132_endp** %25, align 8
  %31 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %32 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %31, i32 0, i32 2
  %33 = load %struct.u132*, %struct.u132** %32, align 8
  store %struct.u132* %33, %struct.u132** %26, align 8
  %34 = load %struct.u132*, %struct.u132** %26, align 8
  %35 = getelementptr inbounds %struct.u132, %struct.u132* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %38 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %27, align 8
  %43 = load %struct.u132*, %struct.u132** %26, align 8
  %44 = getelementptr inbounds %struct.u132, %struct.u132* %43, i32 0, i32 4
  %45 = load %struct.u132_udev*, %struct.u132_udev** %44, align 8
  %46 = load i64, i64* %27, align 8
  %47 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %45, i64 %46
  store %struct.u132_udev* %47, %struct.u132_udev** %28, align 8
  %48 = load %struct.u132*, %struct.u132** %26, align 8
  %49 = getelementptr inbounds %struct.u132, %struct.u132* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.u132*, %struct.u132** %26, align 8
  %52 = getelementptr inbounds %struct.u132, %struct.u132* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %73

55:                                               ; preds = %12
  %56 = load %struct.u132*, %struct.u132** %26, align 8
  %57 = getelementptr inbounds %struct.u132, %struct.u132* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.u132*, %struct.u132** %26, align 8
  %61 = getelementptr inbounds %struct.u132, %struct.u132* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.u132*, %struct.u132** %26, align 8
  %65 = getelementptr inbounds %struct.u132, %struct.u132* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.u132*, %struct.u132** %26, align 8
  %68 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %69 = load %struct.urb*, %struct.urb** %14, align 8
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @u132_hcd_forget_urb(%struct.u132* %67, %struct.u132_endp* %68, %struct.urb* %69, i32 %71)
  br label %151

73:                                               ; preds = %12
  %74 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %75 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %80 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.u132*, %struct.u132** %26, align 8
  %82 = getelementptr inbounds %struct.u132, %struct.u132* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.u132*, %struct.u132** %26, align 8
  %85 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %86 = load %struct.urb*, %struct.urb** %14, align 8
  %87 = load i32, i32* @EINTR, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @u132_hcd_giveback_urb(%struct.u132* %84, %struct.u132_endp* %85, %struct.urb* %86, i32 %88)
  br label %151

90:                                               ; preds = %73
  %91 = load %struct.u132*, %struct.u132** %26, align 8
  %92 = getelementptr inbounds %struct.u132, %struct.u132* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.u132*, %struct.u132** %26, align 8
  %97 = getelementptr inbounds %struct.u132, %struct.u132* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.urb*, %struct.urb** %14, align 8
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %100)
  %102 = load %struct.u132*, %struct.u132** %26, align 8
  %103 = getelementptr inbounds %struct.u132, %struct.u132* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.u132*, %struct.u132** %26, align 8
  %106 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %107 = load %struct.urb*, %struct.urb** %14, align 8
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  %110 = call i32 @u132_hcd_giveback_urb(%struct.u132* %105, %struct.u132_endp* %106, %struct.urb* %107, i32 %109)
  br label %151

111:                                              ; preds = %90
  %112 = load %struct.urb*, %struct.urb** %14, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %134, label %116

116:                                              ; preds = %111
  %117 = load %struct.u132*, %struct.u132** %26, align 8
  %118 = getelementptr inbounds %struct.u132, %struct.u132* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  %122 = load %struct.u132_udev*, %struct.u132_udev** %28, align 8
  %123 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %126 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.u132*, %struct.u132** %26, align 8
  %128 = getelementptr inbounds %struct.u132, %struct.u132* %127, i32 0, i32 1
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.u132*, %struct.u132** %26, align 8
  %131 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %132 = load %struct.urb*, %struct.urb** %14, align 8
  %133 = call i32 @u132_hcd_giveback_urb(%struct.u132* %130, %struct.u132_endp* %131, %struct.urb* %132, i32 0)
  br label %151

134:                                              ; preds = %111
  %135 = load %struct.u132*, %struct.u132** %26, align 8
  %136 = getelementptr inbounds %struct.u132, %struct.u132* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.urb*, %struct.urb** %14, align 8
  %140 = load %struct.urb*, %struct.urb** %14, align 8
  %141 = getelementptr inbounds %struct.urb, %struct.urb* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %139, i32 %142)
  %144 = load %struct.u132*, %struct.u132** %26, align 8
  %145 = getelementptr inbounds %struct.u132, %struct.u132* %144, i32 0, i32 1
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load %struct.u132*, %struct.u132** %26, align 8
  %148 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %149 = load %struct.urb*, %struct.urb** %14, align 8
  %150 = call i32 @u132_hcd_giveback_urb(%struct.u132* %147, %struct.u132_endp* %148, %struct.urb* %149, i32 0)
  br label %151

151:                                              ; preds = %134, %116, %95, %78, %55
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
