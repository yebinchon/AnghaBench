; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_decode_YFSFetchStatus.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_yfsclient.c_xdr_decode_YFSFetchStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32 }
%struct.afs_status_cb = type { i32, i32, %struct.afs_file_status }
%struct.afs_file_status = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.yfs_xdr_YFSFetchStatus = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VNOVNODE = common dso_local global i64 0, align 8
@S_IALLUGO = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@afs_eproto_bad_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.afs_call*, %struct.afs_status_cb*)* @xdr_decode_YFSFetchStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_decode_YFSFetchStatus(i32** %0, %struct.afs_call* %1, %struct.afs_status_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.afs_call*, align 8
  %7 = alloca %struct.afs_status_cb*, align 8
  %8 = alloca %struct.yfs_xdr_YFSFetchStatus*, align 8
  %9 = alloca %struct.afs_file_status*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.afs_call* %1, %struct.afs_call** %6, align 8
  store %struct.afs_status_cb* %2, %struct.afs_status_cb** %7, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.yfs_xdr_YFSFetchStatus*
  store %struct.yfs_xdr_YFSFetchStatus* %14, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %15 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %16 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %15, i32 0, i32 2
  store %struct.afs_file_status* %16, %struct.afs_file_status** %9, align 8
  %17 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %18 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohl(i32 %19)
  %21 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %22 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %24 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %29 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @VNOVNODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %36 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %39 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %143

40:                                               ; preds = %3
  %41 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %42 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %50 [
    i32 129, label %46
    i32 130, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %40, %40, %40
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %49 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %51

50:                                               ; preds = %40
  br label %134

51:                                               ; preds = %46
  %52 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %53 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %57 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %59 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @xdr_to_u64(i32 %60)
  %62 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %63 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %65 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @xdr_to_u64(i32 %66)
  %68 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %69 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %68, i32 0, i32 12
  store i8* %67, i8** %69, align 8
  %70 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %71 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  %74 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %75 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %77 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohl(i32 %78)
  %80 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %81 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %83 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  %86 = load i32, i32* @S_IALLUGO, align 4
  %87 = and i32 %85, %86
  %88 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %89 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %91 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @xdr_to_u64(i32 %92)
  %94 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %95 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %94, i32 0, i32 11
  store i8* %93, i8** %95, align 8
  %96 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %97 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ntohl(i32 %98)
  %100 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %101 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %103 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @xdr_to_time(i32 %104)
  %106 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %107 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  %108 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %109 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @xdr_to_time(i32 %110)
  %112 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %113 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %112, i32 0, i32 9
  store i8* %111, i8** %113, align 8
  %114 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %115 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @xdr_to_u64(i32 %116)
  %118 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %119 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %121 = getelementptr inbounds %struct.yfs_xdr_YFSFetchStatus, %struct.yfs_xdr_YFSFetchStatus* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @xdr_to_u64(i32 %122)
  %124 = load %struct.afs_file_status*, %struct.afs_file_status** %9, align 8
  %125 = getelementptr inbounds %struct.afs_file_status, %struct.afs_file_status* %124, i32 0, i32 7
  store i8* %123, i8** %125, align 8
  %126 = load %struct.afs_status_cb*, %struct.afs_status_cb** %7, align 8
  %127 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.yfs_xdr_YFSFetchStatus*, %struct.yfs_xdr_YFSFetchStatus** %8, align 8
  %129 = call i32 @xdr_size(%struct.yfs_xdr_YFSFetchStatus* %128)
  %130 = load i32**, i32*** %5, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = sext i32 %129 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %130, align 8
  store i32 0, i32* %4, align 4
  br label %143

134:                                              ; preds = %50
  %135 = load i32**, i32*** %5, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @xdr_dump_bad(i32* %136)
  %138 = load %struct.afs_call*, %struct.afs_call** %6, align 8
  %139 = load i32, i32* @EBADMSG, align 4
  %140 = sub nsw i32 0, %139
  %141 = load i32, i32* @afs_eproto_bad_status, align 4
  %142 = call i32 @afs_protocol_error(%struct.afs_call* %138, i32 %140, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %134, %51, %37
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @xdr_to_u64(i32) #1

declare dso_local i8* @xdr_to_time(i32) #1

declare dso_local i32 @xdr_size(%struct.yfs_xdr_YFSFetchStatus*) #1

declare dso_local i32 @xdr_dump_bad(i32*) #1

declare dso_local i32 @afs_protocol_error(%struct.afs_call*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
