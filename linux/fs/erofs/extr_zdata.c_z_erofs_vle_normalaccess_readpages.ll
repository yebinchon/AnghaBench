; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_vle_normalaccess_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_vle_normalaccess_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.erofs_sb_info = type { i32 }
%struct.z_erofs_decompress_frontend = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.page* }
%struct.page = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pagepool = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"readahead error at page %lu @ nid %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* @z_erofs_vle_normalaccess_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_vle_normalaccess_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.erofs_sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_erofs_decompress_frontend, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.address_space*, %struct.address_space** %6, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call %struct.erofs_sb_info* @EROFS_I_SB(%struct.inode* %21)
  store %struct.erofs_sb_info* %22, %struct.erofs_sb_info** %10, align 8
  %23 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @should_decompress_synchronously(%struct.erofs_sb_info* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  call void @DECOMPRESS_FRONTEND_INIT(%struct.z_erofs_decompress_frontend* sret %12, %struct.inode* %26)
  %27 = load %struct.address_space*, %struct.address_space** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @mapping_gfp_constraint(%struct.address_space* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  store %struct.page* null, %struct.page** %14, align 8
  %30 = load i32, i32* @pagepool, align 4
  %31 = call i32 @LIST_HEAD(i32 %30)
  %32 = load %struct.address_space*, %struct.address_space** %6, align 8
  %33 = getelementptr inbounds %struct.address_space, %struct.address_space* %32, i32 0, i32 0
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  %35 = load %struct.list_head*, %struct.list_head** %7, align 8
  %36 = call %struct.page* @lru_to_page(%struct.list_head* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @trace_erofs_readpages(%struct.inode* %34, %struct.page* %36, i32 %37, i32 0)
  %39 = load %struct.list_head*, %struct.list_head** %7, align 8
  %40 = call %struct.page* @lru_to_page(%struct.list_head* %39)
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @PAGE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %12, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  br label %47

47:                                               ; preds = %90, %4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  %51 = load %struct.list_head*, %struct.list_head** %7, align 8
  %52 = call %struct.page* @lru_to_page(%struct.list_head* %51)
  store %struct.page* %52, %struct.page** %15, align 8
  %53 = load %struct.page*, %struct.page** %15, align 8
  %54 = getelementptr inbounds %struct.page, %struct.page* %53, i32 0, i32 2
  %55 = call i32 @prefetchw(i32* %54)
  %56 = load %struct.page*, %struct.page** %15, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 1
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.page*, %struct.page** %15, align 8
  %60 = call i64 @PageReadahead(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.page*, %struct.page** %14, align 8
  %64 = icmp ne %struct.page* %63, null
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %50
  %67 = phi i1 [ false, %50 ], [ %65, %62 ]
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load %struct.page*, %struct.page** %15, align 8
  %73 = load %struct.address_space*, %struct.address_space** %6, align 8
  %74 = load %struct.page*, %struct.page** %15, align 8
  %75 = getelementptr inbounds %struct.page, %struct.page* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @add_to_page_cache_lru(%struct.page* %72, %struct.address_space* %73, i64 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load %struct.page*, %struct.page** %15, align 8
  %82 = getelementptr inbounds %struct.page, %struct.page* %81, i32 0, i32 1
  %83 = call i32 @list_add(i32* %82, i32* @pagepool)
  br label %90

84:                                               ; preds = %66
  %85 = load %struct.page*, %struct.page** %15, align 8
  %86 = load %struct.page*, %struct.page** %14, align 8
  %87 = ptrtoint %struct.page* %86 to i64
  %88 = call i32 @set_page_private(%struct.page* %85, i64 %87)
  %89 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %89, %struct.page** %14, align 8
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, -1
  store i32 %92, i32* %8, align 4
  br label %47

93:                                               ; preds = %47
  br label %94

94:                                               ; preds = %119, %93
  %95 = load %struct.page*, %struct.page** %14, align 8
  %96 = icmp ne %struct.page* %95, null
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %98, %struct.page** %16, align 8
  %99 = load %struct.page*, %struct.page** %16, align 8
  %100 = call i64 @page_private(%struct.page* %99)
  %101 = inttoptr i64 %100 to i8*
  %102 = bitcast i8* %101 to %struct.page*
  store %struct.page* %102, %struct.page** %14, align 8
  %103 = load %struct.page*, %struct.page** %16, align 8
  %104 = call i32 @z_erofs_do_read_page(%struct.z_erofs_decompress_frontend* %12, %struct.page* %103, i32* @pagepool)
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %97
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.page*, %struct.page** %16, align 8
  %112 = getelementptr inbounds %struct.page, %struct.page* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = call %struct.TYPE_4__* @EROFS_I(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @erofs_err(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %113, i32 %117)
  br label %119

119:                                              ; preds = %107, %97
  %120 = load %struct.page*, %struct.page** %16, align 8
  %121 = call i32 @put_page(%struct.page* %120)
  br label %94

122:                                              ; preds = %94
  %123 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %12, i32 0, i32 2
  %124 = call i32 @z_erofs_collector_end(i32* %123)
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %12, i32 0, i32 2
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @z_erofs_submit_and_unzip(i32 %127, i32* %128, i32* @pagepool, i32 %129)
  %131 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %12, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load %struct.page*, %struct.page** %132, align 8
  %134 = icmp ne %struct.page* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.z_erofs_decompress_frontend, %struct.z_erofs_decompress_frontend* %12, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.page*, %struct.page** %137, align 8
  %139 = call i32 @put_page(%struct.page* %138)
  br label %140

140:                                              ; preds = %135, %122
  %141 = call i32 @put_pages_list(i32* @pagepool)
  ret i32 0
}

declare dso_local %struct.erofs_sb_info* @EROFS_I_SB(%struct.inode*) #1

declare dso_local i32 @should_decompress_synchronously(%struct.erofs_sb_info*, i32) #1

declare dso_local void @DECOMPRESS_FRONTEND_INIT(%struct.z_erofs_decompress_frontend* sret, %struct.inode*) #1

declare dso_local i32 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @trace_erofs_readpages(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #1

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @PageReadahead(%struct.page*) #1

declare dso_local i64 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @z_erofs_do_read_page(%struct.z_erofs_decompress_frontend*, %struct.page*, i32*) #1

declare dso_local i32 @erofs_err(i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_4__* @EROFS_I(%struct.inode*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @z_erofs_collector_end(i32*) #1

declare dso_local i32 @z_erofs_submit_and_unzip(i32, i32*, i32*, i32) #1

declare dso_local i32 @put_pages_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
