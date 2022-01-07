; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_copy_posix_fs_info_to_kstatfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_copy_posix_fs_info_to_kstatfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32 }
%struct.kstatfs = type { i8*, i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.kstatfs*)* @copy_posix_fs_info_to_kstatfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_posix_fs_info_to_kstatfs(%struct.TYPE_3__* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @le32_to_cpu(i32 %7)
  %9 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %10 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i8* @le64_to_cpu(i64 %13)
  %15 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %16 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @le64_to_cpu(i64 %19)
  %21 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %22 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @cpu_to_le64(i32 -1)
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %30 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %33 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @le64_to_cpu(i64 %37)
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @cpu_to_le64(i32 -1)
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @le64_to_cpu(i64 %50)
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %47, %41
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @cpu_to_le64(i32 -1)
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @le64_to_cpu(i64 %63)
  %65 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %66 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i64) #1

declare dso_local i64 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
