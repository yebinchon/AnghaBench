; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_device_add_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_device_add_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.siox_master = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%19s %zu %zu %hhu\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"siox-12x8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @device_add_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @device_add_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.siox_master*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.siox_master* @to_siox_master(%struct.device* %16)
  store %struct.siox_master* %17, %struct.siox_master** %10, align 8
  %18 = bitcast [20 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 20, i1 false)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %21 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %20, i64* %13, i64* %14, i32* %15)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %50

30:                                               ; preds = %24, %4
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34, %30
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.siox_master*, %struct.siox_master** %10, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @siox_device_add(%struct.siox_master* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %46, i32 %47)
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %43, %40, %27
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local %struct.siox_master* @to_siox_master(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i64*, i64*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @siox_device_add(%struct.siox_master*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
