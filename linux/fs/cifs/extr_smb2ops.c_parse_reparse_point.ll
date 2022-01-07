; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_parse_reparse_point.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_parse_reparse_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reparse_data_buffer = type { i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.reparse_posix_data = type { i32 }
%struct.reparse_symlink_data_buffer = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"reparse buffer is too small. Must be at least 8 bytes but was %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"srv returned invalid reparse buf length: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"srv returned unknown symlink buffer tag:0x%08x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reparse_data_buffer*, i32, i8**, %struct.cifs_sb_info*)* @parse_reparse_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reparse_point(%struct.reparse_data_buffer* %0, i32 %1, i8** %2, %struct.cifs_sb_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.reparse_data_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.cifs_sb_info*, align 8
  store %struct.reparse_data_buffer* %0, %struct.reparse_data_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store %struct.cifs_sb_info* %3, %struct.cifs_sb_info** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, i32* @VFS, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cifs_dbg(i32 %14, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %63

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.reparse_data_buffer*, %struct.reparse_data_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.reparse_data_buffer, %struct.reparse_data_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 8
  %28 = icmp ult i64 %21, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @VFS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cifs_dbg(i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %63

35:                                               ; preds = %19
  %36 = load %struct.reparse_data_buffer*, %struct.reparse_data_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.reparse_data_buffer, %struct.reparse_data_buffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  switch i32 %39, label %54 [
    i32 129, label %40
    i32 128, label %47
  ]

40:                                               ; preds = %35
  %41 = load %struct.reparse_data_buffer*, %struct.reparse_data_buffer** %6, align 8
  %42 = bitcast %struct.reparse_data_buffer* %41 to %struct.reparse_posix_data*
  %43 = load i32, i32* %7, align 4
  %44 = load i8**, i8*** %8, align 8
  %45 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %46 = call i32 @parse_reparse_posix(%struct.reparse_posix_data* %42, i32 %43, i8** %44, %struct.cifs_sb_info* %45)
  store i32 %46, i32* %5, align 4
  br label %63

47:                                               ; preds = %35
  %48 = load %struct.reparse_data_buffer*, %struct.reparse_data_buffer** %6, align 8
  %49 = bitcast %struct.reparse_data_buffer* %48 to %struct.reparse_symlink_data_buffer*
  %50 = load i32, i32* %7, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %53 = call i32 @parse_reparse_symlink(%struct.reparse_symlink_data_buffer* %49, i32 %50, i8** %51, %struct.cifs_sb_info* %52)
  store i32 %53, i32* %5, align 4
  br label %63

54:                                               ; preds = %35
  %55 = load i32, i32* @VFS, align 4
  %56 = load %struct.reparse_data_buffer*, %struct.reparse_data_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.reparse_data_buffer, %struct.reparse_data_buffer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = call i32 @cifs_dbg(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %54, %47, %40, %29, %13
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @parse_reparse_posix(%struct.reparse_posix_data*, i32, i8**, %struct.cifs_sb_info*) #1

declare dso_local i32 @parse_reparse_symlink(%struct.reparse_symlink_data_buffer*, i32, i8**, %struct.cifs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
