; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_std_info_to_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_std_info_to_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fattr = type { i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_fattr*, %struct.TYPE_8__*, %struct.cifs_sb_info*)* @cifs_std_info_to_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_std_info_to_fattr(%struct.cifs_fattr* %0, %struct.TYPE_8__* %1, %struct.cifs_sb_info* %2) #0 {
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %6, align 8
  %8 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %9 = call %struct.TYPE_9__* @cifs_sb_master_tcon(%struct.cifs_sb_info* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %17 = call i32 @memset(%struct.cifs_fattr* %16, i32 0, i32 48)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @cnvrtDosUnixTm(i32 %20, i32 %23, i32 %24)
  %26 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %27 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @cnvrtDosUnixTm(i32 %30, i32 %33, i32 %34)
  %36 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %37 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @cnvrtDosUnixTm(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %47 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %53 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %59 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %65 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %67 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %68 = call i32 @cifs_fill_common_info(%struct.cifs_fattr* %66, %struct.cifs_sb_info* %67)
  ret void
}

declare dso_local %struct.TYPE_9__* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @memset(%struct.cifs_fattr*, i32, i32) #1

declare dso_local i8* @cnvrtDosUnixTm(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_fill_common_info(%struct.cifs_fattr*, %struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
