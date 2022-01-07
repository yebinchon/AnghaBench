; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_u32_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_file.c_debugfs_create_u32_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.array_data = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@u32_array_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugfs_create_u32_array(i8* %0, i32 %1, %struct.dentry* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.array_data*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.array_data* @kmalloc(i32 16, i32 %12)
  store %struct.array_data* %13, %struct.array_data** %11, align 8
  %14 = load %struct.array_data*, %struct.array_data** %11, align 8
  %15 = icmp eq %struct.array_data* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %29

17:                                               ; preds = %5
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.array_data*, %struct.array_data** %11, align 8
  %20 = getelementptr inbounds %struct.array_data, %struct.array_data* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.array_data*, %struct.array_data** %11, align 8
  %23 = getelementptr inbounds %struct.array_data, %struct.array_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = load %struct.array_data*, %struct.array_data** %11, align 8
  %28 = call i32 @debugfs_create_file_unsafe(i8* %24, i32 %25, %struct.dentry* %26, %struct.array_data* %27, i32* @u32_array_fops)
  br label %29

29:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.array_data* @kmalloc(i32, i32) #1

declare dso_local i32 @debugfs_create_file_unsafe(i8*, i32, %struct.dentry*, %struct.array_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
