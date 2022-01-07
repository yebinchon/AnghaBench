; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.page = type { i32 }
%struct.file_id_t = type { i32 }
%struct.TYPE_2__ = type { %struct.file_id_t }

@ATTR_ARCHIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* @exfat_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_write_end(%struct.file* %0, %struct.address_space* %1, i64 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.file_id_t*, align 8
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.address_space*, %struct.address_space** %9, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %15, align 8
  %22 = call %struct.TYPE_2__* @EXFAT_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.file_id_t* %23, %struct.file_id_t** %16, align 8
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = load %struct.address_space*, %struct.address_space** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.page*, %struct.page** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i32 @generic_write_end(%struct.file* %24, %struct.address_space* %25, i64 %26, i32 %27, i32 %28, %struct.page* %29, i8* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %7
  %36 = load %struct.address_space*, %struct.address_space** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @exfat_write_failed(%struct.address_space* %36, i64 %40)
  br label %42

42:                                               ; preds = %35, %7
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %42
  %46 = load %struct.file_id_t*, %struct.file_id_t** %16, align 8
  %47 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATTR_ARCHIVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %15, align 8
  %54 = call i32 @current_time(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %15, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %15, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @ATTR_ARCHIVE, align 4
  %60 = load %struct.file_id_t*, %struct.file_id_t** %16, align 8
  %61 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.inode*, %struct.inode** %15, align 8
  %65 = call i32 @mark_inode_dirty(%struct.inode* %64)
  br label %66

66:                                               ; preds = %52, %45, %42
  %67 = load i32, i32* %17, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_2__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @exfat_write_failed(%struct.address_space*, i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
