; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_mount_setup_tlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_mount_setup_tlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32, i32, i32, %struct.tcon_link* }
%struct.tcon_link = type { i32, i32, %struct.cifs_tcon*, i32 }
%struct.cifs_ses = type { i32 }
%struct.cifs_tcon = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TCON_LINK_MASTER = common dso_local global i32 0, align 4
@TCON_LINK_IN_TREE = common dso_local global i32 0, align 4
@cifsiod_wq = common dso_local global i32 0, align 4
@TLINK_IDLE_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_sb_info*, %struct.cifs_ses*, %struct.cifs_tcon*)* @mount_setup_tlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_setup_tlink(%struct.cifs_sb_info* %0, %struct.cifs_ses* %1, %struct.cifs_tcon* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_sb_info*, align 8
  %6 = alloca %struct.cifs_ses*, align 8
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.tcon_link*, align 8
  store %struct.cifs_sb_info* %0, %struct.cifs_sb_info** %5, align 8
  store %struct.cifs_ses* %1, %struct.cifs_ses** %6, align 8
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tcon_link* @kzalloc(i32 24, i32 %9)
  store %struct.tcon_link* %10, %struct.tcon_link** %8, align 8
  %11 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %12 = icmp eq %struct.tcon_link* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  %18 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %21 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %23 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %24 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %23, i32 0, i32 2
  store %struct.cifs_tcon* %22, %struct.cifs_tcon** %24, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %27 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @TCON_LINK_MASTER, align 4
  %29 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %30 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @TCON_LINK_IN_TREE, align 4
  %33 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %34 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %37 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %37, i32 0, i32 3
  store %struct.tcon_link* %36, %struct.tcon_link** %38, align 8
  %39 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %39, i32 0, i32 1
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %42, i32 0, i32 2
  %44 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %45 = call i32 @tlink_rb_insert(i32* %43, %struct.tcon_link* %44)
  %46 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* @cifsiod_wq, align 4
  %50 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %50, i32 0, i32 0
  %52 = load i32, i32* @TLINK_IDLE_EXPIRE, align 4
  %53 = call i32 @queue_delayed_work(i32 %49, i32* %51, i32 %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %16, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.tcon_link* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tlink_rb_insert(i32*, %struct.tcon_link*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
