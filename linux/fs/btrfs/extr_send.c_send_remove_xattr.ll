; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_remove_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_remove_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.fs_path = type { i32 }

@BTRFS_SEND_C_REMOVE_XATTR = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_XATTR_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, %struct.fs_path*, i8*, i32)* @send_remove_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_remove_xattr(%struct.send_ctx* %0, %struct.fs_path* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.send_ctx*, align 8
  %6 = alloca %struct.fs_path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %5, align 8
  store %struct.fs_path* %1, %struct.fs_path** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %11 = load i32, i32* @BTRFS_SEND_C_REMOVE_XATTR, align 4
  %12 = call i32 @begin_cmd(%struct.send_ctx* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %29

16:                                               ; preds = %4
  %17 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %18 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %19 = load %struct.fs_path*, %struct.fs_path** %6, align 8
  %20 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %17, i32 %18, %struct.fs_path* %19)
  %21 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %22 = load i32, i32* @BTRFS_SEND_A_XATTR_NAME, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @TLV_PUT_STRING(%struct.send_ctx* %21, i32 %22, i8* %23, i32 %24)
  %26 = load %struct.send_ctx*, %struct.send_ctx** %5, align 8
  %27 = call i32 @send_cmd(%struct.send_ctx* %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_STRING(%struct.send_ctx*, i32, i8*, i32) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
