; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_dir.c_ext2_dotdot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_dir.c_ext2_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_dir_entry_2 = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ext2_dir_entry_2* @ext2_dotdot(%struct.inode* %0, %struct.page** %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.ext2_dir_entry_2*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page** %1, %struct.page*** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.page* @ext2_get_page(%struct.inode* %7, i32 0, i32 0)
  store %struct.page* %8, %struct.page** %5, align 8
  store %struct.ext2_dir_entry_2* null, %struct.ext2_dir_entry_2** %6, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = call i32 @IS_ERR(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i64 @page_address(%struct.page* %13)
  %15 = inttoptr i64 %14 to %struct.ext2_dir_entry_2*
  %16 = call %struct.ext2_dir_entry_2* @ext2_next_entry(%struct.ext2_dir_entry_2* %15)
  store %struct.ext2_dir_entry_2* %16, %struct.ext2_dir_entry_2** %6, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = load %struct.page**, %struct.page*** %4, align 8
  store %struct.page* %17, %struct.page** %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %6, align 8
  ret %struct.ext2_dir_entry_2* %20
}

declare dso_local %struct.page* @ext2_get_page(%struct.inode*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local %struct.ext2_dir_entry_2* @ext2_next_entry(%struct.ext2_dir_entry_2*) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
