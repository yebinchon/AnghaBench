; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_cont_expand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_cont_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.address_space* }
%struct.address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64)* @exfat_cont_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_cont_expand(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call i64 @i_size_read(%struct.inode* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i64 @i_size_read(%struct.inode* %17)
  %19 = sub nsw i64 %16, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @generic_cont_expand_simple(%struct.inode* %20, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %80

27:                                               ; preds = %2
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @current_time(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @mark_inode_dirty(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i64 @IS_SYNC(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %27
  %40 = load %struct.address_space*, %struct.address_space** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %42, %43
  %45 = sub nsw i64 %44, 1
  %46 = call i32 @filemap_fdatawrite_range(%struct.address_space* %40, i64 %41, i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.address_space*, %struct.address_space** %6, align 8
  %48 = call i32 @sync_mapping_buffers(%struct.address_space* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  br label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %9, align 4
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @write_inode_now(%struct.inode* %57, i32 1)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load %struct.address_space*, %struct.address_space** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %72, %73
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @filemap_fdatawait_range(%struct.address_space* %70, i64 %71, i64 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %65
  br label %78

78:                                               ; preds = %77, %27
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %25
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @generic_cont_expand_simple(%struct.inode*, i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @sync_mapping_buffers(%struct.address_space*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @filemap_fdatawait_range(%struct.address_space*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
