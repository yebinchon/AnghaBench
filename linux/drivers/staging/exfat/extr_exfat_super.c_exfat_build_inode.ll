; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_build_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_build_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.file_id_t = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EXFAT_ROOT_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.file_id_t*, i32)* @exfat_build_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @exfat_build_inode(%struct.super_block* %0, %struct.file_id_t* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.file_id_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.file_id_t* %1, %struct.file_id_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.inode* @exfat_iget(%struct.super_block* %9, i32 %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.inode* @new_inode(%struct.super_block* %16)
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.inode* @ERR_PTR(i32 %22)
  store %struct.inode* %23, %struct.inode** %7, align 8
  br label %48

24:                                               ; preds = %15
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* @EXFAT_ROOT_INO, align 4
  %27 = call i32 @iunique(%struct.super_block* %25, i32 %26)
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @SET_IVERSION(%struct.inode* %30, i32 1)
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load %struct.file_id_t*, %struct.file_id_t** %5, align 8
  %34 = call i32 @exfat_fill_inode(%struct.inode* %32, %struct.file_id_t* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call i32 @iput(%struct.inode* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.inode* @ERR_PTR(i32 %40)
  store %struct.inode* %41, %struct.inode** %7, align 8
  br label %48

42:                                               ; preds = %24
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @exfat_attach(%struct.inode* %43, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @insert_inode_hash(%struct.inode* %46)
  br label %48

48:                                               ; preds = %42, %37, %20, %14
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %49
}

declare dso_local %struct.inode* @exfat_iget(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @SET_IVERSION(%struct.inode*, i32) #1

declare dso_local i32 @exfat_fill_inode(%struct.inode*, %struct.file_id_t*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @exfat_attach(%struct.inode*, i32) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
