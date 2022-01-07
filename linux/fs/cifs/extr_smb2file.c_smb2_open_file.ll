; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2file.c_smb2_open_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2file.c_smb2_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_open_parms = type { %struct.TYPE_3__*, i32, i32, i32, %struct.cifs_fid* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cifs_fid = type { i32, i32 }
%struct.smb2_file_all_info = type { i64 }
%struct.network_resiliency_req = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_BATCH = common dso_local global i32 0, align 4
@FSCTL_LMR_REQUEST_RESILIENCY = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"resiliency not supported by server, disabling\0A\00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error %d setting resiliency\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_open_file(i32 %0, %struct.cifs_open_parms* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_open_parms*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb2_file_all_info*, align 8
  %11 = alloca %struct.smb2_file_all_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cifs_fid*, align 8
  %14 = alloca %struct.network_resiliency_req, align 8
  store i32 %0, i32* %5, align 4
  store %struct.cifs_open_parms* %1, %struct.cifs_open_parms** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.smb2_file_all_info* null, %struct.smb2_file_all_info** %11, align 8
  %15 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %16 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %15, i32 0, i32 4
  %17 = load %struct.cifs_fid*, %struct.cifs_fid** %16, align 8
  store %struct.cifs_fid* %17, %struct.cifs_fid** %13, align 8
  %18 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %19 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %22 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.smb2_file_all_info* @cifs_convert_path_to_utf16(i32 %20, i32 %23)
  store %struct.smb2_file_all_info* %24, %struct.smb2_file_all_info** %10, align 8
  %25 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %10, align 8
  %26 = icmp eq %struct.smb2_file_all_info* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %143

30:                                               ; preds = %4
  %31 = load i32, i32* @PATH_MAX, align 4
  %32 = mul nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = add i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.smb2_file_all_info* @kzalloc(i32 %35, i32 %36)
  store %struct.smb2_file_all_info* %37, %struct.smb2_file_all_info** %11, align 8
  %38 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %39 = icmp eq %struct.smb2_file_all_info* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %143

43:                                               ; preds = %30
  %44 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %45 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %46 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @SMB2_OPLOCK_LEVEL_BATCH, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %52 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %10, align 8
  %53 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %54 = call i32 @SMB2_open(i32 %50, %struct.cifs_open_parms* %51, %struct.smb2_file_all_info* %52, i32* %12, %struct.smb2_file_all_info* %53, i32* null, i32* null)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %143

58:                                               ; preds = %43
  %59 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %60 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %58
  %66 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %67 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cpu_to_le32(i32 %70)
  %72 = getelementptr inbounds %struct.network_resiliency_req, %struct.network_resiliency_req* %14, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.network_resiliency_req, %struct.network_resiliency_req* %14, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %76 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %79 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %82 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FSCTL_LMR_REQUEST_RESILIENCY, align 4
  %85 = bitcast %struct.network_resiliency_req* %14 to i8*
  %86 = load i32, i32* @CIFSMaxBufSize, align 4
  %87 = call i32 @SMB2_ioctl(i32 %74, %struct.TYPE_3__* %77, i32 %80, i32 %83, i32 %84, i32 1, i8* %85, i32 16, i32 %86, i32* null, i32* null)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %65
  %93 = load i32, i32* @VFS, align 4
  %94 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %96 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  br label %107

99:                                               ; preds = %65
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @FYI, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %92
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %58
  %109 = load i32*, i32** %8, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %140

111:                                              ; preds = %108
  %112 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %113 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %111
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %6, align 8
  %119 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %122 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.cifs_fid*, %struct.cifs_fid** %13, align 8
  %125 = getelementptr inbounds %struct.cifs_fid, %struct.cifs_fid* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %128 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %127, i32 0, i32 0
  %129 = call i32 @SMB2_get_srv_num(i32 %117, %struct.TYPE_3__* %120, i32 %123, i32 %126, i64* %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %116
  %133 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %134 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %132, %116
  br label %136

136:                                              ; preds = %135, %111
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %139 = call i32 @move_smb2_info_to_cifs(i32* %137, %struct.smb2_file_all_info* %138)
  br label %140

140:                                              ; preds = %136, %108
  %141 = load i32, i32* %12, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %57, %40, %27
  %144 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %11, align 8
  %145 = call i32 @kfree(%struct.smb2_file_all_info* %144)
  %146 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %10, align 8
  %147 = call i32 @kfree(%struct.smb2_file_all_info* %146)
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local %struct.smb2_file_all_info* @cifs_convert_path_to_utf16(i32, i32) #1

declare dso_local %struct.smb2_file_all_info* @kzalloc(i32, i32) #1

declare dso_local i32 @SMB2_open(i32, %struct.cifs_open_parms*, %struct.smb2_file_all_info*, i32*, %struct.smb2_file_all_info*, i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @SMB2_ioctl(i32, %struct.TYPE_3__*, i32, i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @SMB2_get_srv_num(i32, %struct.TYPE_3__*, i32, i32, i64*) #1

declare dso_local i32 @move_smb2_info_to_cifs(i32*, %struct.smb2_file_all_info*) #1

declare dso_local i32 @kfree(%struct.smb2_file_all_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
