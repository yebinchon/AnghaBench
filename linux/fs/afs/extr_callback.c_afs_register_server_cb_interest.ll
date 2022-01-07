; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_callback.c_afs_register_server_cb_interest.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_callback.c_afs_register_server_cb_interest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_5__, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.afs_server_list = type { i32, %struct.afs_server_entry* }
%struct.afs_server_entry = type { %struct.afs_cb_interest*, %struct.afs_server* }
%struct.afs_cb_interest = type { %struct.afs_server* }
%struct.afs_server = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AFS_VNODE_CB_PROMISED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_register_server_cb_interest(%struct.afs_vnode* %0, %struct.afs_server_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.afs_server_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_server_entry*, align 8
  %9 = alloca %struct.afs_cb_interest*, align 8
  %10 = alloca %struct.afs_cb_interest*, align 8
  %11 = alloca %struct.afs_cb_interest*, align 8
  %12 = alloca %struct.afs_cb_interest*, align 8
  %13 = alloca %struct.afs_server*, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.afs_server_list* %1, %struct.afs_server_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %15 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %14, i32 0, i32 1
  %16 = load %struct.afs_server_entry*, %struct.afs_server_entry** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %16, i64 %18
  store %struct.afs_server_entry* %19, %struct.afs_server_entry** %8, align 8
  %20 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %21 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %20, i32 0, i32 1
  %22 = load %struct.afs_server*, %struct.afs_server** %21, align 8
  store %struct.afs_server* %22, %struct.afs_server** %13, align 8
  br label %23

23:                                               ; preds = %118, %3
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 6
  %29 = call i32 @lockdep_is_held(i32* %28)
  %30 = call %struct.afs_cb_interest* @rcu_dereference_protected(i32 %26, i32 %29)
  store %struct.afs_cb_interest* %30, %struct.afs_cb_interest** %10, align 8
  %31 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %10, align 8
  %32 = icmp ne %struct.afs_cb_interest* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %23
  %34 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %10, align 8
  %35 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %36 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %35, i32 0, i32 0
  %37 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %36, align 8
  %38 = icmp eq %struct.afs_cb_interest* %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %219

43:                                               ; preds = %33, %23
  %44 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %45 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %44, i32 0, i32 0
  %46 = call i32 @read_lock(i32* %45)
  %47 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %48 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %47, i32 0, i32 0
  %49 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %48, align 8
  %50 = call i8* @afs_get_cb_interest(%struct.afs_cb_interest* %49)
  %51 = bitcast i8* %50 to %struct.afs_cb_interest*
  store %struct.afs_cb_interest* %51, %struct.afs_cb_interest** %9, align 8
  %52 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %53 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %52, i32 0, i32 0
  %54 = call i32 @read_unlock(i32* %53)
  %55 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %10, align 8
  %56 = icmp ne %struct.afs_cb_interest* %55, null
  br i1 %56, label %57, label %134

57:                                               ; preds = %43
  %58 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %10, align 8
  %59 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %60 = icmp eq %struct.afs_cb_interest* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %63 = call i32 @afs_v2net(%struct.afs_vnode* %62)
  %64 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %65 = call i32 @afs_put_cb_interest(i32 %63, %struct.afs_cb_interest* %64)
  store i32 0, i32* %4, align 4
  br label %219

66:                                               ; preds = %57
  %67 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %68 = icmp ne %struct.afs_cb_interest* %67, null
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %10, align 8
  %71 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %70, i32 0, i32 0
  %72 = load %struct.afs_server*, %struct.afs_server** %71, align 8
  %73 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %74 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %73, i32 0, i32 0
  %75 = load %struct.afs_server*, %struct.afs_server** %74, align 8
  %76 = icmp eq %struct.afs_server* %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %79 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %78, i32 0, i32 0
  %80 = call i32 @write_seqlock(%struct.TYPE_5__* %79)
  %81 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %82 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %85 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @lockdep_is_held(i32* %86)
  %88 = call %struct.afs_cb_interest* @rcu_dereference_protected(i32 %83, i32 %87)
  store %struct.afs_cb_interest* %88, %struct.afs_cb_interest** %12, align 8
  %89 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %90 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %93 = call i32 @rcu_assign_pointer(i32 %91, %struct.afs_cb_interest* %92)
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %95 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %94, i32 0, i32 0
  %96 = call i32 @write_sequnlock(%struct.TYPE_5__* %95)
  %97 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %98 = call i32 @afs_v2net(%struct.afs_vnode* %97)
  %99 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %12, align 8
  %100 = call i32 @afs_put_cb_interest(i32 %98, %struct.afs_cb_interest* %99)
  store i32 0, i32* %4, align 4
  br label %219

101:                                              ; preds = %69, %66
  %102 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %103 = icmp ne %struct.afs_cb_interest* %102, null
  br i1 %103, label %133, label %104

104:                                              ; preds = %101
  %105 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %10, align 8
  %106 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %105, i32 0, i32 0
  %107 = load %struct.afs_server*, %struct.afs_server** %106, align 8
  %108 = load %struct.afs_server*, %struct.afs_server** %13, align 8
  %109 = icmp eq %struct.afs_server* %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %104
  %111 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %112 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %111, i32 0, i32 0
  %113 = call i32 @write_lock(i32* %112)
  %114 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %115 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %114, i32 0, i32 0
  %116 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %115, align 8
  %117 = icmp ne %struct.afs_cb_interest* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %120 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %119, i32 0, i32 0
  %121 = call i32 @write_unlock(i32* %120)
  %122 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %123 = call i32 @afs_v2net(%struct.afs_vnode* %122)
  %124 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %125 = call i32 @afs_put_cb_interest(i32 %123, %struct.afs_cb_interest* %124)
  br label %23

126:                                              ; preds = %110
  %127 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %128 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %129 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %128, i32 0, i32 0
  store %struct.afs_cb_interest* %127, %struct.afs_cb_interest** %129, align 8
  %130 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %131 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %130, i32 0, i32 0
  %132 = call i32 @write_unlock(i32* %131)
  store i32 0, i32* %4, align 4
  br label %219

133:                                              ; preds = %104, %101
  br label %134

134:                                              ; preds = %133, %43
  %135 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %136 = icmp ne %struct.afs_cb_interest* %135, null
  br i1 %136, label %175, label %137

137:                                              ; preds = %134
  %138 = load %struct.afs_server*, %struct.afs_server** %13, align 8
  %139 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %140 = call %struct.afs_cb_interest* @afs_create_interest(%struct.afs_server* %138, %struct.afs_vnode* %139)
  store %struct.afs_cb_interest* %140, %struct.afs_cb_interest** %11, align 8
  %141 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %11, align 8
  %142 = icmp ne %struct.afs_cb_interest* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %219

146:                                              ; preds = %137
  %147 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %148 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %147, i32 0, i32 0
  %149 = call i32 @write_lock(i32* %148)
  %150 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %151 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %150, i32 0, i32 0
  %152 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %151, align 8
  %153 = icmp ne %struct.afs_cb_interest* %152, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %146
  %155 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %11, align 8
  %156 = call i8* @afs_get_cb_interest(%struct.afs_cb_interest* %155)
  %157 = bitcast i8* %156 to %struct.afs_cb_interest*
  %158 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %159 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %158, i32 0, i32 0
  store %struct.afs_cb_interest* %157, %struct.afs_cb_interest** %159, align 8
  %160 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %11, align 8
  store %struct.afs_cb_interest* %160, %struct.afs_cb_interest** %9, align 8
  store %struct.afs_cb_interest* null, %struct.afs_cb_interest** %11, align 8
  br label %167

161:                                              ; preds = %146
  %162 = load %struct.afs_server_entry*, %struct.afs_server_entry** %8, align 8
  %163 = getelementptr inbounds %struct.afs_server_entry, %struct.afs_server_entry* %162, i32 0, i32 0
  %164 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %163, align 8
  %165 = call i8* @afs_get_cb_interest(%struct.afs_cb_interest* %164)
  %166 = bitcast i8* %165 to %struct.afs_cb_interest*
  store %struct.afs_cb_interest* %166, %struct.afs_cb_interest** %9, align 8
  br label %167

167:                                              ; preds = %161, %154
  %168 = load %struct.afs_server_list*, %struct.afs_server_list** %6, align 8
  %169 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %168, i32 0, i32 0
  %170 = call i32 @write_unlock(i32* %169)
  %171 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %172 = call i32 @afs_v2net(%struct.afs_vnode* %171)
  %173 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %11, align 8
  %174 = call i32 @afs_put_cb_interest(i32 %172, %struct.afs_cb_interest* %173)
  br label %175

175:                                              ; preds = %167, %134
  %176 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %177 = call i32 @ASSERT(%struct.afs_cb_interest* %176)
  %178 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %179 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %178, i32 0, i32 0
  %180 = call i32 @write_seqlock(%struct.TYPE_5__* %179)
  %181 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %182 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %185 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = call i32 @lockdep_is_held(i32* %186)
  %188 = call %struct.afs_cb_interest* @rcu_dereference_protected(i32 %183, i32 %187)
  store %struct.afs_cb_interest* %188, %struct.afs_cb_interest** %12, align 8
  %189 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %190 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %193 = call i32 @rcu_assign_pointer(i32 %191, %struct.afs_cb_interest* %192)
  %194 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %9, align 8
  %195 = getelementptr inbounds %struct.afs_cb_interest, %struct.afs_cb_interest* %194, i32 0, i32 0
  %196 = load %struct.afs_server*, %struct.afs_server** %195, align 8
  %197 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %200 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  %201 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %202 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %201, i32 0, i32 2
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %207 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* @AFS_VNODE_CB_PROMISED, align 4
  %209 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %210 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %209, i32 0, i32 1
  %211 = call i32 @clear_bit(i32 %208, i32* %210)
  %212 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %213 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %212, i32 0, i32 0
  %214 = call i32 @write_sequnlock(%struct.TYPE_5__* %213)
  %215 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %216 = call i32 @afs_v2net(%struct.afs_vnode* %215)
  %217 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %12, align 8
  %218 = call i32 @afs_put_cb_interest(i32 %216, %struct.afs_cb_interest* %217)
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %175, %143, %126, %77, %61, %42
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local %struct.afs_cb_interest* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i8* @afs_get_cb_interest(%struct.afs_cb_interest*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @afs_put_cb_interest(i32, %struct.afs_cb_interest*) #1

declare dso_local i32 @afs_v2net(%struct.afs_vnode*) #1

declare dso_local i32 @write_seqlock(%struct.TYPE_5__*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.afs_cb_interest*) #1

declare dso_local i32 @write_sequnlock(%struct.TYPE_5__*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local %struct.afs_cb_interest* @afs_create_interest(%struct.afs_server*, %struct.afs_vnode*) #1

declare dso_local i32 @ASSERT(%struct.afs_cb_interest*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
