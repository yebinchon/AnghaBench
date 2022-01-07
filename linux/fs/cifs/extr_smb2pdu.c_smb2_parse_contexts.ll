; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_parse_contexts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_parse_contexts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.create_context*, i32*, i8*)* }
%struct.create_context = type { i32, i32, i32 }
%struct.smb2_create_rsp = type { i64, i32, i32 }
%struct.smb2_file_all_info = type { i64 }

@SMB2_CREATE_REQUEST_LEASE = common dso_local global i32 0, align 4
@SMB2_CREATE_QUERY_ON_DISK_ID = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_LEASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb2_parse_contexts(%struct.TCP_Server_Info* %0, %struct.smb2_create_rsp* %1, i32* %2, i8* %3, i64* %4, %struct.smb2_file_all_info* %5) #0 {
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca %struct.smb2_create_rsp*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.smb2_file_all_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.create_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %7, align 8
  store %struct.smb2_create_rsp* %1, %struct.smb2_create_rsp** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.smb2_file_all_info* %5, %struct.smb2_file_all_info** %12, align 8
  %18 = load i64*, i64** %11, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %8, align 8
  %20 = bitcast %struct.smb2_create_rsp* %19 to i8*
  %21 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %8, align 8
  %22 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8* %26, i8** %13, align 8
  %27 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %8, align 8
  %28 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = bitcast i8* %31 to %struct.create_context*
  store %struct.create_context* %32, %struct.create_context** %14, align 8
  %33 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %12, align 8
  %34 = icmp ne %struct.smb2_file_all_info* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %12, align 8
  %37 = getelementptr inbounds %struct.smb2_file_all_info, %struct.smb2_file_all_info* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %6
  br label %39

39:                                               ; preds = %100, %38
  %40 = load i32, i32* %16, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp uge i64 %41, 12
  br i1 %42, label %43, label %110

43:                                               ; preds = %39
  %44 = load %struct.create_context*, %struct.create_context** %14, align 8
  %45 = getelementptr inbounds %struct.create_context, %struct.create_context* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load %struct.create_context*, %struct.create_context** %14, align 8
  %49 = bitcast %struct.create_context* %48 to i8*
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %17, align 8
  %52 = load %struct.create_context*, %struct.create_context** %14, align 8
  %53 = getelementptr inbounds %struct.create_context, %struct.create_context* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %73

57:                                               ; preds = %43
  %58 = load i8*, i8** %17, align 8
  %59 = load i32, i32* @SMB2_CREATE_REQUEST_LEASE, align 4
  %60 = call i64 @strncmp(i8* %58, i32 %59, i32 4)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %64 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64 (%struct.create_context*, i32*, i8*)*, i64 (%struct.create_context*, i32*, i8*)** %66, align 8
  %68 = load %struct.create_context*, %struct.create_context** %14, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 %67(%struct.create_context* %68, i32* %69, i8* %70)
  %72 = load i64*, i64** %11, align 8
  store i64 %71, i64* %72, align 8
  br label %92

73:                                               ; preds = %57, %43
  %74 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %12, align 8
  %75 = icmp ne %struct.smb2_file_all_info* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.create_context*, %struct.create_context** %14, align 8
  %78 = getelementptr inbounds %struct.create_context, %struct.create_context* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* @SMB2_CREATE_QUERY_ON_DISK_ID, align 4
  %85 = call i64 @strncmp(i8* %83, i32 %84, i32 4)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.create_context*, %struct.create_context** %14, align 8
  %89 = load %struct.smb2_file_all_info*, %struct.smb2_file_all_info** %12, align 8
  %90 = call i32 @parse_query_id_ctxt(%struct.create_context* %88, %struct.smb2_file_all_info* %89)
  br label %91

91:                                               ; preds = %87, %82, %76, %73
  br label %92

92:                                               ; preds = %91, %62
  %93 = load %struct.create_context*, %struct.create_context** %14, align 8
  %94 = getelementptr inbounds %struct.create_context, %struct.create_context* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %110

100:                                              ; preds = %92
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = load %struct.create_context*, %struct.create_context** %14, align 8
  %105 = bitcast %struct.create_context* %104 to i8*
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = bitcast i8* %108 to %struct.create_context*
  store %struct.create_context* %109, %struct.create_context** %14, align 8
  br label %39

110:                                              ; preds = %99, %39
  %111 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %8, align 8
  %112 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SMB2_OPLOCK_LEVEL_LEASE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %8, align 8
  %118 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %11, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %110
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @parse_query_id_ctxt(%struct.create_context*, %struct.smb2_file_all_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
