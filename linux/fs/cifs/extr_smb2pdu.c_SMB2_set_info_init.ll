; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_set_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_set_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_set_info_req = type { i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@SMB2_SET_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_set_info_init(%struct.cifs_tcon* %0, %struct.smb_rqst* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7, i8** %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.smb_rqst*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.smb2_set_info_req*, align 8
  %23 = alloca %struct.kvec*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %12, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i8** %8, i8*** %20, align 8
  store i32* %9, i32** %21, align 8
  %27 = load %struct.smb_rqst*, %struct.smb_rqst** %13, align 8
  %28 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %27, i32 0, i32 1
  %29 = load %struct.kvec*, %struct.kvec** %28, align 8
  store %struct.kvec* %29, %struct.kvec** %23, align 8
  %30 = load i32, i32* @SMB2_SET_INFO, align 4
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %32 = bitcast %struct.smb2_set_info_req** %22 to i8**
  %33 = call i32 @smb2_plain_req_init(i32 %30, %struct.cifs_tcon* %31, i8** %32, i32* %25)
  store i32 %33, i32* %26, align 4
  %34 = load i32, i32* %26, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %10
  %37 = load i32, i32* %26, align 4
  store i32 %37, i32* %11, align 4
  br label %129

38:                                               ; preds = %10
  %39 = load i32, i32* %16, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %42 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %46 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %49 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %52 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %55 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %59 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = call i32 @cpu_to_le16(i32 63)
  %61 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %62 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %21, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %67 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %69 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i8**, i8*** %20, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32 %70, i8* %72, i32 %74)
  %76 = load i32*, i32** %21, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %25, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %25, align 4
  %80 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %81 = bitcast %struct.smb2_set_info_req* %80 to i8*
  %82 = load %struct.kvec*, %struct.kvec** %23, align 8
  %83 = getelementptr inbounds %struct.kvec, %struct.kvec* %82, i64 0
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  %85 = load i32, i32* %25, align 4
  %86 = sub i32 %85, 1
  %87 = load %struct.kvec*, %struct.kvec** %23, align 8
  %88 = getelementptr inbounds %struct.kvec, %struct.kvec* %87, i64 0
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  store i32 1, i32* %24, align 4
  br label %90

90:                                               ; preds = %125, %38
  %91 = load i32, i32* %24, align 4
  %92 = load %struct.smb_rqst*, %struct.smb_rqst** %13, align 8
  %93 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %90
  %97 = load %struct.smb2_set_info_req*, %struct.smb2_set_info_req** %22, align 8
  %98 = getelementptr inbounds %struct.smb2_set_info_req, %struct.smb2_set_info_req* %97, i32 0, i32 0
  %99 = load i32*, i32** %21, align 8
  %100 = load i32, i32* %24, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_add_cpu(i8** %98, i32 %103)
  %105 = load i8**, i8*** %20, align 8
  %106 = load i32, i32* %24, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.kvec*, %struct.kvec** %23, align 8
  %111 = load i32, i32* %24, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.kvec, %struct.kvec* %110, i64 %112
  %114 = getelementptr inbounds %struct.kvec, %struct.kvec* %113, i32 0, i32 0
  store i8* %109, i8** %114, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* %24, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.kvec*, %struct.kvec** %23, align 8
  %121 = load i32, i32* %24, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.kvec, %struct.kvec* %120, i64 %122
  %124 = getelementptr inbounds %struct.kvec, %struct.kvec* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 8
  br label %125

125:                                              ; preds = %96
  %126 = load i32, i32* %24, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %24, align 4
  br label %90

128:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %128, %36
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
