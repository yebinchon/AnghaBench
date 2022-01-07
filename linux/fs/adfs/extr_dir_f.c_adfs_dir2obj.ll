; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_dir2obj.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_dir2obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32 }
%struct.object_info = type { i8*, i32, i32, i8*, i8*, i8*, i8* }
%struct.adfs_direntry = type { i8*, i32, i32, i32, i32, i32 }

@ADFS_F_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adfs_dir*, %struct.object_info*, %struct.adfs_direntry*)* @adfs_dir2obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_dir2obj(%struct.adfs_dir* %0, %struct.object_info* %1, %struct.adfs_direntry* %2) #0 {
  %4 = alloca %struct.adfs_dir*, align 8
  %5 = alloca %struct.object_info*, align 8
  %6 = alloca %struct.adfs_direntry*, align 8
  %7 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %4, align 8
  store %struct.object_info* %1, %struct.object_info** %5, align 8
  store %struct.adfs_direntry* %2, %struct.adfs_direntry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @ADFS_F_NAME_LEN, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %14 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %40

23:                                               ; preds = %12
  %24 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %25 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.object_info*, %struct.object_info** %5, align 8
  %32 = getelementptr inbounds %struct.object_info, %struct.object_info* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %30, i8* %36, align 1
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %8

40:                                               ; preds = %22, %8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.object_info*, %struct.object_info** %5, align 8
  %43 = getelementptr inbounds %struct.object_info, %struct.object_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %45 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @adfs_readval(i32 %46, i32 3)
  %48 = load %struct.object_info*, %struct.object_info** %5, align 8
  %49 = getelementptr inbounds %struct.object_info, %struct.object_info* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %51 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @adfs_readval(i32 %52, i32 4)
  %54 = load %struct.object_info*, %struct.object_info** %5, align 8
  %55 = getelementptr inbounds %struct.object_info, %struct.object_info* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %57 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @adfs_readval(i32 %58, i32 4)
  %60 = load %struct.object_info*, %struct.object_info** %5, align 8
  %61 = getelementptr inbounds %struct.object_info, %struct.object_info* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %63 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @adfs_readval(i32 %64, i32 4)
  %66 = load %struct.object_info*, %struct.object_info** %5, align 8
  %67 = getelementptr inbounds %struct.object_info, %struct.object_info* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.adfs_direntry*, %struct.adfs_direntry** %6, align 8
  %69 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.object_info*, %struct.object_info** %5, align 8
  %72 = getelementptr inbounds %struct.object_info, %struct.object_info* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %74 = load %struct.object_info*, %struct.object_info** %5, align 8
  %75 = call i32 @adfs_object_fixup(%struct.adfs_dir* %73, %struct.object_info* %74)
  ret void
}

declare dso_local i8* @adfs_readval(i32, i32) #1

declare dso_local i32 @adfs_object_fixup(%struct.adfs_dir*, %struct.object_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
