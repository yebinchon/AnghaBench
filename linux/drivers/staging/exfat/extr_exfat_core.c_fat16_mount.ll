; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat16_mount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat16_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.pbr_sector_t = type { i64 }
%struct.bpb16_t = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fs_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i8*, i32, i32 }
%struct.bd_info_t = type { i32 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_FORMATERR = common dso_local global i32 0, align 4
@DENTRY_SIZE_BITS = common dso_local global i32 0, align 4
@FAT12_THRESHOLD = common dso_local global i32 0, align 4
@FAT12 = common dso_local global i32 0, align 4
@FAT16 = common dso_local global i32 0, align 4
@VOL_CLEAN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@fat_fs_func = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat16_mount(%struct.super_block* %0, %struct.pbr_sector_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.pbr_sector_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpb16_t*, align 8
  %9 = alloca %struct.fs_info_t*, align 8
  %10 = alloca %struct.bd_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.pbr_sector_t* %1, %struct.pbr_sector_t** %5, align 8
  %11 = load %struct.pbr_sector_t*, %struct.pbr_sector_t** %5, align 8
  %12 = getelementptr inbounds %struct.pbr_sector_t, %struct.pbr_sector_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bpb16_t*
  store %struct.bpb16_t* %14, %struct.bpb16_t** %8, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.fs_info_t* %17, %struct.fs_info_t** %9, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.bd_info_t* %20, %struct.bd_info_t** %10, align 8
  %21 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %22 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @FFS_FORMATERR, align 4
  store i32 %26, i32* %3, align 4
  br label %205

27:                                               ; preds = %2
  %28 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %29 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET16(i32 %30)
  %32 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.bd_info_t*, %struct.bd_info_t** %10, align 8
  %37 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %35, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %42 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %45 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %44, i32 0, i32 20
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %47 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ilog2(i32 %48)
  %50 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %51 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %53 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bd_info_t*, %struct.bd_info_t** %10, align 8
  %56 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %60 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %62 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %66 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %68 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GET16(i32 %69)
  %71 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %72 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %74 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %77 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @GET16(i32 %78)
  %80 = add nsw i32 %75, %79
  %81 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %82 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %84 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %27
  %88 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %89 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %92 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  br label %103

93:                                               ; preds = %27
  %94 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %95 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %98 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %102 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %93, %87
  %104 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %105 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %108 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %112 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  %113 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %114 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %119 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 8
  %120 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %121 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @GET16(i32 %122)
  %124 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %125 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  %126 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %127 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %103
  %131 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %132 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @GET32(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %137 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %136, i32 0, i32 9
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %103
  %139 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %140 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %143 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  store i32 %145, i32* %6, align 4
  %146 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %147 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %152 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = ashr i32 %150, %153
  %155 = add nsw i32 %154, 2
  %156 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %157 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %156, i32 0, i32 10
  store i32 %155, i32* %157, align 8
  %158 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %159 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FAT12_THRESHOLD, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %138
  %164 = load i32, i32* @FAT12, align 4
  %165 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %166 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %165, i32 0, i32 19
  store i32 %164, i32* %166, align 8
  br label %171

167:                                              ; preds = %138
  %168 = load i32, i32* @FAT16, align 4
  %169 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %170 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %169, i32 0, i32 19
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %173 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @GET32(i32 %174)
  %176 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %177 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %176, i32 0, i32 18
  store i8* %175, i8** %177, align 8
  %178 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %179 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %178, i32 0, i32 17
  store i64 0, i64* %179, align 8
  %180 = load %struct.bpb16_t*, %struct.bpb16_t** %8, align 8
  %181 = getelementptr inbounds %struct.bpb16_t, %struct.bpb16_t* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @GET16(i32 %182)
  %184 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %185 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %184, i32 0, i32 11
  store i32 %183, i32* %185, align 4
  %186 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %187 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %190 = sub nsw i32 %188, %189
  %191 = shl i32 1, %190
  %192 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %193 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %192, i32 0, i32 12
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @VOL_CLEAN, align 4
  %195 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %196 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %195, i32 0, i32 16
  store i32 %194, i32* %196, align 4
  %197 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %198 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %197, i32 0, i32 13
  store i32 2, i32* %198, align 4
  %199 = load i32, i32* @UINT_MAX, align 4
  %200 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %201 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %200, i32 0, i32 15
  store i32 %199, i32* %201, align 8
  %202 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %203 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %202, i32 0, i32 14
  store i32* @fat_fs_func, i32** %203, align 8
  %204 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %171, %25
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @GET16(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i8* @GET32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
