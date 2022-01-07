; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_parse_mask_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_parse_mask_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_parse_mask_str(i8* %0, i64* %1, i32 %2, %struct.mutex* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mutex*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mutex* %3, %struct.mutex** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 7
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %82

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @BITS_TO_LONGS(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64* @kmalloc(i64 %24, i32 %25)
  store i64* %26, i64** %10, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %82

32:                                               ; preds = %19
  %33 = load %struct.mutex*, %struct.mutex** %9, align 8
  %34 = call i64 @mutex_lock_interruptible(%struct.mutex* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64*, i64** %10, align 8
  %38 = call i32 @kfree(i64* %37)
  %39 = load i32, i32* @ERESTARTSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %82

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %60

51:                                               ; preds = %46, %41
  %52 = load i64*, i64** %10, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcpy(i64* %52, i64* %53, i64 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @modify_bitmap(i8* %56, i64* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %68

60:                                               ; preds = %46
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @memset(i64* %61, i32 0, i64 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @hex2bitmap(i8* %64, i64* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %60, %51
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i64*, i64** %7, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @memcpy(i64* %72, i64* %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.mutex*, %struct.mutex** %9, align 8
  %78 = call i32 @mutex_unlock(%struct.mutex* %77)
  %79 = load i64*, i64** %10, align 8
  %80 = call i32 @kfree(i64* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %36, %29, %16
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i64 @mutex_lock_interruptible(%struct.mutex*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @modify_bitmap(i8*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @hex2bitmap(i8*, i64*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
