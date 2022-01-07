; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_decode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_decode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i64 }
%struct.vfsmount = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.export_operations* }
%struct.export_operations = type { %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)* }
%struct.fid = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @exportfs_decode_fh(%struct.vfsmount* %0, %struct.fid* %1, i32 %2, i32 %3, i32 (i8*, %struct.dentry*)* %4, i8* %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca %struct.fid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, %struct.dentry*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.export_operations*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dentry*, align 8
  %22 = alloca %struct.dentry*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %8, align 8
  store %struct.fid* %1, %struct.fid** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 (i8*, %struct.dentry*)* %4, i32 (i8*, %struct.dentry*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %23 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %24 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.export_operations*, %struct.export_operations** %26, align 8
  store %struct.export_operations* %27, %struct.export_operations** %14, align 8
  %28 = load i32, i32* @NAME_MAX, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %34 = icmp ne %struct.export_operations* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %37 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %36, i32 0, i32 1
  %38 = load %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)** %37, align 8
  %39 = icmp ne %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35, %6
  %41 = load i32, i32* @ESTALE, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.dentry* @ERR_PTR(i32 %42)
  store %struct.dentry* %43, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

44:                                               ; preds = %35
  %45 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %46 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %45, i32 0, i32 1
  %47 = load %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)** %46, align 8
  %48 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %49 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.fid*, %struct.fid** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.dentry* %47(%struct.TYPE_3__* %50, %struct.fid* %51, i32 %52, i32 %53)
  store %struct.dentry* %54, %struct.dentry** %15, align 8
  %55 = load %struct.dentry*, %struct.dentry** %15, align 8
  %56 = call i32 @PTR_ERR(%struct.dentry* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.dentry*, %struct.dentry** %15, align 8
  %62 = call %struct.dentry* @ERR_CAST(%struct.dentry* %61)
  store %struct.dentry* %62, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

63:                                               ; preds = %44
  %64 = load %struct.dentry*, %struct.dentry** %15, align 8
  %65 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @ESTALE, align 4
  %69 = sub nsw i32 0, %68
  %70 = call %struct.dentry* @ERR_PTR(i32 %69)
  store %struct.dentry* %70, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

71:                                               ; preds = %63
  %72 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %73 = icmp ne i32 (i8*, %struct.dentry*)* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %75, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

76:                                               ; preds = %71
  %77 = load %struct.dentry*, %struct.dentry** %15, align 8
  %78 = call i64 @d_is_dir(%struct.dentry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load %struct.dentry*, %struct.dentry** %15, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %89 = load %struct.dentry*, %struct.dentry** %15, align 8
  %90 = call i32 @reconnect_path(%struct.vfsmount* %88, %struct.dentry* %89, i8* %32)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %203

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %80
  %96 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.dentry*, %struct.dentry** %15, align 8
  %99 = call i32 %96(i8* %97, %struct.dentry* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @EACCES, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %19, align 4
  br label %203

104:                                              ; preds = %95
  %105 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %105, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

106:                                              ; preds = %76
  %107 = load %struct.dentry*, %struct.dentry** %15, align 8
  %108 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call %struct.dentry* @find_acceptable_alias(%struct.dentry* %107, i32 (i8*, %struct.dentry*)* %108, i8* %109)
  store %struct.dentry* %110, %struct.dentry** %16, align 8
  %111 = load %struct.dentry*, %struct.dentry** %16, align 8
  %112 = icmp ne %struct.dentry* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %114, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

115:                                              ; preds = %106
  %116 = load i32, i32* @ESTALE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %19, align 4
  %118 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %119 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %118, i32 0, i32 0
  %120 = load %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)** %119, align 8
  %121 = icmp ne %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %203

123:                                              ; preds = %115
  %124 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  %125 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %124, i32 0, i32 0
  %126 = load %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)*, %struct.dentry* (%struct.TYPE_3__*, %struct.fid*, i32, i32)** %125, align 8
  %127 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %128 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load %struct.fid*, %struct.fid** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call %struct.dentry* %126(%struct.TYPE_3__* %129, %struct.fid* %130, i32 %131, i32 %132)
  store %struct.dentry* %133, %struct.dentry** %21, align 8
  %134 = load %struct.dentry*, %struct.dentry** %21, align 8
  %135 = icmp ne %struct.dentry* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %123
  br label %203

137:                                              ; preds = %123
  %138 = load %struct.dentry*, %struct.dentry** %21, align 8
  %139 = call i32 @PTR_ERR(%struct.dentry* %138)
  store i32 %139, i32* %19, align 4
  %140 = load %struct.dentry*, %struct.dentry** %21, align 8
  %141 = call i64 @IS_ERR(%struct.dentry* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %203

144:                                              ; preds = %137
  %145 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %146 = load %struct.dentry*, %struct.dentry** %21, align 8
  %147 = call i32 @reconnect_path(%struct.vfsmount* %145, %struct.dentry* %146, i8* %32)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load %struct.dentry*, %struct.dentry** %21, align 8
  %152 = call i32 @dput(%struct.dentry* %151)
  br label %203

153:                                              ; preds = %144
  %154 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %155 = load %struct.dentry*, %struct.dentry** %21, align 8
  %156 = load %struct.dentry*, %struct.dentry** %15, align 8
  %157 = call i32 @exportfs_get_name(%struct.vfsmount* %154, %struct.dentry* %155, i8* %32, %struct.dentry* %156)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %189, label %160

160:                                              ; preds = %153
  %161 = load %struct.dentry*, %struct.dentry** %21, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @inode_lock(i64 %163)
  %165 = load %struct.dentry*, %struct.dentry** %21, align 8
  %166 = call i32 @strlen(i8* %32)
  %167 = call %struct.dentry* @lookup_one_len(i8* %32, %struct.dentry* %165, i32 %166)
  store %struct.dentry* %167, %struct.dentry** %22, align 8
  %168 = load %struct.dentry*, %struct.dentry** %21, align 8
  %169 = getelementptr inbounds %struct.dentry, %struct.dentry* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @inode_unlock(i64 %170)
  %172 = load %struct.dentry*, %struct.dentry** %22, align 8
  %173 = call i64 @IS_ERR(%struct.dentry* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %188, label %175

175:                                              ; preds = %160
  %176 = load %struct.dentry*, %struct.dentry** %22, align 8
  %177 = getelementptr inbounds %struct.dentry, %struct.dentry* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.dentry*, %struct.dentry** %15, align 8
  %182 = call i32 @dput(%struct.dentry* %181)
  %183 = load %struct.dentry*, %struct.dentry** %22, align 8
  store %struct.dentry* %183, %struct.dentry** %15, align 8
  br label %187

184:                                              ; preds = %175
  %185 = load %struct.dentry*, %struct.dentry** %22, align 8
  %186 = call i32 @dput(%struct.dentry* %185)
  br label %187

187:                                              ; preds = %184, %180
  br label %188

188:                                              ; preds = %187, %160
  br label %189

189:                                              ; preds = %188, %153
  %190 = load %struct.dentry*, %struct.dentry** %21, align 8
  %191 = call i32 @dput(%struct.dentry* %190)
  %192 = load %struct.dentry*, %struct.dentry** %15, align 8
  %193 = load i32 (i8*, %struct.dentry*)*, i32 (i8*, %struct.dentry*)** %12, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = call %struct.dentry* @find_acceptable_alias(%struct.dentry* %192, i32 (i8*, %struct.dentry*)* %193, i8* %194)
  store %struct.dentry* %195, %struct.dentry** %16, align 8
  %196 = load %struct.dentry*, %struct.dentry** %16, align 8
  %197 = icmp ne %struct.dentry* %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %189
  %199 = load i32, i32* @EACCES, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %19, align 4
  br label %203

201:                                              ; preds = %189
  %202 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %202, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

203:                                              ; preds = %198, %150, %143, %136, %122, %101, %93
  %204 = load %struct.dentry*, %struct.dentry** %15, align 8
  %205 = call i32 @dput(%struct.dentry* %204)
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp ne i32 %206, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load i32, i32* @ESTALE, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %19, align 4
  br label %213

213:                                              ; preds = %210, %203
  %214 = load i32, i32* %19, align 4
  %215 = call %struct.dentry* @ERR_PTR(i32 %214)
  store %struct.dentry* %215, %struct.dentry** %7, align 8
  store i32 1, i32* %20, align 4
  br label %216

216:                                              ; preds = %213, %201, %113, %104, %74, %67, %60, %40
  %217 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

declare dso_local i32 @PTR_ERR(%struct.dentry*) #2

declare dso_local %struct.dentry* @ERR_CAST(%struct.dentry*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #2

declare dso_local i64 @d_is_dir(%struct.dentry*) #2

declare dso_local i32 @reconnect_path(%struct.vfsmount*, %struct.dentry*, i8*) #2

declare dso_local %struct.dentry* @find_acceptable_alias(%struct.dentry*, i32 (i8*, %struct.dentry*)*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.dentry*) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local i32 @exportfs_get_name(%struct.vfsmount*, %struct.dentry*, i8*, %struct.dentry*) #2

declare dso_local i32 @inode_lock(i64) #2

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @inode_unlock(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
