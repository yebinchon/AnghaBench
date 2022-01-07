; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_object_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_object_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32 }
%struct.object_info = type { i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ADFS_NDA_DIRECTORY = common dso_local global i32 0, align 4
@ADFS_FILETYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adfs_object_fixup(%struct.adfs_dir* %0, %struct.object_info* %1) #0 {
  %3 = alloca %struct.adfs_dir*, align 8
  %4 = alloca %struct.object_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %3, align 8
  store %struct.object_info* %1, %struct.object_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.object_info*, %struct.object_info** %4, align 8
  %11 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.object_info*, %struct.object_info** %4, align 8
  %16 = getelementptr inbounds %struct.object_info, %struct.object_info* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.object_info*, %struct.object_info** %4, align 8
  %26 = getelementptr inbounds %struct.object_info, %struct.object_info* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 46, i8* %30, align 1
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %24, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.object_info*, %struct.object_info** %4, align 8
  %39 = getelementptr inbounds %struct.object_info, %struct.object_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ule i32 %40, 2
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.object_info*, %struct.object_info** %4, align 8
  %45 = getelementptr inbounds %struct.object_info, %struct.object_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.object_info*, %struct.object_info** %4, align 8
  %50 = getelementptr inbounds %struct.object_info, %struct.object_info* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 94, i8* %52, align 1
  br label %53

53:                                               ; preds = %48, %42, %37
  %54 = load %struct.object_info*, %struct.object_info** %4, align 8
  %55 = getelementptr inbounds %struct.object_info, %struct.object_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ADFS_NDA_DIRECTORY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %126, label %60

60:                                               ; preds = %53
  %61 = load %struct.adfs_dir*, %struct.adfs_dir** %3, align 8
  %62 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_2__* @ADFS_SB(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %126

68:                                               ; preds = %60
  %69 = load %struct.object_info*, %struct.object_info** %4, align 8
  %70 = getelementptr inbounds %struct.object_info, %struct.object_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @adfs_filetype(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ADFS_FILETYPE_NONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %68
  %77 = load %struct.object_info*, %struct.object_info** %4, align 8
  %78 = getelementptr inbounds %struct.object_info, %struct.object_info* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.object_info*, %struct.object_info** %4, align 8
  %81 = getelementptr inbounds %struct.object_info, %struct.object_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  store i8 44, i8* %85, align 1
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 8
  %88 = call i8* @hex_asc_lo(i32 %87)
  %89 = ptrtoint i8* %88 to i8
  %90 = load %struct.object_info*, %struct.object_info** %4, align 8
  %91 = getelementptr inbounds %struct.object_info, %struct.object_info* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.object_info*, %struct.object_info** %4, align 8
  %94 = getelementptr inbounds %struct.object_info, %struct.object_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %92, i64 %97
  store i8 %89, i8* %98, align 1
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 4
  %101 = call i8* @hex_asc_lo(i32 %100)
  %102 = ptrtoint i8* %101 to i8
  %103 = load %struct.object_info*, %struct.object_info** %4, align 8
  %104 = getelementptr inbounds %struct.object_info, %struct.object_info* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.object_info*, %struct.object_info** %4, align 8
  %107 = getelementptr inbounds %struct.object_info, %struct.object_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %105, i64 %110
  store i8 %102, i8* %111, align 1
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 0
  %114 = call i8* @hex_asc_lo(i32 %113)
  %115 = ptrtoint i8* %114 to i8
  %116 = load %struct.object_info*, %struct.object_info** %4, align 8
  %117 = getelementptr inbounds %struct.object_info, %struct.object_info* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.object_info*, %struct.object_info** %4, align 8
  %120 = getelementptr inbounds %struct.object_info, %struct.object_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  store i8 %115, i8* %124, align 1
  br label %125

125:                                              ; preds = %76, %68
  br label %126

126:                                              ; preds = %125, %60, %53
  ret void
}

declare dso_local %struct.TYPE_2__* @ADFS_SB(i32) #1

declare dso_local i32 @adfs_filetype(i32) #1

declare dso_local i8* @hex_asc_lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
