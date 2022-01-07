; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_match_busid_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_match_busid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@BUSID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"add \00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"add busid %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"del \00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"del busid %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @match_busid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_busid_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @BUSID_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i32, i32* @BUSID_SIZE, align 4
  %25 = call i32 @strlcpy(i8* %15, i8* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ule i64 %13, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = call i64 @add_match_busid(i8* %15)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @ENOMEM, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

42:                                               ; preds = %36
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

45:                                               ; preds = %32
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = call i64 @del_match_busid(i8* %15)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @ENODEV, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

55:                                               ; preds = %49
  %56 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

58:                                               ; preds = %45
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %55, %52, %42, %39, %29, %18
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @add_match_busid(i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i64 @del_match_busid(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
