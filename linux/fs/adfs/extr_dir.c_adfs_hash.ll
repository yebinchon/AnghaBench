; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i64, i8*, i32 }
%struct.TYPE_2__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @adfs_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_hash(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %9 = load %struct.qstr*, %struct.qstr** %5, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_2__* @ADFS_SB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %11, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENAMETOOLONG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.qstr*, %struct.qstr** %5, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.qstr*, %struct.qstr** %5, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call i64 @init_name_hash(%struct.dentry* %29)
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %35, %22
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %8, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 @adfs_tolower(i32 %39)
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @partial_name_hash(i32 %40, i64 %41)
  store i64 %42, i64* %7, align 8
  br label %31

43:                                               ; preds = %31
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @end_name_hash(i64 %44)
  %46 = load %struct.qstr*, %struct.qstr** %5, align 8
  %47 = getelementptr inbounds %struct.qstr, %struct.qstr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @ADFS_SB(i32) #1

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @adfs_tolower(i32) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
