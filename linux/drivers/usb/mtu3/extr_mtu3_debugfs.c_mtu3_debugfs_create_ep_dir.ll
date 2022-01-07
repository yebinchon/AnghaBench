; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_create_ep_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_debugfs_create_ep_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3_file_map = type { i32 }
%struct.mtu3_ep = type { i32, i32 }
%struct.dentry = type { i32 }

@mtu3_ep_files = common dso_local global %struct.mtu3_file_map* null, align 8
@mtu3_ep_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3_ep*, %struct.dentry*)* @mtu3_debugfs_create_ep_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtu3_debugfs_create_ep_dir(%struct.mtu3_ep* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.mtu3_ep*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.mtu3_file_map*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.mtu3_ep* %0, %struct.mtu3_ep** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.mtu3_ep*, %struct.mtu3_ep** %3, align 8
  %9 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.dentry* @debugfs_create_dir(i32 %10, %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.mtu3_ep*, %struct.mtu3_ep** %3, align 8
  %14 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mtu3_ep*, %struct.mtu3_ep** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call i32 @mtu3_debugfs_ep_regset(i32 %15, %struct.mtu3_ep* %16, %struct.dentry* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %35, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.mtu3_file_map*, %struct.mtu3_file_map** @mtu3_ep_files, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.mtu3_file_map* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.mtu3_file_map*, %struct.mtu3_file_map** @mtu3_ep_files, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mtu3_file_map, %struct.mtu3_file_map* %25, i64 %27
  store %struct.mtu3_file_map* %28, %struct.mtu3_file_map** %5, align 8
  %29 = load %struct.mtu3_file_map*, %struct.mtu3_file_map** %5, align 8
  %30 = getelementptr inbounds %struct.mtu3_file_map, %struct.mtu3_file_map* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load %struct.mtu3_ep*, %struct.mtu3_ep** %3, align 8
  %34 = call i32 @debugfs_create_file(i32 %31, i32 292, %struct.dentry* %32, %struct.mtu3_ep* %33, i32* @mtu3_ep_fops)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %19

38:                                               ; preds = %19
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @mtu3_debugfs_ep_regset(i32, %struct.mtu3_ep*, %struct.dentry*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mtu3_file_map*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, %struct.dentry*, %struct.mtu3_ep*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
