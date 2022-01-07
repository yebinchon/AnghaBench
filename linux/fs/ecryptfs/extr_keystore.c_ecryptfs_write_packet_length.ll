; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_write_packet_length.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_write_packet_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported packet size: [%zd]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_write_packet_length(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %8, 192
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  %15 = load i64*, i64** %6, align 8
  store i64 1, i64* %15, align 8
  br label %41

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 65536
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %20, 192
  %22 = udiv i64 %21, 256
  %23 = add i64 %22, 192
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 192
  %29 = urem i64 %28, 256
  %30 = trunc i64 %29 to i8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %30, i8* %32, align 1
  %33 = load i64*, i64** %6, align 8
  store i64 2, i64* %33, align 8
  br label %40

34:                                               ; preds = %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @KERN_WARNING, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @ecryptfs_printk(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %34, %19
  br label %41

41:                                               ; preds = %40, %10
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @ecryptfs_printk(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
