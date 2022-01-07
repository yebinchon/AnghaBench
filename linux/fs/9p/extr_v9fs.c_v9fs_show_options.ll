; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.c_v9fs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_v9fs.c_v9fs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.v9fs_session_info* }
%struct.v9fs_session_info = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c",debug=%x\00", align 1
@V9FS_DEFUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c",dfltuid=%u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@V9FS_DEFGID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c",dfltgid=%u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c",afid=%u\00", align 1
@V9FS_DEFUSER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c",uname=%s\00", align 1
@V9FS_DEFANAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c",aname=%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c",nodevmap\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@v9fs_cache_modes = common dso_local global i64* null, align 8
@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c",access=user\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c",access=any\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c",access=client\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c",access=%u\00", align 1
@V9FS_POSIX_ACL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c",posixacl\00", align 1
@CACHE_FSCACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.v9fs_session_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %9, align 8
  store %struct.v9fs_session_info* %10, %struct.v9fs_session_info** %5, align 8
  %11 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %12 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %18 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %23 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @V9FS_DEFUID, align 4
  %26 = call i32 @uid_eq(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %31 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %32)
  %34 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %37 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @V9FS_DEFGID, align 4
  %40 = call i32 @gid_eq(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %45 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @from_kgid_munged(i32* @init_user_ns, i32 %46)
  %48 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %51 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %57 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %62 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @V9FS_DEFUSER, align 4
  %65 = call i64 @strcmp(i64 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %70 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %75 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @V9FS_DEFANAME, align 4
  %78 = call i64 @strcmp(i64 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %83 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %88 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %96 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load i64*, i64** @v9fs_cache_modes, align 8
  %102 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %103 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %101, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %107)
  br label %109

109:                                              ; preds = %99, %94
  %110 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %111 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %114 = and i32 %112, %113
  switch i32 %114, label %131 [
    i32 128, label %115
    i32 131, label %118
    i32 130, label %121
    i32 129, label %124
  ]

115:                                              ; preds = %109
  %116 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %117 = call i32 @seq_puts(%struct.seq_file* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %131

118:                                              ; preds = %109
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = call i32 @seq_puts(%struct.seq_file* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %131

121:                                              ; preds = %109
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 @seq_puts(%struct.seq_file* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %131

124:                                              ; preds = %109
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %127 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @from_kuid_munged(i32* @init_user_ns, i32 %128)
  %130 = call i32 @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %109, %124, %121, %118, %115
  %132 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %133 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @V9FS_POSIX_ACL, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = call i32 @seq_puts(%struct.seq_file* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %143 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %144 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @p9_show_client_options(%struct.seq_file* %142, i32 %145)
  ret i32 %146
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i64 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i64 @from_kgid_munged(i32*, i32) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @p9_show_client_options(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
