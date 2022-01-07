; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_purge_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_purge_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vmlogrdr_priv_t = type { i8* }

@EINVAL = common dso_local global i64 0, align 8
@recording_class_AB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"RECORDING %s PURGE QID * \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"RECORDING %s PURGE \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @vmlogrdr_purge_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmlogrdr_purge_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca [80 x i8], align 16
  %12 = alloca %struct.vmlogrdr_priv_t*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.vmlogrdr_priv_t* @dev_get_drvdata(%struct.device* %13)
  store %struct.vmlogrdr_priv_t* %14, %struct.vmlogrdr_priv_t** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 49
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %47

23:                                               ; preds = %4
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %25 = call i32 @memset(i8* %24, i32 0, i32 80)
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 80)
  %28 = load i64, i64* @recording_class_AB, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %32 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %12, align 8
  %33 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i8* %31, i32 80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %42

36:                                               ; preds = %23
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %38 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %12, align 8
  %39 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %37, i32 80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %45 = call i32 @cpcmd(i8* %43, i8* %44, i32 80, i32* null)
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %42, %20
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local %struct.vmlogrdr_priv_t* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @cpcmd(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
