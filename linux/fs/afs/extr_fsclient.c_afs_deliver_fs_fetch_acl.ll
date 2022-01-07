; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_fetch_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_fetch_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, i32, i32, i32*, %struct.afs_acl*, i32 }
%struct.afs_acl = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@data = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_fs_fetch_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_fetch_acl(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_acl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %8 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %9 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %13 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %112 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %68
    i32 3, label %82
    i32 4, label %111
  ]

15:                                               ; preds = %1
  %16 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %17 = call i32 @afs_extract_to_tmp(%struct.afs_call* %16)
  %18 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %1, %15
  %23 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %24 = call i32 @afs_extract_data(%struct.afs_call* %23, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %114

29:                                               ; preds = %22
  %30 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %31 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ntohl(i32 %32)
  %34 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  store i32 %33, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @round_up(i32 %36, i32 4)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.afs_acl*, %struct.afs_acl** %4, align 8
  %39 = load i32, i32* @data, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @struct_size(%struct.afs_acl* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.afs_acl* @kmalloc(i32 %41, i32 %42)
  store %struct.afs_acl* %43, %struct.afs_acl** %4, align 8
  %44 = load %struct.afs_acl*, %struct.afs_acl** %4, align 8
  %45 = icmp ne %struct.afs_acl* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %114

49:                                               ; preds = %29
  %50 = load %struct.afs_acl*, %struct.afs_acl** %4, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 5
  store %struct.afs_acl* %50, %struct.afs_acl** %52, align 8
  %53 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.afs_acl*, %struct.afs_acl** %4, align 8
  %57 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %59 = load %struct.afs_acl*, %struct.afs_acl** %4, align 8
  %60 = getelementptr inbounds %struct.afs_acl, %struct.afs_acl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @afs_extract_begin(%struct.afs_call* %58, i32 %61, i32 %62)
  %64 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %1, %49
  %69 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %70 = call i32 @afs_extract_data(%struct.afs_call* %69, i32 1)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %114

75:                                               ; preds = %68
  %76 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %77 = call i32 @afs_extract_to_buf(%struct.afs_call* %76, i32 108)
  %78 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %79 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %1, %75
  %83 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %84 = call i32 @afs_extract_data(%struct.afs_call* %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %114

89:                                               ; preds = %82
  %90 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %91 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %5, align 8
  %93 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %94 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %95 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @xdr_decode_AFSFetchStatus(i32** %5, %struct.afs_call* %93, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %114

102:                                              ; preds = %89
  %103 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %104 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @xdr_decode_AFSVolSync(i32** %5, i32 %105)
  %107 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %108 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %1, %102
  br label %112

112:                                              ; preds = %1, %111
  %113 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %100, %87, %73, %46, %27
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_extract_to_tmp(%struct.afs_call*) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.afs_acl* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.afs_acl*, i32, i32) #1

declare dso_local i32 @afs_extract_begin(%struct.afs_call*, i32, i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_AFSFetchStatus(i32**, %struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_AFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
