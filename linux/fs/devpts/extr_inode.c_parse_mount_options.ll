; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_parse_mount_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_parse_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.pts_mount_opts = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@DEVPTS_DEFAULT_MODE = common dso_local global i32 0, align 4
@DEVPTS_DEFAULT_PTMX_MODE = common dso_local global i32 0, align 4
@NR_UNIX98_PTY_MAX = common dso_local global i32 0, align 4
@PARSE_MOUNT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@init_task = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"called with bogus options\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.pts_mount_opts*)* @parse_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mount_options(i8* %0, i32 %1, %struct.pts_mount_opts* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pts_mount_opts*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pts_mount_opts* %2, %struct.pts_mount_opts** %7, align 8
  %16 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %17 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %19 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %21 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %22 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %24 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %25 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DEVPTS_DEFAULT_MODE, align 4
  %27 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %28 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DEVPTS_DEFAULT_PTMX_MODE, align 4
  %30 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %31 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @NR_UNIX98_PTY_MAX, align 4
  %33 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %34 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @PARSE_MOUNT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @init_task, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %50 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %3
  br label %52

52:                                               ; preds = %168, %165, %51
  %53 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %169

55:                                               ; preds = %52
  %56 = load i32, i32* @MAX_OPT_ARGS, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %11, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %12, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 2, i32* %15, align 4
  br label %165

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @tokens, align 4
  %67 = call i32 @match_token(i8* %65, i32 %66, i32* %59)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  switch i32 %68, label %160 [
    i32 128, label %69
    i32 133, label %92
    i32 131, label %115
    i32 129, label %128
    i32 130, label %141
    i32 132, label %142
  ]

69:                                               ; preds = %64
  %70 = getelementptr inbounds i32, i32* %59, i64 0
  %71 = call i32 @match_int(i32* %70, i32* %14)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

76:                                               ; preds = %69
  %77 = call i32 (...) @current_user_ns()
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @make_kuid(i32 %77, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @uid_valid(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %89 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %91 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %164

92:                                               ; preds = %64
  %93 = getelementptr inbounds i32, i32* %59, i64 0
  %94 = call i32 @match_int(i32* %93, i32* %14)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

99:                                               ; preds = %92
  %100 = call i32 (...) @current_user_ns()
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @make_kgid(i32 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @gid_valid(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

109:                                              ; preds = %99
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %112 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %114 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %164

115:                                              ; preds = %64
  %116 = getelementptr inbounds i32, i32* %59, i64 0
  %117 = call i32 @match_octal(i32* %116, i32* %14)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

122:                                              ; preds = %115
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @S_IALLUGO, align 4
  %125 = and i32 %123, %124
  %126 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %127 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %164

128:                                              ; preds = %64
  %129 = getelementptr inbounds i32, i32* %59, i64 0
  %130 = call i32 @match_octal(i32* %129, i32* %14)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

135:                                              ; preds = %128
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @S_IALLUGO, align 4
  %138 = and i32 %136, %137
  %139 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %140 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %164

141:                                              ; preds = %64
  br label %164

142:                                              ; preds = %64
  %143 = getelementptr inbounds i32, i32* %59, i64 0
  %144 = call i32 @match_int(i32* %143, i32* %14)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @NR_UNIX98_PTY_MAX, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %146, %142
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

156:                                              ; preds = %149
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %7, align 8
  %159 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  br label %164

160:                                              ; preds = %64
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %165

164:                                              ; preds = %156, %141, %135, %122, %109, %86
  store i32 0, i32* %15, align 4
  br label %165

165:                                              ; preds = %164, %160, %153, %132, %119, %106, %96, %83, %73, %63
  %166 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %15, align 4
  switch i32 %167, label %172 [
    i32 0, label %168
    i32 2, label %52
    i32 1, label %170
  ]

168:                                              ; preds = %165
  br label %52

169:                                              ; preds = %52
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %165
  %171 = load i32, i32* %4, align 4
  ret i32 %171

172:                                              ; preds = %165
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @match_octal(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
