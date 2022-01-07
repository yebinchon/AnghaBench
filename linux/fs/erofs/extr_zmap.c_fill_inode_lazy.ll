; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_fill_inode_lazy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_fill_inode_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.erofs_inode = type { i64, i32*, i32, i32*, i32, i32, i32, i64, i64 }
%struct.page = type { i32 }
%struct.z_erofs_map_header = type { i32, i32, i32 }

@EROFS_I_Z_INITED_BIT = common dso_local global i32 0, align 4
@EROFS_I_BL_Z_BIT = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EROFS_INODE_FLAT_COMPRESSION_LEGACY = common dso_local global i64 0, align 8
@Z_EROFS_COMPRESSION_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"unknown compression format %u for nid %llu, please upgrade kernel\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LOG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"unsupported physical clusterbits %u for nid %llu, please upgrade kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @fill_inode_lazy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_inode_lazy(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.erofs_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.z_erofs_map_header*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %11)
  store %struct.erofs_inode* %12, %struct.erofs_inode** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %5, align 8
  %16 = load i32, i32* @EROFS_I_Z_INITED_BIT, align 4
  %17 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %17, i32 0, i32 4
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %196

22:                                               ; preds = %1
  %23 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %24 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %23, i32 0, i32 4
  %25 = load i32, i32* @EROFS_I_BL_Z_BIT, align 4
  %26 = load i32, i32* @TASK_KILLABLE, align 4
  %27 = call i64 @wait_on_bit_lock(i32* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %196

32:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  %33 = load i32, i32* @EROFS_I_Z_INITED_BIT, align 4
  %34 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %35 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %34, i32 0, i32 4
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %190

39:                                               ; preds = %32
  %40 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %41 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EROFS_INODE_FLAT_COMPRESSION_LEGACY, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @DBG_BUGON(i32 %45)
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = call i32 @EROFS_SB(%struct.super_block* %47)
  %49 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %50 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @iloc(i32 %48, i32 %51)
  %53 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %54 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %58 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @ALIGN(i64 %60, i32 8)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @erofs_blknr(i32 %63)
  %65 = call %struct.page* @erofs_get_meta_page(%struct.super_block* %62, i32 %64)
  store %struct.page* %65, %struct.page** %8, align 8
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = call i64 @IS_ERR(%struct.page* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @PTR_ERR(%struct.page* %70)
  store i32 %71, i32* %6, align 4
  br label %190

72:                                               ; preds = %39
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = call i8* @kmap_atomic(%struct.page* %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @erofs_blkoff(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %75, i64 %78
  %80 = bitcast i8* %79 to %struct.z_erofs_map_header*
  store %struct.z_erofs_map_header* %80, %struct.z_erofs_map_header** %10, align 8
  %81 = load %struct.z_erofs_map_header*, %struct.z_erofs_map_header** %10, align 8
  %82 = getelementptr inbounds %struct.z_erofs_map_header, %struct.z_erofs_map_header* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %86 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.z_erofs_map_header*, %struct.z_erofs_map_header** %10, align 8
  %88 = getelementptr inbounds %struct.z_erofs_map_header, %struct.z_erofs_map_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 15
  %91 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %92 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.z_erofs_map_header*, %struct.z_erofs_map_header** %10, align 8
  %96 = getelementptr inbounds %struct.z_erofs_map_header, %struct.z_erofs_map_header* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 4
  %99 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %100 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %104 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @Z_EROFS_COMPRESSION_MAX, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %72
  %111 = load %struct.super_block*, %struct.super_block** %5, align 8
  %112 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %113 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %118 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @erofs_err(%struct.super_block* %111, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %183

123:                                              ; preds = %72
  %124 = load i32, i32* @LOG_BLOCK_SIZE, align 4
  %125 = load %struct.z_erofs_map_header*, %struct.z_erofs_map_header** %10, align 8
  %126 = getelementptr inbounds %struct.z_erofs_map_header, %struct.z_erofs_map_header* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 7
  %129 = add nsw i32 %124, %128
  %130 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %131 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %133 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.z_erofs_map_header*, %struct.z_erofs_map_header** %10, align 8
  %136 = getelementptr inbounds %struct.z_erofs_map_header, %struct.z_erofs_map_header* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 3
  %139 = and i32 %138, 3
  %140 = add nsw i32 %134, %139
  %141 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %142 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %146 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @LOG_BLOCK_SIZE, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %123
  %153 = load %struct.super_block*, %struct.super_block** %5, align 8
  %154 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %155 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %160 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @erofs_err(%struct.super_block* %153, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load i32, i32* @EOPNOTSUPP, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %183

165:                                              ; preds = %123
  %166 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %167 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.z_erofs_map_header*, %struct.z_erofs_map_header** %10, align 8
  %170 = getelementptr inbounds %struct.z_erofs_map_header, %struct.z_erofs_map_header* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 5
  %173 = and i32 %172, 7
  %174 = add nsw i32 %168, %173
  %175 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %176 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %174, i32* %178, align 4
  %179 = load i32, i32* @EROFS_I_Z_INITED_BIT, align 4
  %180 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %181 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %180, i32 0, i32 4
  %182 = call i32 @set_bit(i32 %179, i32* %181)
  br label %183

183:                                              ; preds = %165, %152, %110
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 @kunmap_atomic(i8* %184)
  %186 = load %struct.page*, %struct.page** %8, align 8
  %187 = call i32 @unlock_page(%struct.page* %186)
  %188 = load %struct.page*, %struct.page** %8, align 8
  %189 = call i32 @put_page(%struct.page* %188)
  br label %190

190:                                              ; preds = %183, %69, %38
  %191 = load i32, i32* @EROFS_I_BL_Z_BIT, align 4
  %192 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %193 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %192, i32 0, i32 4
  %194 = call i32 @clear_and_wake_up_bit(i32 %191, i32* %193)
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %190, %29, %21
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @wait_on_bit_lock(i32*, i32, i32) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i64 @iloc(i32, i32) #1

declare dso_local i32 @EROFS_SB(%struct.super_block*) #1

declare dso_local %struct.page* @erofs_get_meta_page(%struct.super_block*, i32) #1

declare dso_local i32 @erofs_blknr(i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @erofs_blkoff(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @erofs_err(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @clear_and_wake_up_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
