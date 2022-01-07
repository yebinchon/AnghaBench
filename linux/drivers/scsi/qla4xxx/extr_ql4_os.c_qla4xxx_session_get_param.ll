; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_session_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_session_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, %struct.ddb_entry* }
%struct.ddb_entry = type { i32, i32, %struct.iscsi_cls_conn*, %struct.scsi_qla_host* }
%struct.iscsi_cls_conn = type { i32 }
%struct.scsi_qla_host = type { i32 }
%struct.ql4_chap_table = type { i32, i64, i64 }

@BIDI_CHAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@FLASH_DDB = common dso_local global i32 0, align 4
@INVALID_ENTRY = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_ERROR = common dso_local global i32 0, align 4
@LOCAL_CHAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_session*, i32, i8*)* @qla4xxx_session_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_session_get_param(%struct.iscsi_cls_session* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_session*, align 8
  %9 = alloca %struct.ddb_entry*, align 8
  %10 = alloca %struct.scsi_qla_host*, align 8
  %11 = alloca %struct.iscsi_cls_conn*, align 8
  %12 = alloca %struct.ql4_chap_table, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %16, i32 0, i32 0
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %17, align 8
  store %struct.iscsi_session* %18, %struct.iscsi_session** %8, align 8
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 4
  %21 = load %struct.ddb_entry*, %struct.ddb_entry** %20, align 8
  store %struct.ddb_entry* %21, %struct.ddb_entry** %9, align 8
  %22 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %23 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %22, i32 0, i32 3
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %23, align 8
  store %struct.scsi_qla_host* %24, %struct.scsi_qla_host** %10, align 8
  %25 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %26 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %25, i32 0, i32 2
  %27 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %26, align 8
  store %struct.iscsi_cls_conn* %27, %struct.iscsi_cls_conn** %11, align 8
  %28 = call i32 @memset(%struct.ql4_chap_table* %12, i32 0, i32 24)
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %145 [
    i32 131, label %30
    i32 130, label %50
    i32 128, label %91
    i32 129, label %91
  ]

30:                                               ; preds = %3
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BIDI_CHAP, align 4
  %39 = call i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host* %31, i32 %34, i32 %37, i32 %38, i32* %15)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %14, align 4
  br label %49

45:                                               ; preds = %30
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %45, %42
  br label %150

50:                                               ; preds = %3
  %51 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %52 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FLASH_DDB, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %58 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @INVALID_ENTRY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %64 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %66, i32* %13, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @QLA_ERROR, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %67, %62
  br label %80

70:                                               ; preds = %50
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %72 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %73 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %76 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @LOCAL_CHAP, align 4
  %79 = call i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host* %71, i32 %74, i32 %77, i32 %78, i32* %15)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %70, %69
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %85, i32* %14, align 4
  br label %90

86:                                               ; preds = %80
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %83
  br label %150

91:                                               ; preds = %3, %3
  %92 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %93 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FLASH_DDB, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %91
  %98 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %99 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @INVALID_ENTRY, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %144

103:                                              ; preds = %97
  %104 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %105 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %144, label %108

108:                                              ; preds = %103
  %109 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  %110 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %144, label %113

113:                                              ; preds = %108
  %114 = load %struct.ddb_entry*, %struct.ddb_entry** %9, align 8
  %115 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %15, align 4
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  %118 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %12, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %12, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @qla4xxx_get_uni_chap_at_index(%struct.scsi_qla_host* %117, i64 %119, i64 %121, i32 %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %113
  %127 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %128 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %12, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %12, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @strlen(i8* %133)
  %135 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %127, i32 128, i8* %130, i32 %134)
  %136 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %11, align 8
  %137 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %12, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %12, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @iscsi_set_param(%struct.iscsi_cls_conn* %136, i32 129, i8* %139, i32 %141)
  br label %143

143:                                              ; preds = %126, %113
  br label %144

144:                                              ; preds = %143, %108, %103, %97, %91
  br label %145

145:                                              ; preds = %3, %144
  %146 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @iscsi_session_get_param(%struct.iscsi_cls_session* %146, i32 %147, i8* %148)
  store i32 %149, i32* %4, align 4
  br label %152

150:                                              ; preds = %90, %49
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @memset(%struct.ql4_chap_table*, i32, i32) #1

declare dso_local i32 @qla4xxx_get_chap_index(%struct.scsi_qla_host*, i32, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @qla4xxx_get_uni_chap_at_index(%struct.scsi_qla_host*, i64, i64, i32) #1

declare dso_local i32 @iscsi_set_param(%struct.iscsi_cls_conn*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @iscsi_session_get_param(%struct.iscsi_cls_session*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
