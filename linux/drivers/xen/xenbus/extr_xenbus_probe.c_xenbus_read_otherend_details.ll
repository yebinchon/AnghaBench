; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_read_otherend_details.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe.c_xenbus_read_otherend_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32, i32 }

@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"reading other end details from %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"unable to read other end from %s.  missing or inaccessible.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_read_otherend_details(%struct.xenbus_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @XBT_NIL, align 4
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %15 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 2
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %18 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 1
  %19 = call i32 @xenbus_gather(i32 %9, i32 %12, i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %15, i8* %16, i32* null, i32* %18, i32* null)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %26 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %23, i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %3
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %32 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strlen(i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @XBT_NIL, align 4
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xenbus_exists(i32 %37, i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %48 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %44, i32 %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %52 = call i32 @free_otherend_details(%struct.xenbus_device* %51)
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %43, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @xenbus_gather(i32, i32, i8*, i8*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @xenbus_exists(i32, i32, i8*) #1

declare dso_local i32 @free_otherend_details(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
