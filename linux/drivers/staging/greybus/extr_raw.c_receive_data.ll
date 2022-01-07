; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_receive_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_raw.c_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_raw = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.raw_data = type { i32, i32*, i64 }

@MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Too big of a data packet, rejected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Too much data in receive buffer, now dropping packets\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_raw*, i64, i32*)* @receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_data(%struct.gb_raw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_raw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.raw_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_raw* %0, %struct.gb_raw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.gb_raw*, %struct.gb_raw** %5, align 8
  %12 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @MAX_PACKET_SIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %3
  %26 = load %struct.gb_raw*, %struct.gb_raw** %5, align 8
  %27 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.gb_raw*, %struct.gb_raw** %5, align 8
  %30 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @MAX_DATA_SIZE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.device*, %struct.device** %9, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %72

41:                                               ; preds = %25
  %42 = load i64, i64* %6, align 8
  %43 = add i64 24, %42
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.raw_data* @kmalloc(i64 %43, i32 %44)
  store %struct.raw_data* %45, %struct.raw_data** %8, align 8
  %46 = load %struct.raw_data*, %struct.raw_data** %8, align 8
  %47 = icmp ne %struct.raw_data* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %72

51:                                               ; preds = %41
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.gb_raw*, %struct.gb_raw** %5, align 8
  %54 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.raw_data*, %struct.raw_data** %8, align 8
  %59 = getelementptr inbounds %struct.raw_data, %struct.raw_data* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.raw_data*, %struct.raw_data** %8, align 8
  %61 = getelementptr inbounds %struct.raw_data, %struct.raw_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32*, i32** %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @memcpy(i32* %63, i32* %64, i64 %65)
  %67 = load %struct.raw_data*, %struct.raw_data** %8, align 8
  %68 = getelementptr inbounds %struct.raw_data, %struct.raw_data* %67, i32 0, i32 0
  %69 = load %struct.gb_raw*, %struct.gb_raw** %5, align 8
  %70 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %51, %48, %36
  %73 = load %struct.gb_raw*, %struct.gb_raw** %5, align 8
  %74 = getelementptr inbounds %struct.gb_raw, %struct.gb_raw* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.raw_data* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
