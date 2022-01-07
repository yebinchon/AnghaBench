; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8*, i64, i32, i64, i64 }
%struct.dir_context = type { i64 }
%struct.cifs_tcon = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8*, %struct.TYPE_8__*)* }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"initiate cifs search rc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"End of search, empty dir\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fce error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"entry %lld found\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"could not find entry\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"loop through %d times filling dir for net buf %p\0A\00", align 1
@UNICODE_NAME_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"past SMB end,  num to fill %d i %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"last entry in buf at pos %lld %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %9, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = call i32 (...) @get_xid()
  store i32 %15, i32* %6, align 4
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %19 = icmp eq %struct.cifsFileInfo* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = call i32 @initiate_cifs_search(i32 %21, %struct.file* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @FYI, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %195

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %34 = call i32 @dir_emit_dots(%struct.file* %32, %struct.dir_context* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %195

37:                                               ; preds = %31
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %39, align 8
  store %struct.cifsFileInfo* %40, %struct.cifsFileInfo** %9, align 8
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %42 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %48 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @FYI, align 4
  %54 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %195

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %58 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.cifs_tcon* @tlink_tcon(i32 %59)
  store %struct.cifs_tcon* %60, %struct.cifs_tcon** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %63 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %64 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.file*, %struct.file** %3, align 8
  %67 = call i32 @find_cifs_entry(i32 %61, %struct.cifs_tcon* %62, i64 %65, %struct.file* %66, i8** %10, i32* %11)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load i32, i32* @FYI, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %195

74:                                               ; preds = %56
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* @FYI, align 4
  %79 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %80 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  br label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @FYI, align 4
  %85 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %195

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* @FYI, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %91 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %89, i8* %93)
  %95 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %96 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32 (i8*, %struct.TYPE_8__*)*, i32 (i8*, %struct.TYPE_8__*)** %102, align 8
  %104 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %105 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %109 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 %103(i8* %107, %struct.TYPE_8__* %112)
  store i32 %113, i32* %14, align 4
  %114 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %115 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %13, align 8
  %121 = load i32, i32* @UNICODE_NAME_MAX, align 4
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kmalloc(i32 %121, i32 %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %87
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %195

129:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %189, %129
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %192

134:                                              ; preds = %130
  %135 = load i8*, i8** %10, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32, i32* @VFS, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %139, i32 %140)
  br label %192

142:                                              ; preds = %134
  %143 = load i8*, i8** %12, align 8
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.file*, %struct.file** %3, align 8
  %146 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @cifs_filldir(i8* %144, %struct.file* %145, %struct.dir_context* %146, i8* %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load i32, i32* %5, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %152
  br label %192

157:                                              ; preds = %142
  %158 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %159 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %159, align 8
  %162 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %163 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %166 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %164, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %157
  %171 = load i32, i32* @FYI, align 4
  %172 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %173 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %174, i8* %175)
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %179 = call i32 @cifs_save_resume_key(i8* %177, %struct.cifsFileInfo* %178)
  br label %192

180:                                              ; preds = %157
  %181 = load i8*, i8** %10, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %184 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @nxt_dir_entry(i8* %181, i8* %182, i32 %186)
  store i8* %187, i8** %10, align 8
  br label %188

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %130

192:                                              ; preds = %170, %156, %137, %130
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 @kfree(i8* %193)
  br label %195

195:                                              ; preds = %192, %126, %83, %70, %52, %36, %29
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @free_xid(i32 %196)
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @initiate_cifs_search(i32, %struct.file*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @find_cifs_entry(i32, %struct.cifs_tcon*, i64, %struct.file*, i8**, i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @cifs_filldir(i8*, %struct.file*, %struct.dir_context*, i8*, i32) #1

declare dso_local i32 @cifs_save_resume_key(i8*, %struct.cifsFileInfo*) #1

declare dso_local i8* @nxt_dir_entry(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
