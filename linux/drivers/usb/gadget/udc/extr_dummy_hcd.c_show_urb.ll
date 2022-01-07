; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_show_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_show_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"urb/%p %s ep%d%s%s len %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"-bulk\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"-int\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"-iso\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.urb*)* @show_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_urb(i8* %0, i64 %1, %struct.urb* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %12 = load %struct.urb*, %struct.urb** %6, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @usb_pipeendpoint(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %28 [
    i32 129, label %24
    i32 131, label %25
    i32 130, label %26
    i32 128, label %27
  ]

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %29

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %29

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %29

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %29

28:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.urb*, %struct.urb** %6, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @usb_pipein(i32 %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i8* [ %43, %36 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %44 ]
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @usb_pipetype(i32 %49)
  switch i32 %50, label %54 [
    i32 133, label %51
    i32 134, label %52
    i32 132, label %53
  ]

51:                                               ; preds = %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %55

52:                                               ; preds = %45
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %55

53:                                               ; preds = %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %55

54:                                               ; preds = %45
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %55

55:                                               ; preds = %54, %53, %52, %51
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.urb*, %struct.urb** %6, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.urb*, %struct.urb** %6, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @scnprintf(i8* %16, i64 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.urb* %18, i32 %32, i32 %33, i8* %46, i32 %58, i32 %61, i32 %64)
  ret i32 %65
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, %struct.urb*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_pipetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
