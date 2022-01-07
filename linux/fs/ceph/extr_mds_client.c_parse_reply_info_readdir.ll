; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_parse_reply_info_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_reply_info_parsed = type { i32, i32, i32, i32, i64, i64, i64, i32 }
%struct.ceph_mds_reply_dir_entry = type { i32, i64, i32, i32, i8* }

@bad = common dso_local global i32 0, align 4
@CEPH_READDIR_FRAG_END = common dso_local global i32 0, align 4
@CEPH_READDIR_FRAG_COMPLETE = common dso_local global i32 0, align 4
@CEPH_READDIR_HASH_ORDER = common dso_local global i32 0, align 4
@CEPH_READDIR_OFFSET_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dir contents are larger than expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"parsed dir dname '%.*s'\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"problem parsing dir contents %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_mds_reply_info_parsed*, i32)* @parse_reply_info_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reply_info_readdir(i8** %0, i8* %1, %struct.ceph_mds_reply_info_parsed* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_mds_reply_info_parsed*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_mds_reply_dir_entry*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ceph_mds_reply_info_parsed* %2, %struct.ceph_mds_reply_info_parsed** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %17, i32 0, i32 7
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @parse_reply_info_dir(i8** %15, i8* %16, i32* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %175

24:                                               ; preds = %4
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @bad, align 4
  %28 = call i32 @ceph_decode_need(i8** %25, i8* %26, i32 10, i32 %27)
  %29 = load i8**, i8*** %6, align 8
  %30 = call i64 @ceph_decode_32(i8** %29)
  store i64 %30, i64* %10, align 8
  %31 = load i8**, i8*** %6, align 8
  %32 = call i32 @ceph_decode_16(i8** %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @CEPH_READDIR_FRAG_END, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @CEPH_READDIR_FRAG_COMPLETE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %50 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @CEPH_READDIR_HASH_ORDER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @CEPH_READDIR_OFFSET_HASH, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %68 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %10, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %24
  br label %169

72:                                               ; preds = %24
  %73 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %74 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %81 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %86 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %89 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %87, %90
  %92 = icmp ugt i64 %84, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %72
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %95 = call i32 @WARN_ON(i32 1)
  br label %172

96:                                               ; preds = %72
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %99 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %98, i32 0, i32 6
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %161, %96
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %168

103:                                              ; preds = %100
  %104 = load %struct.ceph_mds_reply_info_parsed*, %struct.ceph_mds_reply_info_parsed** %8, align 8
  %105 = getelementptr inbounds %struct.ceph_mds_reply_info_parsed, %struct.ceph_mds_reply_info_parsed* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %106, %107
  %109 = inttoptr i64 %108 to %struct.ceph_mds_reply_dir_entry*
  store %struct.ceph_mds_reply_dir_entry* %109, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %110 = load i8**, i8*** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %113 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @bad, align 4
  %116 = call i32 @ceph_decode_32_safe(i8** %110, i8* %111, i32 %114, i32 %115)
  %117 = load i8**, i8*** %6, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %120 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @bad, align 4
  %123 = call i32 @ceph_decode_need(i8** %117, i8* %118, i32 %121, i32 %122)
  %124 = load i8**, i8*** %6, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %127 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %129 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i8**, i8*** %6, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = sext i32 %130 to i64
  %134 = getelementptr i8, i8* %132, i64 %133
  store i8* %134, i8** %131, align 8
  %135 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %136 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %139 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %137, i8* %140)
  %142 = load i8**, i8*** %6, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %145 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %144, i32 0, i32 3
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @parse_reply_info_lease(i8** %142, i8* %143, i32* %145, i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %103
  br label %175

151:                                              ; preds = %103
  %152 = load i8**, i8*** %6, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %155 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %154, i32 0, i32 2
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @parse_reply_info_in(i8** %152, i8* %153, i32* %155, i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %175

161:                                              ; preds = %151
  %162 = load %struct.ceph_mds_reply_dir_entry*, %struct.ceph_mds_reply_dir_entry** %14, align 8
  %163 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, %struct.ceph_mds_reply_dir_entry* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %11, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %11, align 8
  %166 = load i64, i64* %10, align 8
  %167 = add nsw i64 %166, -1
  store i64 %167, i64* %10, align 8
  br label %100

168:                                              ; preds = %100
  br label %169

169:                                              ; preds = %168, %71
  %170 = load i8*, i8** %7, align 8
  %171 = load i8**, i8*** %6, align 8
  store i8* %170, i8** %171, align 8
  store i32 0, i32* %5, align 4
  br label %179

172:                                              ; preds = %93
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %172, %160, %150, %23
  %176 = load i32, i32* %12, align 4
  %177 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %169
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @parse_reply_info_dir(i8**, i8*, i32*, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i64 @ceph_decode_32(i8**) #1

declare dso_local i32 @ceph_decode_16(i8**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @dout(i8*, i32, i8*) #1

declare dso_local i32 @parse_reply_info_lease(i8**, i8*, i32*, i32) #1

declare dso_local i32 @parse_reply_info_in(i8**, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
