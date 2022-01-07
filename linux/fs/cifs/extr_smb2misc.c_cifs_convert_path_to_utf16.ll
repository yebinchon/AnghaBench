; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_cifs_convert_path_to_utf16.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_cifs_convert_path_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sb_info = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CIFS_MOUNT_MAP_SFM_CHR = common dso_local global i32 0, align 4
@SFM_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@SFU_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@NO_MAP_UNI_RSVD = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @cifs_convert_path_to_utf16(i8* %0, %struct.cifs_sb_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %4, align 8
  %9 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CIFS_MOUNT_MAP_SFM_CHR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SFM_MAP_UNI_RSVD, align 4
  store i32 %16, i32* %8, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @SFU_MAP_UNI_RSVD, align 4
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @NO_MAP_UNI_RSVD, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %6, align 8
  br label %60

38:                                               ; preds = %29
  %39 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %40 = call i64 @cifs_sb_master_tlink(%struct.cifs_sb_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %44 = call %struct.TYPE_2__* @cifs_sb_master_tcon(%struct.cifs_sb_info* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 47
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %6, align 8
  br label %59

57:                                               ; preds = %48, %42, %38
  %58 = load i8*, i8** %3, align 8
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @PATH_MAX, align 4
  %63 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %64 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32* @cifs_strndup_to_utf16(i8* %61, i32 %62, i32* %5, i32 %65, i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  ret i32* %68
}

declare dso_local i64 @cifs_sb_master_tlink(%struct.cifs_sb_info*) #1

declare dso_local %struct.TYPE_2__* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32* @cifs_strndup_to_utf16(i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
