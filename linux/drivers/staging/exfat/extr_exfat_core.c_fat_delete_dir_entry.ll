; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_delete_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_delete_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dentry_t*, i32)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@TYPE_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_delete_dir_entry(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dentry_t*, align 8
  %14 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.chain_t* %1, %struct.chain_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.fs_info_t* %17, %struct.fs_info_t** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %46, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %25, %struct.chain_t* %26, i32 %29, i32* %12)
  store %struct.dentry_t* %30, %struct.dentry_t** %13, align 8
  %31 = load %struct.dentry_t*, %struct.dentry_t** %13, align 8
  %32 = icmp ne %struct.dentry_t* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.fs_info_t*, %struct.fs_info_t** %14, align 8
  %36 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dentry_t*, i32)*, i32 (%struct.dentry_t*, i32)** %38, align 8
  %40 = load %struct.dentry_t*, %struct.dentry_t** %13, align 8
  %41 = load i32, i32* @TYPE_DELETED, align 4
  %42 = call i32 %39(%struct.dentry_t* %40, i32 %41)
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @buf_modify(%struct.super_block* %43, i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  br label %20

49:                                               ; preds = %33, %20
  ret void
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
