; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_alloc_rdir_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_alloc_rdir_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_rdir = type { i32 }
%struct.file = type { %struct.p9_fid* }
%struct.p9_fid = type { %struct.p9_rdir* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_rdir* (%struct.file*, i32)* @v9fs_alloc_rdir_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_rdir* @v9fs_alloc_rdir_buf(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_fid*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  store %struct.p9_fid* %8, %struct.p9_fid** %5, align 8
  %9 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %10 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %9, i32 0, i32 0
  %11 = load %struct.p9_rdir*, %struct.p9_rdir** %10, align 8
  %12 = icmp ne %struct.p9_rdir* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.p9_rdir* @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %21 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %20, i32 0, i32 0
  store %struct.p9_rdir* %19, %struct.p9_rdir** %21, align 8
  br label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %24 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %23, i32 0, i32 0
  %25 = load %struct.p9_rdir*, %struct.p9_rdir** %24, align 8
  ret %struct.p9_rdir* %25
}

declare dso_local %struct.p9_rdir* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
