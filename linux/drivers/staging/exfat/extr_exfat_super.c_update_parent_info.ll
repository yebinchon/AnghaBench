; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_update_parent_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_update_parent_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_id_t = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.inode = type { i32 }
%struct.fs_info_t = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.fs_info_t }
%struct.TYPE_6__ = type { %struct.file_id_t }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_id_t*, %struct.inode*)* @update_parent_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_parent_info(%struct.file_id_t* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.file_id_t*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fs_info_t*, align 8
  %6 = alloca %struct.file_id_t*, align 8
  store %struct.file_id_t* %0, %struct.file_id_t** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_5__* @EXFAT_SB(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.fs_info_t* %11, %struct.fs_info_t** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.file_id_t* %14, %struct.file_id_t** %6, align 8
  %15 = load %struct.file_id_t*, %struct.file_id_t** %6, align 8
  %16 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.file_id_t*, %struct.file_id_t** %3, align 8
  %19 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %45, label %23

23:                                               ; preds = %2
  %24 = load %struct.file_id_t*, %struct.file_id_t** %6, align 8
  %25 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.file_id_t*, %struct.file_id_t** %3, align 8
  %28 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %32 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %30, %33
  %35 = icmp ne i32 %26, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %23
  %37 = load %struct.file_id_t*, %struct.file_id_t** %6, align 8
  %38 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.file_id_t*, %struct.file_id_t** %3, align 8
  %41 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br label %45

45:                                               ; preds = %36, %23, %2
  %46 = phi i1 [ true, %23 ], [ true, %2 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = load %struct.file_id_t*, %struct.file_id_t** %6, align 8
  %52 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.file_id_t*, %struct.file_id_t** %3, align 8
  %55 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load %struct.file_id_t*, %struct.file_id_t** %6, align 8
  %58 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.file_id_t*, %struct.file_id_t** %3, align 8
  %61 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.file_id_t*, %struct.file_id_t** %6, align 8
  %64 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %67 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = add nsw i32 %65, %69
  %71 = load %struct.fs_info_t*, %struct.fs_info_t** %5, align 8
  %72 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %70, %73
  %75 = load %struct.file_id_t*, %struct.file_id_t** %3, align 8
  %76 = getelementptr inbounds %struct.file_id_t, %struct.file_id_t* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %50, %45
  ret void
}

declare dso_local %struct.TYPE_5__* @EXFAT_SB(i32) #1

declare dso_local %struct.TYPE_6__* @EXFAT_I(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
