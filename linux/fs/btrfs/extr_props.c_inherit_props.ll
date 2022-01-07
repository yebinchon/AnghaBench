; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_inherit_props.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_props.c_inherit_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prop_handler = type { i8* (%struct.inode.0*)*, i32 (i8*, i32)*, i32 (%struct.inode.1*, i8*, i32)*, i32, i32 }
%struct.inode.0 = type opaque
%struct.inode.1 = type opaque
%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.btrfs_root* }

@BTRFS_INODE_HAS_PROPS = common dso_local global i32 0, align 4
@prop_handlers = common dso_local global %struct.prop_handler* null, align 8
@BTRFS_RESERVE_NO_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.inode*, %struct.inode*)* @inherit_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inherit_props(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.prop_handler*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %8, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %21, align 8
  store %struct.btrfs_fs_info* %22, %struct.btrfs_fs_info** %9, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @BTRFS_INODE_HAS_PROPS, align 4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %23, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

30:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %139, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.prop_handler*, %struct.prop_handler** @prop_handlers, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.prop_handler* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %142

36:                                               ; preds = %31
  %37 = load %struct.prop_handler*, %struct.prop_handler** @prop_handlers, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %37, i64 %39
  store %struct.prop_handler* %40, %struct.prop_handler** %13, align 8
  store i32 0, i32* %15, align 4
  %41 = load %struct.prop_handler*, %struct.prop_handler** %13, align 8
  %42 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %139

46:                                               ; preds = %36
  %47 = load %struct.prop_handler*, %struct.prop_handler** %13, align 8
  %48 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %47, i32 0, i32 0
  %49 = load i8* (%struct.inode.0*)*, i8* (%struct.inode.0*)** %48, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = bitcast %struct.inode* %50 to %struct.inode.0*
  %52 = call i8* %49(%struct.inode.0* %51)
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %139

56:                                               ; preds = %46
  %57 = load %struct.prop_handler*, %struct.prop_handler** %13, align 8
  %58 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %57, i32 0, i32 1
  %59 = load i32 (i8*, i32)*, i32 (i8*, i32)** %58, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i32 %59(i8* %60, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %139

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %72 = call i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info* %71, i32 1)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %75 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @BTRFS_RESERVE_NO_FLUSH, align 4
  %79 = call i32 @btrfs_block_rsv_add(%struct.btrfs_root* %73, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %143

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.prop_handler*, %struct.prop_handler** %13, align 8
  %89 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %86, %struct.inode* %87, i32 %90, i8* %91, i32 %93, i32 0)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %123, label %97

97:                                               ; preds = %85
  %98 = load %struct.prop_handler*, %struct.prop_handler** %13, align 8
  %99 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %98, i32 0, i32 2
  %100 = load i32 (%struct.inode.1*, i8*, i32)*, i32 (%struct.inode.1*, i8*, i32)** %99, align 8
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = bitcast %struct.inode* %101 to %struct.inode.1*
  %103 = load i8*, i8** %14, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = call i32 %100(%struct.inode.1* %102, i8* %103, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = load %struct.prop_handler*, %struct.prop_handler** %13, align 8
  %113 = getelementptr inbounds %struct.prop_handler, %struct.prop_handler* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @btrfs_setxattr(%struct.btrfs_trans_handle* %110, %struct.inode* %111, i32 %114, i8* null, i32 0, i32 0)
  br label %122

116:                                              ; preds = %97
  %117 = load i32, i32* @BTRFS_INODE_HAS_PROPS, align 4
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = call i32 @set_bit(i32 %117, i32* %120)
  br label %122

122:                                              ; preds = %116, %109
  br label %123

123:                                              ; preds = %122, %85
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %129 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info* %127, i32 %130, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %143

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %123
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %138, %66, %55, %45
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %31

142:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %135, %82, %29
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.prop_handler*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @btrfs_calc_insert_metadata_size(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_block_rsv_add(%struct.btrfs_root*, i32, i32, i32) #1

declare dso_local i32 @btrfs_setxattr(%struct.btrfs_trans_handle*, %struct.inode*, i32, i8*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_block_rsv_release(%struct.btrfs_fs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
