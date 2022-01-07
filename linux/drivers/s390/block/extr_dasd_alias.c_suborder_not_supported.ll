; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_suborder_not_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_alias.c_suborder_not_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @suborder_not_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suborder_not_supported(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ENOLINK, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %67

23:                                               ; preds = %15
  %24 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %33 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %32, i32 0, i32 0
  %34 = call i8* @dasd_get_sense(i32* %33)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %67

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %5, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, 240
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %6, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = and i32 %51, 15
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %7, align 1
  %54 = load i8, i8* %5, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %66

57:                                               ; preds = %38
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %61, %57, %38
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %37, %30, %22, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @dasd_get_sense(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
