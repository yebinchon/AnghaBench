; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_decode_AFSFetchStatus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_xdr_decode_AFSFetchStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64 }
%struct.afs_status_cb = type { i32, i32, %struct.afs_file_status }
%struct.afs_file_status = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.afs_xdr_AFSFetchStatus = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@afs_FS_InlineBulkStatus = common dso_local global i64 0, align 8
@AFS_FSTATUS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unknown AFSFetchStatus version %u\0A\00", align 1
@S_IALLUGO = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@afs_eproto_bad_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.afs_call*, %struct.afs_status_cb*)* @xdr_decode_AFSFetchStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_decode_AFSFetchStatus(i32** %0, %struct.afs_call* %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.afs_call*, align 8
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.afs_xdr_AFSFetchStatus*, align 8
  %9 = alloca %struct.afs_file_status*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.afs_call* %1, %struct.afs_call** %6, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
  %15 = load i32**, i32*** %5, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.afs_xdr_AFSFetchStatus*
  store %struct.afs_xdr_AFSFetchStatus* %18, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %19 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %20 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %19, i32 0, i32 2
  store %struct.afs_file_status* %20, %struct.afs_file_status** %9, align 8
  %21 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %22 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @afs_FS_InlineBulkStatus, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %28 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ntohl(i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %32 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @AFS_FSTATUS_VERSION, align 4
  %35 = call i64 @htonl(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %3
  %38 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %39 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @htonl(i32 0)
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %52 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %51, i32 0, i32 13
  store i64 %50, i64* %52, align 8
  %53 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %54 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %202

55:                                               ; preds = %46, %43, %37
  %56 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %57 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @ntohl(i64 %58)
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %193

61:                                               ; preds = %3
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %70 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %69, i32 0, i32 13
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %202

71:                                               ; preds = %64, %61
  %72 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %73 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @ntohl(i64 %74)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  switch i64 %76, label %81 [
    i64 129, label %77
    i64 130, label %77
    i64 128, label %77
  ]

77:                                               ; preds = %71, %71, %71
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %80 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %79, i32 0, i32 12
  store i64 %78, i64* %80, align 8
  br label %82

81:                                               ; preds = %71
  br label %193

82:                                               ; preds = %77
  %83 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %84 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @ntohl(i64 %85)
  %87 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %88 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %87, i32 0, i32 11
  store i64 %86, i64* %88, align 8
  %89 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %90 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @ntohl(i64 %91)
  %93 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %94 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %93, i32 0, i32 10
  store i64 %92, i64* %94, align 8
  %95 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %96 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ntohl(i64 %97)
  %99 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %100 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %99, i32 0, i32 9
  store i64 %98, i64* %100, align 8
  %101 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %102 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @ntohl(i64 %103)
  %105 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %106 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %105, i32 0, i32 8
  store i64 %104, i64* %106, align 8
  %107 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %108 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @ntohl(i64 %109)
  %111 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %112 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %111, i32 0, i32 7
  store i64 %110, i64* %112, align 8
  %113 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %114 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @ntohl(i64 %115)
  %117 = load i64, i64* @S_IALLUGO, align 8
  %118 = and i64 %116, %117
  %119 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %120 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %119, i32 0, i32 6
  store i64 %118, i64* %120, align 8
  %121 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %122 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @ntohl(i64 %123)
  %125 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %126 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  %127 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %128 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %127, i32 0, i32 10
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @ntohl(i64 %129)
  %131 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %132 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %134 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %133, i32 0, i32 11
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @ntohl(i64 %135)
  %137 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %138 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  %140 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %141 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %144 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %143, i32 0, i32 12
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @ntohl(i64 %145)
  %147 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %148 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i64 %146, i64* %149, align 8
  %150 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %151 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %154 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %153, i32 0, i32 13
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @ntohl(i64 %155)
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %12, align 4
  %158 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %159 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %158, i32 0, i32 14
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @ntohl(i64 %160)
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 32
  %164 = load i32, i32* %12, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %168 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %170 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %169, i32 0, i32 15
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @ntohl(i64 %171)
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  %174 = load %struct.afs_xdr_AFSFetchStatus*, %struct.afs_xdr_AFSFetchStatus** %8, align 8
  %175 = getelementptr inbounds %struct.afs_xdr_AFSFetchStatus, %struct.afs_xdr_AFSFetchStatus* %174, i32 0, i32 16
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @ntohl(i64 %176)
  %178 = trunc i64 %177 to i32
  %179 = shl i32 %178, 32
  %180 = load i32, i32* %11, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %184 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %186 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load i32**, i32*** %5, align 8
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = getelementptr i8, i8* %189, i64 136
  %191 = bitcast i8* %190 to i32*
  %192 = load i32**, i32*** %5, align 8
  store i32* %191, i32** %192, align 8
  store i32 0, i32* %4, align 4
  br label %202

193:                                              ; preds = %81, %55
  %194 = load i32**, i32*** %5, align 8
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @xdr_dump_bad(i32* %195)
  %197 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %198 = load i32, i32* @EBADMSG, align 4
  %199 = sub nsw i32 0, %198
  %200 = load i32, i32* @afs_eproto_bad_status, align 4
  %201 = call i32 @afs_protocol_error(%struct.afs_call* %197, i32 %199, i32 %200)
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %193, %82, %67, %49
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i64 @ntohl(i64) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @xdr_dump_bad(i32*) #1

declare dso_local i32 @afs_protocol_error(%struct.afs_call*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
