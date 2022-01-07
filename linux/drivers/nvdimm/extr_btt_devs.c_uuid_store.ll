; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_uuid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_uuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nd_btt = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"result: %zd wrote: %s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uuid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uuid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nd_btt*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.nd_btt* @to_nd_btt(%struct.device* %11)
  store %struct.nd_btt* %12, %struct.nd_btt** %9, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @nd_device_lock(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.nd_btt*, %struct.nd_btt** %9, align 8
  %17 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %16, i32 0, i32 0
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @nd_uuid_store(%struct.device* %15, i32* %17, i8* %18, i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22, i8* %23, i8* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @nd_device_unlock(%struct.device* %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i64, i64* %10, align 8
  br label %42

40:                                               ; preds = %4
  %41 = load i64, i64* %8, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  ret i64 %43
}

declare dso_local %struct.nd_btt* @to_nd_btt(%struct.device*) #1

declare dso_local i32 @nd_device_lock(%struct.device*) #1

declare dso_local i64 @nd_uuid_store(%struct.device*, i32*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @nd_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
