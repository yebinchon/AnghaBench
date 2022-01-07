; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_fetch_opaque_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_yfs_deliver_fs_fetch_opaque_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32, i32*, i32, %struct.yfs_acl* }
%struct.yfs_acl = type { i32, i8*, i8*, %struct.afs_acl*, %struct.afs_acl* }
%struct.afs_acl = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@YFS_ACL_WANT_ACL = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@YFS_ACL_WANT_VOL_ACL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @yfs_deliver_fs_fetch_opaque_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yfs_deliver_fs_fetch_opaque_acl(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.yfs_acl*, align 8
  %5 = alloca %struct.afs_acl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %9 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %10 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %9, i32 0, i32 6
  %11 = load %struct.yfs_acl*, %struct.yfs_acl** %10, align 8
  store %struct.yfs_acl* %11, %struct.yfs_acl** %4, align 8
  %12 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %13 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %17 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %214 [
    i32 0, label %19
    i32 1, label %26
    i32 2, label %85
    i32 3, label %99
    i32 4, label %158
    i32 5, label %172
    i32 6, label %213
  ]

19:                                               ; preds = %1
  %20 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %21 = call i32 @afs_extract_to_tmp(%struct.afs_call* %20)
  %22 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %1, %19
  %27 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %28 = call i32 @afs_extract_data(%struct.afs_call* %27, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %216

33:                                               ; preds = %26
  %34 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @ntohl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 %38, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @round_up(i32 %41, i32 4)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  %44 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @YFS_ACL_WANT_ACL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %33
  %50 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %51 = load i32, i32* @data, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @struct_size(%struct.afs_acl* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.afs_acl* @kmalloc(i32 %53, i32 %54)
  store %struct.afs_acl* %55, %struct.afs_acl** %5, align 8
  %56 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %57 = icmp ne %struct.afs_acl* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %216

61:                                               ; preds = %49
  %62 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %63 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  %64 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %63, i32 0, i32 4
  store %struct.afs_acl* %62, %struct.afs_acl** %64, align 8
  %65 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %66 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %69 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %71 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %72 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @afs_extract_begin(%struct.afs_call* %70, i32 %73, i32 %74)
  br label %80

76:                                               ; preds = %33
  %77 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @afs_extract_discard(%struct.afs_call* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %61
  %81 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %82 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %1, %80
  %86 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %87 = call i32 @afs_extract_data(%struct.afs_call* %86, i32 1)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %216

92:                                               ; preds = %85
  %93 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %94 = call i32 @afs_extract_to_tmp(%struct.afs_call* %93)
  %95 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %96 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %1, %92
  %100 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %101 = call i32 @afs_extract_data(%struct.afs_call* %100, i32 1)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %216

106:                                              ; preds = %99
  %107 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %108 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @ntohl(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %113 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  store i32 %111, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @round_up(i32 %114, i32 4)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  %117 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @YFS_ACL_WANT_VOL_ACL, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %106
  %123 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %124 = load i32, i32* @data, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @struct_size(%struct.afs_acl* %123, i32 %124, i32 %125)
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call %struct.afs_acl* @kmalloc(i32 %126, i32 %127)
  store %struct.afs_acl* %128, %struct.afs_acl** %5, align 8
  %129 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %130 = icmp ne %struct.afs_acl* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %216

134:                                              ; preds = %122
  %135 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %136 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  %137 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %136, i32 0, i32 3
  store %struct.afs_acl* %135, %struct.afs_acl** %137, align 8
  %138 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %139 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %142 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %144 = load %struct.afs_acl*, %struct.afs_acl** %5, align 8
  %145 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @afs_extract_begin(%struct.afs_call* %143, i32 %146, i32 %147)
  br label %153

149:                                              ; preds = %106
  %150 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @afs_extract_discard(%struct.afs_call* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %134
  %154 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %155 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %1, %153
  %159 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %160 = call i32 @afs_extract_data(%struct.afs_call* %159, i32 1)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %2, align 4
  br label %216

165:                                              ; preds = %158
  %166 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %167 = call i32 @afs_extract_to_buf(%struct.afs_call* %166, i32 16)
  %168 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %169 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %1, %165
  %173 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %174 = call i32 @afs_extract_data(%struct.afs_call* %173, i32 0)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %2, align 4
  br label %216

179:                                              ; preds = %172
  %180 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %181 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  store i32* %182, i32** %6, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %6, align 8
  %185 = load i32, i32* %183, align 4
  %186 = call i8* @ntohl(i32 %185)
  %187 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  %188 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %6, align 8
  %191 = load i32, i32* %189, align 4
  %192 = call i8* @ntohl(i32 %191)
  %193 = load %struct.yfs_acl*, %struct.yfs_acl** %4, align 8
  %194 = getelementptr inbounds %struct.yfs_acl, %struct.yfs_acl* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %196 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %197 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @xdr_decode_YFSFetchStatus(i32** %6, %struct.afs_call* %195, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %179
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %216

204:                                              ; preds = %179
  %205 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %206 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @xdr_decode_YFSVolSync(i32** %6, i32 %207)
  %209 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %210 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %1, %204
  br label %214

214:                                              ; preds = %1, %213
  %215 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %214, %202, %177, %163, %131, %104, %90, %58, %31
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_extract_to_tmp(%struct.afs_call*) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.afs_acl* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.afs_acl*, i32, i32) #1

declare dso_local i32 @afs_extract_begin(%struct.afs_call*, i32, i32) #1

declare dso_local i32 @afs_extract_discard(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_YFSFetchStatus(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_YFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
