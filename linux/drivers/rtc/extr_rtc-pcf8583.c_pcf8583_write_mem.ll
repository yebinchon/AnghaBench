; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_write_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rtc_mem = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_mem*)* @pcf8583_write_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_write_mem(%struct.i2c_client* %0, %struct.rtc_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rtc_mem*, align 8
  %6 = alloca [9 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.rtc_mem* %1, %struct.rtc_mem** %5, align 8
  %8 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %12
  %21 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %37 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @i2c_master_send(%struct.i2c_client* %35, i8* %36, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.rtc_mem*, %struct.rtc_mem** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %20
  br label %52

49:                                               ; preds = %20
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
