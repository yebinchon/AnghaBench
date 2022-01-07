; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_query_path_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_cifs_query_path_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cifs_fid = type { i32 }
%struct.cifs_open_parms = type { i8*, i32, %struct.cifs_fid*, i32, i64, i32, %struct.cifs_sb_info*, %struct.cifs_tcon* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATTR_REPARSE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, i8*, %struct.TYPE_5__*, i32*, i32*)* @cifs_query_path_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_query_path_info(i32 %0, %struct.cifs_tcon* %1, %struct.cifs_sb_info* %2, i8* %3, %struct.TYPE_5__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cifs_fid, align 4
  %19 = alloca %struct.cifs_open_parms, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %9, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %26 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %29 = call i32 @cifs_remap(%struct.cifs_sb_info* %28)
  %30 = call i32 @CIFSSMBQPathInfo(i32 %21, %struct.cifs_tcon* %22, i8* %23, %struct.TYPE_5__* %24, i32 0, i32 %27, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %7
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35, %7
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %46 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %49 = call i32 @cifs_remap(%struct.cifs_sb_info* %48)
  %50 = call i32 @SMBQueryInformation(i32 %41, %struct.cifs_tcon* %42, i8* %43, %struct.TYPE_5__* %44, i32 %47, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %40, %35
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32, i32* @ATTR_REPARSE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %55
  store i32 0, i32* %17, align 4
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %65 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 7
  store %struct.cifs_tcon* %64, %struct.cifs_tcon** %65, align 8
  %66 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %67 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 6
  store %struct.cifs_sb_info* %66, %struct.cifs_sb_info** %67, align 8
  %68 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %69 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 5
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @FILE_OPEN, align 4
  %72 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 2
  store %struct.cifs_fid* %18, %struct.cifs_fid** %75, align 8
  %76 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %19, i32 0, i32 1
  store i32 0, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @CIFS_open(i32 %77, %struct.cifs_open_parms* %19, i32* %17, i32* null)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %63
  %84 = load i32*, i32** %14, align 8
  store i32 1, i32* %84, align 4
  br label %95

85:                                               ; preds = %63
  %86 = load i32, i32* %16, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %91 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %18, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CIFSSMBClose(i32 %89, %struct.cifs_tcon* %90, i32 %92)
  br label %94

94:                                               ; preds = %88, %85
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %55, %52
  %97 = load i32, i32* %15, align 4
  ret i32 %97
}

declare dso_local i32 @CIFSSMBQPathInfo(i32, %struct.cifs_tcon*, i8*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @cifs_remap(%struct.cifs_sb_info*) #1

declare dso_local i32 @SMBQueryInformation(i32, %struct.cifs_tcon*, i8*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @CIFS_open(i32, %struct.cifs_open_parms*, i32*, i32*) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
