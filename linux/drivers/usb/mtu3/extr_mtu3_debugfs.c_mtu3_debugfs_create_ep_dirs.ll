; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_create_ep_dirs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_create_ep_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i64, i64, %struct.ssusb_mtk* }
%struct.ssusb_mtk = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3*)* @mtu3_debugfs_create_ep_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtu3_debugfs_create_ep_dirs(%struct.mtu3* %0) #0 {
  %2 = alloca %struct.mtu3*, align 8
  %3 = alloca %struct.ssusb_mtk*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.mtu3* %0, %struct.mtu3** %2, align 8
  %6 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %7 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %6, i32 0, i32 3
  %8 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %7, align 8
  store %struct.ssusb_mtk* %8, %struct.ssusb_mtk** %3, align 8
  %9 = load %struct.ssusb_mtk*, %struct.ssusb_mtk** %3, align 8
  %10 = getelementptr inbounds %struct.ssusb_mtk, %struct.ssusb_mtk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.dentry* %12, %struct.dentry** %4, align 8
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %16 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %21 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = call i32 @mtu3_debugfs_create_ep_dir(i64 %25, %struct.dentry* %26)
  %28 = load %struct.mtu3*, %struct.mtu3** %2, align 8
  %29 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = call i32 @mtu3_debugfs_create_ep_dir(i64 %33, %struct.dentry* %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @mtu3_debugfs_create_ep_dir(i64, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
