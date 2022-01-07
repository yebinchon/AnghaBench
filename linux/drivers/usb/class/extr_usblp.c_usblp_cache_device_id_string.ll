; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_cache_device_id_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_cache_device_id_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USBLP_DEVICE_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"usblp%d: error = %d reading IEEE-1284 Device ID string\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"usblp%d Device ID string [len=%d]=\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*)* @usblp_cache_device_id_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_cache_device_id_string(%struct.usblp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usblp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %3, align 8
  %6 = load %struct.usblp*, %struct.usblp** %3, align 8
  %7 = load %struct.usblp*, %struct.usblp** %3, align 8
  %8 = getelementptr inbounds %struct.usblp, %struct.usblp* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i32 @usblp_get_id(%struct.usblp* %6, i32 0, i8* %9, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.usblp*, %struct.usblp** %3, align 8
  %17 = getelementptr inbounds %struct.usblp, %struct.usblp* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.usblp*, %struct.usblp** %3, align 8
  %21 = getelementptr inbounds %struct.usblp, %struct.usblp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load %struct.usblp*, %struct.usblp** %3, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %28, align 1
  %29 = load %struct.usblp*, %struct.usblp** %3, align 8
  %30 = getelementptr inbounds %struct.usblp, %struct.usblp* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %74

35:                                               ; preds = %1
  %36 = load %struct.usblp*, %struct.usblp** %3, align 8
  %37 = getelementptr inbounds %struct.usblp, %struct.usblp* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be16_to_cpu(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 2, i32* %5, align 4
  br label %53

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @USBLP_DEVICE_ID_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %44
  %54 = load %struct.usblp*, %struct.usblp** %3, align 8
  %55 = getelementptr inbounds %struct.usblp, %struct.usblp* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load %struct.usblp*, %struct.usblp** %3, align 8
  %61 = getelementptr inbounds %struct.usblp, %struct.usblp* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.usblp*, %struct.usblp** %3, align 8
  %65 = getelementptr inbounds %struct.usblp, %struct.usblp* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.usblp*, %struct.usblp** %3, align 8
  %69 = getelementptr inbounds %struct.usblp, %struct.usblp* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i8* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %53, %15
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @usblp_get_id(%struct.usblp*, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
