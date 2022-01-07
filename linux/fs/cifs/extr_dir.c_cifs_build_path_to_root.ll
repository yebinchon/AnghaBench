; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_build_path_to_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_build_path_to_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_TREE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cifs_build_path_to_root(%struct.smb_vol* %0, %struct.cifs_sb_info* %1, %struct.cifs_tcon* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smb_vol*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.smb_vol* %0, %struct.smb_vol** %6, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %7, align 8
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %14 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %19 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = add nsw i32 %21, 1
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ]
  store i32 %25, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 1, i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %5, align 8
  br label %86

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %37 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @MAX_TREE_SIZE, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @strnlen(i32 %38, i64 %40)
  store i32 %41, i32* %11, align 4
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kmalloc(i32 %47, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i8*, i8** %12, align 8
  store i8* %53, i8** %5, align 8
  br label %86

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %60 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memcpy(i8* %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %54
  %65 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %66 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %65)
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load %struct.smb_vol*, %struct.smb_vol** %6, align 8
  %77 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @memcpy(i8* %75, i32 %78, i32 %79)
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %83 = call signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info* %82)
  %84 = call i32 @convert_delimiter(i8* %81, i8 signext %83)
  %85 = load i8*, i8** %12, align 8
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %64, %52, %28
  %87 = load i8*, i8** %5, align 8
  ret i8* %87
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strnlen(i32, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local signext i8 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i32 @convert_delimiter(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
