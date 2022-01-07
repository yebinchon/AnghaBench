; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_vl_get_addrs_u.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vlclient.c_afs_deliver_vl_get_addrs_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32*, %struct.afs_addr_list*, i32 }
%struct.afs_addr_list = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"{%u,%zu/%u}\00", align 1
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_vl_get_addrs_u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_vl_get_addrs_u(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_addr_list*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %11 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %12 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %15 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @iov_iter_count(i32 %16)
  %18 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_enter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %20)
  %22 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %157 [
    i32 0, label %25
    i32 1, label %32
    i32 2, label %95
  ]

25:                                               ; preds = %1
  %26 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %27 = call i32 @afs_extract_to_buf(%struct.afs_call* %26, i32 16)
  %28 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %29 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %1, %25
  %33 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %34 = call i32 @afs_extract_data(%struct.afs_call* %33, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %2, align 4
  br label %159

39:                                               ; preds = %32
  %40 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  %47 = call i32 @ntohl(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i32 @ntohl(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohl(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @FS_SERVICE, align 4
  %60 = load i32, i32* @AFS_FS_PORT, align 4
  %61 = call %struct.afs_addr_list* @afs_alloc_addrlist(i32 %58, i32 %59, i32 %60)
  store %struct.afs_addr_list* %61, %struct.afs_addr_list** %4, align 8
  %62 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %63 = icmp ne %struct.afs_addr_list* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %159

67:                                               ; preds = %39
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %70 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %72 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %73 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %72, i32 0, i32 4
  store %struct.afs_addr_list* %71, %struct.afs_addr_list** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %76 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %79 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %81 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %151, %67
  %85 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %86 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @min(i32 %87, i32 4)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @afs_extract_to_buf(%struct.afs_call* %89, i32 %93)
  br label %95

95:                                               ; preds = %1, %84
  %96 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %97 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %98 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 4
  %101 = zext i1 %100 to i32
  %102 = call i32 @afs_extract_data(%struct.afs_call* %96, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %2, align 4
  br label %159

107:                                              ; preds = %95
  %108 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %109 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %108, i32 0, i32 4
  %110 = load %struct.afs_addr_list*, %struct.afs_addr_list** %109, align 8
  store %struct.afs_addr_list* %110, %struct.afs_addr_list** %4, align 8
  %111 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %112 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %5, align 8
  %114 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %115 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @min(i32 %116, i32 4)
  store i32 %117, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %138, %107
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %124 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %127 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %5, align 8
  %134 = load i32, i32* %132, align 4
  %135 = load i32, i32* @AFS_FS_PORT, align 4
  %136 = call i32 @afs_merge_fs_addr4(%struct.afs_addr_list* %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %122
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %118

141:                                              ; preds = %118
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %144 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %148 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %84

152:                                              ; preds = %141
  %153 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %154 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %1, %152
  %158 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %105, %64, %37
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @iov_iter_count(i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.afs_addr_list* @afs_alloc_addrlist(i32, i32, i32) #1

declare dso_local i32 @afs_merge_fs_addr4(%struct.afs_addr_list*, i32, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
