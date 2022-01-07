; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_inode.c_v9fs_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v9fs_session_info = type { i32 }
%struct.inode = type { i32*, i32*, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@v9fs_addr_operations = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@v9fs_file_inode_operations_dotl = common dso_local global i32 0, align 4
@v9fs_file_inode_operations = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"special files without extended mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CACHE_LOOSE = common dso_local global i32 0, align 4
@CACHE_FSCACHE = common dso_local global i32 0, align 4
@v9fs_cached_file_operations_dotl = common dso_local global i32 0, align 4
@CACHE_MMAP = common dso_local global i32 0, align 4
@v9fs_mmap_file_operations_dotl = common dso_local global i32 0, align 4
@v9fs_file_operations_dotl = common dso_local global i32 0, align 4
@v9fs_cached_file_operations = common dso_local global i32 0, align 4
@v9fs_mmap_file_operations = common dso_local global i32 0, align 4
@v9fs_file_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"extended modes used with legacy protocol\0A\00", align 1
@v9fs_symlink_inode_operations_dotl = common dso_local global i32 0, align 4
@v9fs_symlink_inode_operations = common dso_local global i32 0, align 4
@v9fs_dir_inode_operations_dotl = common dso_local global i32 0, align 4
@v9fs_dir_inode_operations_dotu = common dso_local global i32 0, align 4
@v9fs_dir_inode_operations = common dso_local global i32 0, align 4
@v9fs_dir_operations_dotl = common dso_local global i32 0, align 4
@v9fs_dir_operations = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"BAD mode 0x%hx S_IFMT 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_init_inode(%struct.v9fs_session_info* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v9fs_session_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @inode_init_owner(%struct.inode* %10, i32* null, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @current_time(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 6
  store i32 %19, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 7
  store i32 %19, i32* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* @v9fs_addr_operations, i32** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @S_IFMT, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %184 [
    i32 131, label %33
    i32 134, label %33
    i32 133, label %33
    i32 128, label %33
    i32 129, label %62
    i32 130, label %129
    i32 132, label %153
  ]

33:                                               ; preds = %4, %4, %4, %4
  %34 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %35 = call i32 @v9fs_proto_dotl(%struct.v9fs_session_info* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  store i32* @v9fs_file_inode_operations_dotl, i32** %39, align 8
  br label %53

40:                                               ; preds = %33
  %41 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %42 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i32* @v9fs_file_inode_operations, i32** %46, align 8
  br label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %49 = call i32 (i32, i8*, ...) @p9_debug(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %194

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @init_special_inode(%struct.inode* %54, i32 %57, i32 %60)
  br label %193

62:                                               ; preds = %4
  %63 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %64 = call i32 @v9fs_proto_dotl(%struct.v9fs_session_info* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %62
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  store i32* @v9fs_file_inode_operations_dotl, i32** %68, align 8
  %69 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %70 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CACHE_LOOSE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %76 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CACHE_FSCACHE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %66
  %81 = load %struct.inode*, %struct.inode** %6, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  store i32* @v9fs_cached_file_operations_dotl, i32** %82, align 8
  br label %96

83:                                               ; preds = %74
  %84 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %85 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CACHE_MMAP, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  store i32* @v9fs_mmap_file_operations_dotl, i32** %91, align 8
  br label %95

92:                                               ; preds = %83
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  store i32* @v9fs_file_operations_dotl, i32** %94, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %80
  br label %128

97:                                               ; preds = %62
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  store i32* @v9fs_file_inode_operations, i32** %99, align 8
  %100 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %101 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CACHE_LOOSE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %97
  %106 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %107 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CACHE_FSCACHE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105, %97
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  store i32* @v9fs_cached_file_operations, i32** %113, align 8
  br label %127

114:                                              ; preds = %105
  %115 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %116 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CACHE_MMAP, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  store i32* @v9fs_mmap_file_operations, i32** %122, align 8
  br label %126

123:                                              ; preds = %114
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  store i32* @v9fs_file_operations, i32** %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %96
  br label %193

129:                                              ; preds = %4
  %130 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %131 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  %134 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %135 = call i32 @v9fs_proto_dotl(%struct.v9fs_session_info* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %139 = call i32 (i32, i8*, ...) @p9_debug(i32 %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  br label %194

142:                                              ; preds = %133, %129
  %143 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %144 = call i32 @v9fs_proto_dotl(%struct.v9fs_session_info* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  store i32* @v9fs_symlink_inode_operations_dotl, i32** %148, align 8
  br label %152

149:                                              ; preds = %142
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  store i32* @v9fs_symlink_inode_operations, i32** %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  br label %193

153:                                              ; preds = %4
  %154 = load %struct.inode*, %struct.inode** %6, align 8
  %155 = call i32 @inc_nlink(%struct.inode* %154)
  %156 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %157 = call i32 @v9fs_proto_dotl(%struct.v9fs_session_info* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load %struct.inode*, %struct.inode** %6, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 1
  store i32* @v9fs_dir_inode_operations_dotl, i32** %161, align 8
  br label %173

162:                                              ; preds = %153
  %163 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %164 = call i32 @v9fs_proto_dotu(%struct.v9fs_session_info* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.inode*, %struct.inode** %6, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 1
  store i32* @v9fs_dir_inode_operations_dotu, i32** %168, align 8
  br label %172

169:                                              ; preds = %162
  %170 = load %struct.inode*, %struct.inode** %6, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 1
  store i32* @v9fs_dir_inode_operations, i32** %171, align 8
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  %175 = call i32 @v9fs_proto_dotl(%struct.v9fs_session_info* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.inode*, %struct.inode** %6, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 0
  store i32* @v9fs_dir_operations_dotl, i32** %179, align 8
  br label %183

180:                                              ; preds = %173
  %181 = load %struct.inode*, %struct.inode** %6, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 0
  store i32* @v9fs_dir_operations, i32** %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  br label %193

184:                                              ; preds = %4
  %185 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @S_IFMT, align 4
  %189 = and i32 %187, %188
  %190 = call i32 (i32, i8*, ...) @p9_debug(i32 %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %186, i32 %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %9, align 4
  br label %194

193:                                              ; preds = %183, %152, %128, %53
  br label %194

194:                                              ; preds = %193, %184, %137, %47
  %195 = load i32, i32* %9, align 4
  ret i32 %195
}

declare dso_local i32 @inode_init_owner(%struct.inode*, i32*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
