; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_grow_extcache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_grow_extcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32, i32, %struct.affs_ext_key* }
%struct.affs_ext_key = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFFS_CACHE_SIZE = common dso_local global i32 0, align 4
@AFFS_LC_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @affs_grow_extcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_grow_extcache(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call i64 @get_zeroed_page(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %230

34:                                               ; preds = %25
  %35 = load i8*, i8** %12, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* @AFFS_CACHE_SIZE, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = bitcast i8* %44 to %struct.affs_ext_key*
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  store %struct.affs_ext_key* %45, %struct.affs_ext_key** %48, align 8
  br label %49

49:                                               ; preds = %34, %2
  %50 = load i32, i32* @AFFS_LC_SIZE, align 4
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %50, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %151

62:                                               ; preds = %49
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %13, align 4
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AFFS_LC_SIZE, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i32, i32* %13, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %81, %62
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %15, align 4
  %83 = ashr i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %75

84:                                               ; preds = %75
  %85 = load i32, i32* %13, align 4
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %88, %92
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %96, %100
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, %101
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %107, %111
  %113 = shl i32 1, %112
  store i32 %113, i32* %16, align 4
  store i32 1, i32* %9, align 4
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %136, %84
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @AFFS_LC_SIZE, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %115
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 5
  %123 = load %struct.affs_ext_key*, %struct.affs_ext_key** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.affs_ext_key, %struct.affs_ext_key* %123, i64 %125
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = load %struct.affs_ext_key*, %struct.affs_ext_key** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.affs_ext_key, %struct.affs_ext_key* %130, i64 %132
  %134 = bitcast %struct.affs_ext_key* %126 to i8*
  %135 = bitcast %struct.affs_ext_key* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 4, i1 false)
  br label %136

136:                                              ; preds = %119
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %115

142:                                              ; preds = %115
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.inode*, %struct.inode** %4, align 8
  %149 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 4
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %142, %49
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %152)
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  %158 = load %struct.inode*, %struct.inode** %4, align 8
  %159 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %158)
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 8
  br label %161

161:                                              ; preds = %223, %151
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %226

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.inode*, %struct.inode** %4, align 8
  %173 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %172)
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %171, i32* %176, align 4
  br label %223

177:                                              ; preds = %165
  %178 = load %struct.inode*, %struct.inode** %4, align 8
  %179 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %178)
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %11, align 4
  %187 = load %struct.inode*, %struct.inode** %4, align 8
  %188 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %211, %177
  %193 = load i32, i32* %10, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %192
  %196 = load %struct.super_block*, %struct.super_block** %6, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call %struct.buffer_head* @affs_bread(%struct.super_block* %196, i32 %197)
  store %struct.buffer_head* %198, %struct.buffer_head** %7, align 8
  %199 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %200 = icmp ne %struct.buffer_head* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  br label %227

202:                                              ; preds = %195
  %203 = load %struct.super_block*, %struct.super_block** %6, align 8
  %204 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %205 = call %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block* %203, %struct.buffer_head* %204)
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @be32_to_cpu(i32 %207)
  store i32 %208, i32* %11, align 4
  %209 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %210 = call i32 @affs_brelse(%struct.buffer_head* %209)
  br label %211

211:                                              ; preds = %202
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %10, align 4
  br label %192

214:                                              ; preds = %192
  %215 = load i32, i32* %11, align 4
  %216 = load %struct.inode*, %struct.inode** %4, align 8
  %217 = call %struct.TYPE_4__* @AFFS_I(%struct.inode* %216)
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %215, i32* %222, align 4
  br label %223

223:                                              ; preds = %214, %168
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  br label %161

226:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %230

227:                                              ; preds = %201
  %228 = load i32, i32* @EIO, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %227, %226, %31
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_4__* @AFFS_I(%struct.inode*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
