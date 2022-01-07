; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_dir_info_to_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_dir_info_to_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fattr = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_dir_info_to_fattr(%struct.cifs_fattr* %0, %struct.TYPE_3__* %1, %struct.cifs_sb_info* %2) #0 {
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %6, align 8
  %7 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %8 = call i32 @memset(%struct.cifs_fattr* %7, i32 0, i32 56)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le64_to_cpu(i32 %17)
  %19 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @le64_to_cpu(i32 %23)
  %25 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @le64_to_cpu(i32 %29)
  %31 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %32 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cifs_NTtimeToUnix(i32 %35)
  %37 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %38 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cifs_NTtimeToUnix(i32 %41)
  %43 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cifs_NTtimeToUnix(i32 %47)
  %49 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %50 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %52 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %53 = call i32 @cifs_fill_common_info(%struct.cifs_fattr* %51, %struct.cifs_sb_info* %52)
  ret void
}

declare dso_local i32 @memset(%struct.cifs_fattr*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i8* @cifs_NTtimeToUnix(i32) #1

declare dso_local i32 @cifs_fill_common_info(%struct.cifs_fattr*, %struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
