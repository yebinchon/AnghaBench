; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server_list.c_afs_alloc_server_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server_list.c_afs_alloc_server_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server_list = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.afs_server* }
%struct.afs_server = type { i32 }
%struct.afs_cell = type { i32 }
%struct.key = type { i32 }
%struct.afs_vldb_entry = type { i32, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@servers = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@afs_server_trace_put_slist_isort = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_server_list* @afs_alloc_server_list(%struct.afs_cell* %0, %struct.key* %1, %struct.afs_vldb_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.afs_server_list*, align 8
  %6 = alloca %struct.afs_cell*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.afs_vldb_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.afs_server_list*, align 8
  %11 = alloca %struct.afs_server*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.afs_cell* %0, %struct.afs_cell** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store %struct.afs_vldb_entry* %2, %struct.afs_vldb_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %39, %4
  %19 = load i32, i32* %14, align 4
  %20 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %21 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %26 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %35, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %44 = load i32, i32* @servers, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @struct_size(%struct.afs_server_list* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.afs_server_list* @kzalloc(i32 %46, i32 %47)
  store %struct.afs_server_list* %48, %struct.afs_server_list** %10, align 8
  %49 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %50 = icmp ne %struct.afs_server_list* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %209

52:                                               ; preds = %42
  %53 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %54 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %53, i32 0, i32 3
  %55 = call i32 @refcount_set(i32* %54, i32 1)
  %56 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %57 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %56, i32 0, i32 2
  %58 = call i32 @rwlock_init(i32* %57)
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %190, %52
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %62 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %193

65:                                               ; preds = %59
  %66 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %67 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %190

77:                                               ; preds = %65
  %78 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %79 = load %struct.key*, %struct.key** %7, align 8
  %80 = load %struct.afs_vldb_entry*, %struct.afs_vldb_entry** %8, align 8
  %81 = getelementptr inbounds %struct.afs_vldb_entry, %struct.afs_vldb_entry* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call %struct.afs_server* @afs_lookup_server(%struct.afs_cell* %78, %struct.key* %79, i32* %85)
  store %struct.afs_server* %86, %struct.afs_server** %11, align 8
  %87 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %88 = call i64 @IS_ERR(%struct.afs_server* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %77
  %91 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %92 = call i32 @PTR_ERR(%struct.afs_server* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @ENOMEDIUM, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97, %90
  br label %190

103:                                              ; preds = %97
  br label %203

104:                                              ; preds = %77
  store i32 0, i32* %15, align 4
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %108 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %113 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load %struct.afs_server*, %struct.afs_server** %118, align 8
  %120 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %119, i32 0, i32 0
  %121 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %122 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %121, i32 0, i32 0
  %123 = call i64 @memcmp(i32* %120, i32* %122, i32 4)
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %130

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %105

130:                                              ; preds = %125, %105
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %133 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %177

136:                                              ; preds = %130
  %137 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %138 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load %struct.afs_server*, %struct.afs_server** %143, align 8
  %145 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %146 = icmp eq %struct.afs_server* %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %136
  %148 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %149 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %152 = load i32, i32* @afs_server_trace_put_slist_isort, align 4
  %153 = call i32 @afs_put_server(i32 %150, %struct.afs_server* %151, i32 %152)
  br label %190

154:                                              ; preds = %136
  %155 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %156 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %155, i32 0, i32 1
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 1
  %162 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %163 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %169 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = call i32 @memmove(%struct.TYPE_3__* %161, %struct.TYPE_3__* %167, i32 %175)
  br label %177

177:                                              ; preds = %154, %130
  %178 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %179 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %180 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store %struct.afs_server* %178, %struct.afs_server** %185, align 8
  %186 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %187 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %177, %147, %102, %76
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %14, align 4
  br label %59

193:                                              ; preds = %59
  %194 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %195 = getelementptr inbounds %struct.afs_server_list, %struct.afs_server_list* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32, i32* @EDESTADDRREQ, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %12, align 4
  br label %203

201:                                              ; preds = %193
  %202 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  store %struct.afs_server_list* %202, %struct.afs_server_list** %5, align 8
  br label %212

203:                                              ; preds = %198, %103
  %204 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %205 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.afs_server_list*, %struct.afs_server_list** %10, align 8
  %208 = call i32 @afs_put_serverlist(i32 %206, %struct.afs_server_list* %207)
  br label %209

209:                                              ; preds = %203, %51
  %210 = load i32, i32* %12, align 4
  %211 = call %struct.afs_server_list* @ERR_PTR(i32 %210)
  store %struct.afs_server_list* %211, %struct.afs_server_list** %5, align 8
  br label %212

212:                                              ; preds = %209, %201
  %213 = load %struct.afs_server_list*, %struct.afs_server_list** %5, align 8
  ret %struct.afs_server_list* %213
}

declare dso_local %struct.afs_server_list* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.afs_server_list*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local %struct.afs_server* @afs_lookup_server(%struct.afs_cell*, %struct.key*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.afs_server*) #1

declare dso_local i32 @PTR_ERR(%struct.afs_server*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @afs_put_server(i32, %struct.afs_server*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @afs_put_serverlist(i32, %struct.afs_server_list*) #1

declare dso_local %struct.afs_server_list* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
