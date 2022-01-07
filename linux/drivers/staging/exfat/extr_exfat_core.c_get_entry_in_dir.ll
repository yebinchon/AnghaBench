; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_get_entry_in_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_get_entry_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry_t = type { i32 }
%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }

@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dentry_t*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.chain_t* %1, %struct.chain_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @find_location(%struct.super_block* %13, %struct.chain_t* %14, i32 %15, i32* %11, i32* %10)
  %17 = load i64, i64* @FFS_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.dentry_t* null, %struct.dentry_t** %5, align 8
  br label %39

20:                                               ; preds = %4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32* @buf_getblk(%struct.super_block* %21, i32 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store %struct.dentry_t* null, %struct.dentry_t** %5, align 8
  br label %39

27:                                               ; preds = %20
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = bitcast i32* %37 to %struct.dentry_t*
  store %struct.dentry_t* %38, %struct.dentry_t** %5, align 8
  br label %39

39:                                               ; preds = %33, %26, %19
  %40 = load %struct.dentry_t*, %struct.dentry_t** %5, align 8
  ret %struct.dentry_t* %40
}

declare dso_local i64 @find_location(%struct.super_block*, %struct.chain_t*, i32, i32*, i32*) #1

declare dso_local i32* @buf_getblk(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
