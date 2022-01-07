; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_fid_lookup_with_uid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_fid_lookup_with_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.TYPE_3__ = type { i8* }
%struct.v9fs_session_info = type { i32, i8*, i32, i32, i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@V9FS_ACCESS_SINGLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P9_MAXWELEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_fid* (%struct.dentry*, i32, i32)* @v9fs_fid_lookup_with_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_fid* @v9fs_fid_lookup_with_uid(%struct.dentry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.v9fs_session_info*, align 8
  %17 = alloca %struct.p9_fid*, align 8
  %18 = alloca %struct.p9_fid*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %19)
  store %struct.v9fs_session_info* %20, %struct.v9fs_session_info** %16, align 8
  %21 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %22 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.p9_fid* @v9fs_fid_find(%struct.dentry* %26, i32 %27, i32 %28)
  store %struct.p9_fid* %29, %struct.p9_fid** %17, align 8
  %30 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %31 = icmp ne %struct.p9_fid* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %33, %struct.p9_fid** %4, align 8
  br label %206

34:                                               ; preds = %3
  %35 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %36 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %35, i32 0, i32 2
  %37 = call i32 @down_read(i32* %36)
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 3
  %40 = load %struct.dentry*, %struct.dentry** %39, align 8
  store %struct.dentry* %40, %struct.dentry** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.p9_fid* @v9fs_fid_find(%struct.dentry* %41, i32 %42, i32 %43)
  store %struct.p9_fid* %44, %struct.p9_fid** %17, align 8
  %45 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %46 = icmp ne %struct.p9_fid* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %48, i32 1, i8** %51, i32 1)
  store %struct.p9_fid* %52, %struct.p9_fid** %17, align 8
  br label %172

53:                                               ; preds = %34
  %54 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %55 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %54, i32 0, i32 2
  %56 = call i32 @up_read(i32* %55)
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.dentry*, %struct.dentry** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.p9_fid* @v9fs_fid_find(%struct.dentry* %61, i32 %62, i32 %63)
  store %struct.p9_fid* %64, %struct.p9_fid** %17, align 8
  %65 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %66 = icmp ne %struct.p9_fid* %65, null
  br i1 %66, label %111, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @V9FS_ACCESS_SINGLE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.p9_fid* @ERR_PTR(i32 %73)
  store %struct.p9_fid* %74, %struct.p9_fid** %4, align 8
  br label %206

75:                                               ; preds = %67
  %76 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %77 = call i64 @v9fs_proto_dotu(%struct.v9fs_session_info* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %81 = call i64 @v9fs_proto_dotl(%struct.v9fs_session_info* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %75
  store i8* null, i8** %10, align 8
  br label %88

84:                                               ; preds = %79
  %85 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %86 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %84, %83
  %89 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %90 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %95 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.p9_fid* @p9_client_attach(i32 %91, i32* null, i8* %92, i32 %93, i32 %96)
  store %struct.p9_fid* %97, %struct.p9_fid** %17, align 8
  %98 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %99 = call i64 @IS_ERR(%struct.p9_fid* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %102, %struct.p9_fid** %4, align 8
  br label %206

103:                                              ; preds = %88
  %104 = load %struct.dentry*, %struct.dentry** %5, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.dentry*, %struct.dentry** %107, align 8
  %109 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %110 = call i32 @v9fs_fid_add(%struct.dentry* %108, %struct.p9_fid* %109)
  br label %111

111:                                              ; preds = %103, %53
  %112 = load %struct.dentry*, %struct.dentry** %5, align 8
  %113 = getelementptr inbounds %struct.dentry, %struct.dentry* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.dentry*, %struct.dentry** %115, align 8
  %117 = load %struct.dentry*, %struct.dentry** %5, align 8
  %118 = icmp eq %struct.dentry* %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %120, %struct.p9_fid** %4, align 8
  br label %206

121:                                              ; preds = %111
  %122 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %123 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %122, i32 0, i32 2
  %124 = call i32 @down_read(i32* %123)
  %125 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %126 = load %struct.dentry*, %struct.dentry** %5, align 8
  %127 = call i32 @build_path_from_dentry(%struct.v9fs_session_info* %125, %struct.dentry* %126, i8*** %9)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* %12, align 4
  %132 = call %struct.p9_fid* @ERR_PTR(i32 %131)
  store %struct.p9_fid* %132, %struct.p9_fid** %17, align 8
  br label %201

133:                                              ; preds = %121
  store i32 1, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %164, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %169

138:                                              ; preds = %134
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* @P9_MAXWELEM, align 4
  %143 = call i32 @min(i32 %141, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %145 = load i32, i32* %13, align 4
  %146 = load i8**, i8*** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i32, i32* %14, align 4
  %151 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %144, i32 %145, i8** %149, i32 %150)
  store %struct.p9_fid* %151, %struct.p9_fid** %17, align 8
  %152 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %153 = call i64 @IS_ERR(%struct.p9_fid* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %138
  %156 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %157 = icmp ne %struct.p9_fid* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %160 = call i32 @p9_client_clunk(%struct.p9_fid* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i8**, i8*** %9, align 8
  %163 = call i32 @kfree(i8** %162)
  br label %201

164:                                              ; preds = %138
  %165 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %165, %struct.p9_fid** %18, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %134

169:                                              ; preds = %134
  %170 = load i8**, i8*** %9, align 8
  %171 = call i32 @kfree(i8** %170)
  br label %172

172:                                              ; preds = %169, %47
  %173 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %174 = call i64 @IS_ERR(%struct.p9_fid* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %200, label %176

176:                                              ; preds = %172
  %177 = load %struct.dentry*, %struct.dentry** %5, align 8
  %178 = getelementptr inbounds %struct.dentry, %struct.dentry* %177, i32 0, i32 0
  %179 = call i32 @spin_lock(i32* %178)
  %180 = load %struct.dentry*, %struct.dentry** %5, align 8
  %181 = call i64 @d_unhashed(%struct.dentry* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %176
  %184 = load %struct.dentry*, %struct.dentry** %5, align 8
  %185 = getelementptr inbounds %struct.dentry, %struct.dentry* %184, i32 0, i32 0
  %186 = call i32 @spin_unlock(i32* %185)
  %187 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %188 = call i32 @p9_client_clunk(%struct.p9_fid* %187)
  %189 = load i32, i32* @ENOENT, align 4
  %190 = sub nsw i32 0, %189
  %191 = call %struct.p9_fid* @ERR_PTR(i32 %190)
  store %struct.p9_fid* %191, %struct.p9_fid** %17, align 8
  br label %199

192:                                              ; preds = %176
  %193 = load %struct.dentry*, %struct.dentry** %5, align 8
  %194 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %195 = call i32 @__add_fid(%struct.dentry* %193, %struct.p9_fid* %194)
  %196 = load %struct.dentry*, %struct.dentry** %5, align 8
  %197 = getelementptr inbounds %struct.dentry, %struct.dentry* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock(i32* %197)
  br label %199

199:                                              ; preds = %192, %183
  br label %200

200:                                              ; preds = %199, %172
  br label %201

201:                                              ; preds = %200, %161, %130
  %202 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %16, align 8
  %203 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %202, i32 0, i32 2
  %204 = call i32 @up_read(i32* %203)
  %205 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %205, %struct.p9_fid** %4, align 8
  br label %206

206:                                              ; preds = %201, %119, %101, %71, %32
  %207 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  ret %struct.p9_fid* %207
}

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_find(%struct.dentry*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

declare dso_local i64 @v9fs_proto_dotu(%struct.v9fs_session_info*) #1

declare dso_local i64 @v9fs_proto_dotl(%struct.v9fs_session_info*) #1

declare dso_local %struct.p9_fid* @p9_client_attach(i32, i32*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @build_path_from_dentry(%struct.v9fs_session_info*, %struct.dentry*, i8***) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__add_fid(%struct.dentry*, %struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
