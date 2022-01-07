; ModuleID = '/home/carl/AnghaBench/linux/fs/efivarfs/extr_super.c_efivarfs_d_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efivarfs/extr_super.c_efivarfs_d_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFI_VARIABLE_GUID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @efivarfs_d_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivarfs_d_hash(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call i64 @init_name_hash(%struct.dentry* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.qstr*, %struct.qstr** %5, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.qstr*, %struct.qstr** %5, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @efivarfs_valid_name(i8* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %30, %24
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @EFI_VARIABLE_GUID_LEN, align 4
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @partial_name_hash(i32 %34, i64 %35)
  store i64 %36, i64* %6, align 8
  br label %25

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 @tolower(i32 %46) #3
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @partial_name_hash(i32 %47, i64 %48)
  store i64 %49, i64* %6, align 8
  br label %38

50:                                               ; preds = %38
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @end_name_hash(i64 %51)
  %53 = load %struct.qstr*, %struct.qstr** %5, align 8
  %54 = getelementptr inbounds %struct.qstr, %struct.qstr* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i32 @efivarfs_valid_name(i8*, i32) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #2

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
