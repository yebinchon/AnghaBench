; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.writeback_control = type { i32 }
%struct.dir_entry_t = type { i32, i32, i32, i32, i32 }

@EXFAT_ROOT_INO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @exfat_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.dir_entry_t, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EXFAT_ROOT_INO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i32 @exfat_make_attr(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @i_size_read(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 2
  %23 = call i32 @exfat_time_unix2fat(i32* %21, i32* %22)
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 1
  %27 = call i32 @exfat_time_unix2fat(i32* %25, i32* %26)
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %6, i32 0, i32 0
  %31 = call i32 @exfat_time_unix2fat(i32* %29, i32* %30)
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @ffsWriteStat(%struct.inode* %32, %struct.dir_entry_t* %6)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %13, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @exfat_make_attr(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @exfat_time_unix2fat(i32*, i32*) #1

declare dso_local i32 @ffsWriteStat(%struct.inode*, %struct.dir_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
