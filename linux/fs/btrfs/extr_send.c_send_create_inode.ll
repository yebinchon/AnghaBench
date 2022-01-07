; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_create_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_send_create_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.fs_path = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"send_create_inode %llu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SEND_C_MKFILE = common dso_local global i32 0, align 4
@BTRFS_SEND_C_MKDIR = common dso_local global i32 0, align 4
@BTRFS_SEND_C_SYMLINK = common dso_local global i32 0, align 4
@BTRFS_SEND_C_MKNOD = common dso_local global i32 0, align 4
@BTRFS_SEND_C_MKFIFO = common dso_local global i32 0, align 4
@BTRFS_SEND_C_MKSOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unexpected inode type %o\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH = common dso_local global i32 0, align 4
@BTRFS_SEND_A_INO = common dso_local global i32 0, align 4
@BTRFS_SEND_A_PATH_LINK = common dso_local global i32 0, align 4
@BTRFS_SEND_A_RDEV = common dso_local global i32 0, align 4
@BTRFS_SEND_A_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32)* @send_create_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_create_inode(%struct.send_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fs_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  store %struct.btrfs_fs_info* %17, %struct.btrfs_fs_info** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @btrfs_debug(%struct.btrfs_fs_info* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call %struct.fs_path* (...) @fs_path_alloc()
  store %struct.fs_path* %21, %struct.fs_path** %8, align 8
  %22 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %23 = icmp ne %struct.fs_path* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %194

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @get_inode_info(%struct.TYPE_3__* %36, i32 %37, i32* null, i32* %10, i32* %11, i32* null, i32* null, i32* %12)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %190

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %27
  %44 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  %50 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %43, %42
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @S_ISREG(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @BTRFS_SEND_C_MKFILE, align 4
  store i32 %58, i32* %9, align 4
  br label %110

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @S_ISDIR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @BTRFS_SEND_C_MKDIR, align 4
  store i32 %64, i32* %9, align 4
  br label %109

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @S_ISLNK(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @BTRFS_SEND_C_SYMLINK, align 4
  store i32 %70, i32* %9, align 4
  br label %108

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @S_ISCHR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @S_ISBLK(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @BTRFS_SEND_C_MKNOD, align 4
  store i32 %80, i32* %9, align 4
  br label %107

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @S_ISFIFO(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @BTRFS_SEND_C_MKFIFO, align 4
  store i32 %86, i32* %9, align 4
  br label %106

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @S_ISSOCK(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @BTRFS_SEND_C_MKSOCK, align 4
  store i32 %92, i32* %9, align 4
  br label %105

93:                                               ; preds = %87
  %94 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @S_IFMT, align 4
  %101 = and i32 %99, %100
  %102 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %190

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %79
  br label %108

108:                                              ; preds = %107, %69
  br label %109

109:                                              ; preds = %108, %63
  br label %110

110:                                              ; preds = %109, %57
  %111 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @begin_cmd(%struct.send_ctx* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %190

117:                                              ; preds = %110
  %118 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %122 = call i32 @gen_unique_name(%struct.send_ctx* %118, i32 %119, i32 %120, %struct.fs_path* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %190

126:                                              ; preds = %117
  %127 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %128 = load i32, i32* @BTRFS_SEND_A_PATH, align 4
  %129 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %130 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %127, i32 %128, %struct.fs_path* %129)
  %131 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %132 = load i32, i32* @BTRFS_SEND_A_INO, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @TLV_PUT_U64(%struct.send_ctx* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = call i64 @S_ISLNK(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %126
  %139 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %140 = call i32 @fs_path_reset(%struct.fs_path* %139)
  %141 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %142 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %141, i32 0, i32 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %146 = call i32 @read_symlink(%struct.TYPE_3__* %143, i32 %144, %struct.fs_path* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %190

150:                                              ; preds = %138
  %151 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %152 = load i32, i32* @BTRFS_SEND_A_PATH_LINK, align 4
  %153 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %154 = call i32 @TLV_PUT_PATH(%struct.send_ctx* %151, i32 %152, %struct.fs_path* %153)
  br label %182

155:                                              ; preds = %126
  %156 = load i32, i32* %11, align 4
  %157 = call i64 @S_ISCHR(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = call i64 @S_ISBLK(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  %165 = call i64 @S_ISFIFO(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = call i64 @S_ISSOCK(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %167, %163, %159, %155
  %172 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %173 = load i32, i32* @BTRFS_SEND_A_RDEV, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @new_encode_dev(i32 %174)
  %176 = call i32 @TLV_PUT_U64(%struct.send_ctx* %172, i32 %173, i32 %175)
  %177 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %178 = load i32, i32* @BTRFS_SEND_A_MODE, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @TLV_PUT_U64(%struct.send_ctx* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %171, %167
  br label %182

182:                                              ; preds = %181, %150
  %183 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %184 = call i32 @send_cmd(%struct.send_ctx* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %190

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %187, %149, %125, %116, %93, %41
  %191 = load %struct.fs_path*, %struct.fs_path** %8, align 8
  %192 = call i32 @fs_path_free(%struct.fs_path* %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %24
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @btrfs_debug(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local %struct.fs_path* @fs_path_alloc(...) #1

declare dso_local i32 @get_inode_info(%struct.TYPE_3__*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @begin_cmd(%struct.send_ctx*, i32) #1

declare dso_local i32 @gen_unique_name(%struct.send_ctx*, i32, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_PATH(%struct.send_ctx*, i32, %struct.fs_path*) #1

declare dso_local i32 @TLV_PUT_U64(%struct.send_ctx*, i32, i32) #1

declare dso_local i32 @fs_path_reset(%struct.fs_path*) #1

declare dso_local i32 @read_symlink(%struct.TYPE_3__*, i32, %struct.fs_path*) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @send_cmd(%struct.send_ctx*) #1

declare dso_local i32 @fs_path_free(%struct.fs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
