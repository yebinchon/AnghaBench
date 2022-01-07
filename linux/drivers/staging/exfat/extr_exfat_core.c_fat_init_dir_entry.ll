; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_init_dir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_init_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.dos_dentry_t = type { i32 }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_init_dir_entry(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.chain_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dos_dentry_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.chain_t* %1, %struct.chain_t** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.super_block*, %struct.super_block** %8, align 8
  %17 = load %struct.chain_t*, %struct.chain_t** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @get_entry_in_dir(%struct.super_block* %16, %struct.chain_t* %17, i32 %18, i32* %14)
  %20 = inttoptr i64 %19 to %struct.dos_dentry_t*
  store %struct.dos_dentry_t* %20, %struct.dos_dentry_t** %15, align 8
  %21 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %15, align 8
  %22 = icmp ne %struct.dos_dentry_t* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %6
  %26 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %15, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @init_dos_entry(%struct.dos_dentry_t* %26, i32 %27, i32 %28)
  %30 = load %struct.super_block*, %struct.super_block** %8, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @buf_modify(%struct.super_block* %30, i32 %31)
  %33 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i64 @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @init_dos_entry(%struct.dos_dentry_t*, i32, i32) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
