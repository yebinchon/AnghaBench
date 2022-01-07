; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_query_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_query_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_fid = type { i32, i32 }
%struct.smb2_file_all_info = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifs_fid*, i32*)* @smb2_query_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_query_file_info(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_fid* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.cifs_fid*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb2_file_all_info*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %7, align 8
  store %struct.cifs_fid* %2, %struct.cifs_fid** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = add i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.smb2_file_all_info* @kzalloc(i32 %16, i32 %17)
  store %struct.smb2_file_all_info* %18, %struct.smb2_file_all_info** %11, align 8
  %19 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %20 = icmp eq %struct.smb2_file_all_info* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %27 = load %struct.cifs_fid*, %struct.cifs_fid** %8, align 8
  %28 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cifs_fid*, %struct.cifs_fid** %8, align 8
  %31 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %34 = call i32 @SMB2_query_info(i32 %25, %struct.cifs_tcon* %26, i32 %29, i32 %32, %struct.smb2_file_all_info* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %40 = call i32 @move_smb2_info_to_cifs(i32* %38, %struct.smb2_file_all_info* %39)
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %43 = call i32 @kfree(%struct.smb2_file_all_info* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.smb2_file_all_info* @kzalloc(i32, i32) #1

declare dso_local i32 @SMB2_query_info(i32, %struct.cifs_tcon*, i32, i32, %struct.smb2_file_all_info*) #1

declare dso_local i32 @move_smb2_info_to_cifs(i32*, %struct.smb2_file_all_info*) #1

declare dso_local i32 @kfree(%struct.smb2_file_all_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
