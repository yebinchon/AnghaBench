; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_stretch_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_stretch_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w1_slave = type { %struct.w1_f19_data* }
%struct.w1_f19_data = type { i8 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stretch_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stretch_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w1_slave*, align 8
  %11 = alloca %struct.w1_f19_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.w1_slave* @dev_to_w1_slave(%struct.device* %12)
  store %struct.w1_slave* %13, %struct.w1_slave** %10, align 8
  %14 = load %struct.w1_slave*, %struct.w1_slave** %10, align 8
  %15 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %14, i32 0, i32 0
  %16 = load %struct.w1_f19_data*, %struct.w1_f19_data** %15, align 8
  store %struct.w1_f19_data* %16, %struct.w1_f19_data** %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %65

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 2
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %65

40:                                               ; preds = %31, %28
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp slt i32 %44, 49
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sgt i32 %50, 57
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %65

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = and i32 %59, 15
  %61 = trunc i32 %60 to i8
  %62 = load %struct.w1_f19_data*, %struct.w1_f19_data** %11, align 8
  %63 = getelementptr inbounds %struct.w1_f19_data, %struct.w1_f19_data* %62, i32 0, i32 0
  store i8 %61, i8* %63, align 1
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %55, %52, %37, %25
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
