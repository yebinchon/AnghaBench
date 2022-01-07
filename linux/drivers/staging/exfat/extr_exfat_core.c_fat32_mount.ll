; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat32_mount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat32_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.pbr_sector_t = type { i64 }
%struct.bpb32_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fs_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i8*, i8*, i32, i32 }
%struct.bd_info_t = type { i32 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_FORMATERR = common dso_local global i32 0, align 4
@FAT32 = common dso_local global i32 0, align 4
@DENTRY_SIZE_BITS = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@fat_fs_func = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat32_mount(%struct.super_block* %0, %struct.pbr_sector_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.pbr_sector_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpb32_t*, align 8
  %8 = alloca %struct.fs_info_t*, align 8
  %9 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.pbr_sector_t* %1, %struct.pbr_sector_t** %5, align 8
  %10 = load %struct.pbr_sector_t*, %struct.pbr_sector_t** %5, align 8
  %11 = getelementptr inbounds %struct.pbr_sector_t, %struct.pbr_sector_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.bpb32_t*
  store %struct.bpb32_t* %13, %struct.bpb32_t** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.fs_info_t* %16, %struct.fs_info_t** %8, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.bd_info_t* %19, %struct.bd_info_t** %9, align 8
  %20 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %21 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FFS_FORMATERR, align 4
  store i32 %25, i32* %3, align 4
  br label %167

26:                                               ; preds = %2
  %27 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %28 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %31 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %30, i32 0, i32 20
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %33 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ilog2(i32 %34)
  %36 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %37 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %39 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bd_info_t*, %struct.bd_info_t** %9, align 8
  %42 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %46 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %48 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %52 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %54 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @GET32(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %59 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %61 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %64 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GET16(i32 %65)
  %67 = add nsw i32 %62, %66
  %68 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %69 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %71 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %26
  %75 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %76 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %79 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  br label %90

80:                                               ; preds = %26
  %81 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %82 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %85 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %89 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %80, %74
  %91 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %92 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %95 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %99 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %101 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %104 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %103, i32 0, i32 8
  store i32 %102, i32* %104, align 8
  %105 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %106 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @GET32(i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %111 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %113 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %116 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  store i32 %118, i32* %6, align 4
  %119 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %120 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %125 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %123, %126
  %128 = add nsw i32 %127, 2
  %129 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %130 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %129, i32 0, i32 10
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @FAT32, align 4
  %132 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %133 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %132, i32 0, i32 19
  store i32 %131, i32* %133, align 8
  %134 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %135 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @GET32(i32 %136)
  %138 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %139 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %138, i32 0, i32 18
  store i8* %137, i8** %139, align 8
  %140 = load %struct.bpb32_t*, %struct.bpb32_t** %7, align 8
  %141 = getelementptr inbounds %struct.bpb32_t, %struct.bpb32_t* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @GET32(i32 %142)
  %144 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %145 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %144, i32 0, i32 17
  store i8* %143, i8** %145, align 8
  %146 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %147 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %146, i32 0, i32 16
  store i64 0, i64* %147, align 8
  %148 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %149 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %152 = sub nsw i32 %150, %151
  %153 = shl i32 1, %152
  %154 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %155 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %154, i32 0, i32 11
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @VOL_CLEAN, align 4
  %157 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %158 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %157, i32 0, i32 15
  store i32 %156, i32* %158, align 4
  %159 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %160 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %159, i32 0, i32 12
  store i32 2, i32* %160, align 8
  %161 = load i32, i32* @UINT_MAX, align 4
  %162 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %163 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %162, i32 0, i32 14
  store i32 %161, i32* %163, align 8
  %164 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %165 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %164, i32 0, i32 13
  store i32* @fat_fs_func, i32** %165, align 8
  %166 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %90, %24
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i8* @GET32(i32) #1

declare dso_local i32 @GET16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
