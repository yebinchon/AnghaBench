; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_btrfs_validate_prop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_btrfs_validate_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_handler = type { i32 (i8*, i64)* }

@XATTR_BTRFS_PREFIX_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_validate_prop(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.prop_handler*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = load i64, i64* @XATTR_BTRFS_PREFIX_LEN, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.prop_handler* @find_prop_handler(i8* %17, i32* null)
  store %struct.prop_handler* %18, %struct.prop_handler** %8, align 8
  %19 = load %struct.prop_handler*, %struct.prop_handler** %8, align 8
  %20 = icmp ne %struct.prop_handler* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %35

28:                                               ; preds = %24
  %29 = load %struct.prop_handler*, %struct.prop_handler** %8, align 8
  %30 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %29, i32 0, i32 0
  %31 = load i32 (i8*, i64)*, i32 (i8*, i64)** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 %31(i8* %32, i64 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %27, %21, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.prop_handler* @find_prop_handler(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
