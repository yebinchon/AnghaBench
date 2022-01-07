; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_parse_packet_length.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_parse_packet_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Five-byte packet length not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error parsing packet length\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_parse_packet_length(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64*, i64** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64*, i64** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 192
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i64
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** %6, align 8
  store i64 1, i64* %21, align 8
  br label %64

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 224
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = sub nsw i32 %32, 192
  %34 = mul nsw i32 %33, 256
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, 192
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %5, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load i64*, i64** %6, align 8
  store i64 2, i64* %46, align 8
  br label %63

47:                                               ; preds = %22
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = call i32 @ecryptfs_printk(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %65

58:                                               ; preds = %47
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = call i32 @ecryptfs_printk(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %65

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63, %15
  br label %65

65:                                               ; preds = %64, %58, %53
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @ecryptfs_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
