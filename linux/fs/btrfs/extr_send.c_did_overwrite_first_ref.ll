; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_did_overwrite_first_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_did_overwrite_first_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.fs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32, i32)* @did_overwrite_first_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @did_overwrite_first_ref(%struct.send_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.fs_path* null, %struct.fs_path** %9, align 8
  %12 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %46

17:                                               ; preds = %3
  %18 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %18, %struct.fs_path** %9, align 8
  %19 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %20 = icmp ne %struct.fs_path* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %30 = call i32 @get_first_ref(i32 %27, i32 %28, i32* %10, i32* %11, %struct.fs_path* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %46

34:                                               ; preds = %24
  %35 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %41 = getelementptr inbounds %struct.fs_path, %struct.fs_path* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %44 = call i32 @fs_path_len(%struct.fs_path* %43)
  %45 = call i32 @did_overwrite_ref(%struct.send_ctx* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %42, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %34, %33, %16
  %47 = load %struct.fs_path*, %struct.fs_path** %9, align 8
  %48 = call i32 @fs_path_free(%struct.fs_path* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @get_first_ref(i32, i32, i32*, i32*, %struct.fs_path*) #1

declare dso_local i32 @did_overwrite_ref(%struct.send_ctx*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fs_path_len(%struct.fs_path*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
