; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_file_strict_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_file_strict_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32* }
%struct.inode = type { i32 }

@cifs_file_vm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_file_strict_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.inode* @file_inode(%struct.file* %8)
  store %struct.inode* %9, %struct.inode** %7, align 8
  %10 = call i32 (...) @get_xid()
  store i32 %10, i32* %5, align 4
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = call i32 @CIFS_I(%struct.inode* %11)
  %13 = call i32 @CIFS_CACHE_READ(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @cifs_zap_mapping(%struct.inode* %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %24 = call i32 @generic_file_mmap(%struct.file* %22, %struct.vm_area_struct* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  store i32* @cifs_file_vm_ops, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @free_xid(i32 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @CIFS_CACHE_READ(i32) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cifs_zap_mapping(%struct.inode*) #1

declare dso_local i32 @generic_file_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
