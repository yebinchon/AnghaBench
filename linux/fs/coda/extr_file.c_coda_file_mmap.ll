; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_file_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.TYPE_4__*, %struct.file* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32*, i32, i32 }
%struct.coda_file_info = type { i32, i32, %struct.file* }
%struct.coda_inode_info = type { i32, i32 }
%struct.coda_vm_ops = type { %struct.TYPE_4__, i32, %struct.file*, %struct.TYPE_4__* }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CODA_ACCESS_TYPE_MMAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@coda_vm_open = common dso_local global i32 0, align 4
@coda_vm_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @coda_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.coda_file_info*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.coda_inode_info*, align 8
  %11 = alloca %struct.coda_vm_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call %struct.coda_file_info* @coda_ftoc(%struct.file* %17)
  store %struct.coda_file_info* %18, %struct.coda_file_info** %7, align 8
  %19 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %20 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %19, i32 0, i32 2
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %8, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = call %struct.inode* @file_inode(%struct.file* %22)
  store %struct.inode* %23, %struct.inode** %9, align 8
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %188

33:                                               ; preds = %2
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 4
  %37 = load %struct.file*, %struct.file** %36, align 8
  %38 = icmp ne %struct.file* %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %188

45:                                               ; preds = %33
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %48, %51
  store i64 %52, i64* %13, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call i32 @coda_i2f(%struct.inode* %61)
  %63 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %64 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %63, i32 0, i32 1
  %65 = load i64, i64* %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @CODA_ACCESS_TYPE_MMAP, align 4
  %68 = call i32 @venus_access_intent(i32 %60, i32 %62, i32* %64, i64 %65, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %45
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %3, align 4
  br label %188

73:                                               ; preds = %45
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.coda_vm_ops* @kmalloc(i32 32, i32 %74)
  store %struct.coda_vm_ops* %75, %struct.coda_vm_ops** %11, align 8
  %76 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %77 = icmp ne %struct.coda_vm_ops* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %188

81:                                               ; preds = %73
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call %struct.coda_inode_info* @ITOC(%struct.inode* %82)
  store %struct.coda_inode_info* %83, %struct.coda_inode_info** %10, align 8
  %84 = load %struct.coda_inode_info*, %struct.coda_inode_info** %10, align 8
  %85 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %84, i32 0, i32 0
  %86 = call i32 @spin_lock(i32* %85)
  %87 = load %struct.file*, %struct.file** %8, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.file*, %struct.file** %4, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = icmp eq i32* %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %81
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  store i32* %101, i32** %103, align 8
  br label %121

104:                                              ; preds = %81
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %107, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.coda_inode_info*, %struct.coda_inode_info** %10, align 8
  %114 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %117 = call i32 @kfree(%struct.coda_vm_ops* %116)
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %188

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.coda_inode_info*, %struct.coda_inode_info** %10, align 8
  %123 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.coda_file_info*, %struct.coda_file_info** %7, align 8
  %127 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.coda_inode_info*, %struct.coda_inode_info** %10, align 8
  %131 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %130, i32 0, i32 0
  %132 = call i32 @spin_unlock(i32* %131)
  %133 = load %struct.file*, %struct.file** %8, align 8
  %134 = call %struct.file* @get_file(%struct.file* %133)
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %136 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %135, i32 0, i32 4
  store %struct.file* %134, %struct.file** %136, align 8
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 4
  %139 = load %struct.file*, %struct.file** %138, align 8
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %141 = call i32 @call_mmap(%struct.file* %139, %struct.vm_area_struct* %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %121
  %145 = load %struct.file*, %struct.file** %8, align 8
  %146 = call i32 @fput(%struct.file* %145)
  %147 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %148 = call i32 @kfree(%struct.coda_vm_ops* %147)
  br label %186

149:                                              ; preds = %121
  %150 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %151 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %150, i32 0, i32 3
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %154 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %153, i32 0, i32 3
  store %struct.TYPE_4__* %152, %struct.TYPE_4__** %154, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %156 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %155, i32 0, i32 3
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = icmp ne %struct.TYPE_4__* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %149
  %160 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %161 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %160, i32 0, i32 0
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %163 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = bitcast %struct.TYPE_4__* %161 to i8*
  %166 = bitcast %struct.TYPE_4__* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 4 %166, i64 8, i1 false)
  br label %167

167:                                              ; preds = %159, %149
  %168 = load i32, i32* @coda_vm_open, align 4
  %169 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %170 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* @coda_vm_close, align 4
  %173 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %174 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.file*, %struct.file** %4, align 8
  %177 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %178 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %177, i32 0, i32 2
  store %struct.file* %176, %struct.file** %178, align 8
  %179 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %180 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %179, i32 0, i32 1
  %181 = call i32 @atomic_set(i32* %180, i32 1)
  %182 = load %struct.coda_vm_ops*, %struct.coda_vm_ops** %11, align 8
  %183 = getelementptr inbounds %struct.coda_vm_ops, %struct.coda_vm_ops* %182, i32 0, i32 0
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %185 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %184, i32 0, i32 3
  store %struct.TYPE_4__* %183, %struct.TYPE_4__** %185, align 8
  br label %186

186:                                              ; preds = %167, %144
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %112, %78, %71, %42, %30
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.coda_file_info* @coda_ftoc(%struct.file*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @venus_access_intent(i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local %struct.coda_vm_ops* @kmalloc(i32, i32) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.coda_vm_ops*) #1

declare dso_local %struct.file* @get_file(%struct.file*) #1

declare dso_local i32 @call_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @fput(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
