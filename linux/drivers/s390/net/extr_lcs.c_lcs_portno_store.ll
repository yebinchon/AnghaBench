; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_portno_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_portno_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lcs_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lcs_portno_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lcs_portno_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lcs_card*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.lcs_card* @dev_get_drvdata(%struct.device* %13)
  store %struct.lcs_card* %14, %struct.lcs_card** %10, align 8
  %15 = load %struct.lcs_card*, %struct.lcs_card** %10, align 8
  %16 = icmp ne %struct.lcs_card* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %44

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtos16(i8* %19, i32 0, i32* %12)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %44

26:                                               ; preds = %18
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.lcs_card*, %struct.lcs_card** %10, align 8
  %29 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.lcs_card*, %struct.lcs_card** %10, align 8
  %31 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.lcs_card*, %struct.lcs_card** %10, align 8
  %36 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.lcs_card*, %struct.lcs_card** %10, align 8
  %39 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %23, %17
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local %struct.lcs_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtos16(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
