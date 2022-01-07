; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.autofs_sb_info = type { i32, i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@AUTOFS_MIN_PROTO_VERSION = common dso_local global i32 0, align 4
@AUTOFS_MAX_PROTO_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@AUTOFS_SBI_STRICTEXPIRE = common dso_local global i32 0, align 4
@AUTOFS_SBI_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.inode*, i32*, i32*, %struct.autofs_sb_info*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.inode* %1, i32* %2, i32* %3, %struct.autofs_sb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.autofs_sb_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.autofs_sb_info* %4, %struct.autofs_sb_info** %11, align 8
  %21 = load i32, i32* @MAX_OPT_ARGS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i32 -1, i32* %16, align 4
  %25 = call i32 (...) @current_uid()
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @current_gid()
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AUTOFS_MIN_PROTO_VERSION, align 4
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @AUTOFS_MAX_PROTO_VERSION, align 4
  %35 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %36 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %38 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %145, %50, %42
  %44 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %146

46:                                               ; preds = %43
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %43

51:                                               ; preds = %46
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* @tokens, align 4
  %54 = call i32 @match_token(i8* %52, i32 %53, i32* %24)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  switch i32 %55, label %144 [
    i32 137, label %56
    i32 128, label %64
    i32 136, label %80
    i32 130, label %96
    i32 132, label %104
    i32 133, label %112
    i32 134, label %120
    i32 138, label %124
    i32 131, label %128
    i32 129, label %132
    i32 135, label %138
  ]

56:                                               ; preds = %51
  %57 = call i32 @match_int(i32* %24, i32* %16)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

60:                                               ; preds = %56
  %61 = load i32, i32* %16, align 4
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %63 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %145

64:                                               ; preds = %51
  %65 = call i32 @match_int(i32* %24, i32* %15)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

68:                                               ; preds = %64
  %69 = call i32 (...) @current_user_ns()
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @make_kuid(i32 %69, i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @uid_valid(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

76:                                               ; preds = %68
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %145

80:                                               ; preds = %51
  %81 = call i32 @match_int(i32* %24, i32* %15)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

84:                                               ; preds = %80
  %85 = call i32 (...) @current_user_ns()
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @make_kgid(i32 %85, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @gid_valid(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

92:                                               ; preds = %84
  %93 = load i32, i32* %18, align 4
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %145

96:                                               ; preds = %51
  %97 = call i32 @match_int(i32* %24, i32* %15)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 1, i32* %103, align 4
  br label %145

104:                                              ; preds = %51
  %105 = call i32 @match_int(i32* %24, i32* %15)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

108:                                              ; preds = %104
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %111 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %145

112:                                              ; preds = %51
  %113 = call i32 @match_int(i32* %24, i32* %15)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

116:                                              ; preds = %112
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %119 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %145

120:                                              ; preds = %51
  %121 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %122 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %121, i32 0, i32 4
  %123 = call i32 @set_autofs_type_indirect(i32* %122)
  br label %145

124:                                              ; preds = %51
  %125 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %126 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %125, i32 0, i32 4
  %127 = call i32 @set_autofs_type_direct(i32* %126)
  br label %145

128:                                              ; preds = %51
  %129 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %130 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %129, i32 0, i32 4
  %131 = call i32 @set_autofs_type_offset(i32* %130)
  br label %145

132:                                              ; preds = %51
  %133 = load i32, i32* @AUTOFS_SBI_STRICTEXPIRE, align 4
  %134 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %135 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %145

138:                                              ; preds = %51
  %139 = load i32, i32* @AUTOFS_SBI_IGNORE, align 4
  %140 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %141 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %145

144:                                              ; preds = %51
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

145:                                              ; preds = %138, %132, %128, %124, %120, %116, %108, %100, %92, %76, %60
  br label %43

146:                                              ; preds = %43
  %147 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %148 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 0
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %152

152:                                              ; preds = %146, %144, %115, %107, %99, %91, %83, %75, %67, %59, %41
  %153 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @set_autofs_type_indirect(i32*) #2

declare dso_local i32 @set_autofs_type_direct(i32*) #2

declare dso_local i32 @set_autofs_type_offset(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
